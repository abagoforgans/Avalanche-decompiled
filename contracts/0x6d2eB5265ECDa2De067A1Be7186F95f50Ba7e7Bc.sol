contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#
address owner;
uint256 stor1;
uint8 stor2;
uint256 accTokenPerShare;
uint256 bonusEndTime;
uint256 startTime;
uint256 lastRewardTime;
uint256 rewardPerTime;
uint256 PRECISION_FACTOR;
address rewardTokenAddress;
address stakedTokenAddress;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function isInitialized() payable {
    return bool(stor2)
}

function rewardPerTime() payable {
    return rewardPerTime
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function accTokenPerShare() payable {
    return accTokenPerShare
}

function lastRewardTime() payable {
    return lastRewardTime
}

function stakedToken() payable {
    return stakedTokenAddress
}

function PRECISION_FACTOR() payable {
    return PRECISION_FACTOR
}

function bonusEndTime() payable {
    return bonusEndTime
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bonusEndTime = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    bonusEndTime = arg1
}

function sub_efc23968(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardPerTime = arg1
    emit 0x26dcdda2: arg1
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

function remainingFund() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function updateStartAndEndTime(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startTime:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644e657720737461727454696d65206d757374206265206c6f776572207468616e206e657720656e64426c6f63,
                    mem[209 len 19]
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6b4e657720737461727454696d65206d75737420626520686967686572207468616e2063757272656e7420626c6f63,
                    mem[211 len 17]
    startTime = arg1
    bonusEndTime = arg2
    lastRewardTime = arg1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor2:
        revert with 0, 'Already initialized'
    stor2 = 1
    stakedTokenAddress = arg1
    rewardTokenAddress = arg2
    if arg5 - arg4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg5 - arg4
    rewardPerTime = arg3 / arg5 - arg4
    startTime = arg4
    bonusEndTime = arg5
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] >= 30:
        revert with 0, 'Must be inferior to 30'
    if ext_call.return_data[31 len 1] > 30:
        revert with 0, 'SafeMath: subtraction overflow'
    PRECISION_FACTOR = 10^(-ext_call.return_data[31 len 1] + 30)
    lastRewardTime = startTime
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
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
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stakedTokenAddress == arg1:
        revert with 0, 'Cannot be staked token'
    if rewardTokenAddress == arg1:
        revert with 0, 'Cannot be reward token'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
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
    emit AdminTokenRecovery(address(arg1), arg2);
}

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    if userInfo[msg.sender].field_0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakedTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_32
        call stakedTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_0
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
    emit EmergencyWithdraw(userInfo[msg.sender].field_0, msg.sender);
    stor1 = 1
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= lastRewardTime:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if accTokenPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if accTokenPerShare * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((accTokenPerShare * userInfo[address(arg1)].field_0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if block.timestamp <= bonusEndTime:
        if lastRewardTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastRewardTime:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.timestamp * rewardPerTime) - (lastRewardTime * rewardPerTime) / block.timestamp - lastRewardTime != rewardPerTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardPerTime) - (lastRewardTime * rewardPerTime):
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
            if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / (block.timestamp * rewardPerTime) - (lastRewardTime * rewardPerTime) != PRECISION_FACTOR:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if ((block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if ((block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > ((block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((((block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardTime >= bonusEndTime:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if lastRewardTime > bonusEndTime:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndTime - lastRewardTime:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndTime * rewardPerTime) - (lastRewardTime * rewardPerTime) / bonusEndTime - lastRewardTime != rewardPerTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (bonusEndTime * rewardPerTime) - (lastRewardTime * rewardPerTime):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if PRECISION_FACTOR <= 0:
                revert with 0, 'SafeMath: division by zero'
            require PRECISION_FACTOR
            if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
        if (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / ext_call.return_data[0]) + accTokenPerShare:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if (bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / (bonusEndTime * rewardPerTime) - (lastRewardTime * rewardPerTime) != PRECISION_FACTOR:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if ((bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if PRECISION_FACTOR <= 0:
            revert with 0, 'SafeMath: division by zero'
        require PRECISION_FACTOR
        if userInfo[address(arg1)].field_256 > 0 / PRECISION_FACTOR:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
    if ((bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != ((bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if PRECISION_FACTOR <= 0:
        revert with 0, 'SafeMath: division by zero'
    require PRECISION_FACTOR
    if userInfo[address(arg1)].field_256 > ((bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((((bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) + (accTokenPerShare * userInfo[address(arg1)].field_0) / PRECISION_FACTOR) - userInfo[address(arg1)].field_256)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp <= lastRewardTime:
        if not userInfo[msg.sender].field_0:
            if not arg1:
                if not userInfo[msg.sender].field_0:
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                else:
                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                emit Deposit(arg1, msg.sender);
            else:
                require ext_code.size(stakedTokenAddress)
                staticcall stakedTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(stakedTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call stakedTokenAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(stakedTokenAddress)
                    staticcall stakedTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[msg.sender].field_0:
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                    else:
                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                    require ext_code.size(stakedTokenAddress)
                    staticcall stakedTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[msg.sender].field_0:
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                    else:
                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                emit Deposit(0, msg.sender);
        else:
            if userInfo[msg.sender].field_0:
                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Deposit(arg1, msg.sender);
                    else:
                        require ext_code.size(stakedTokenAddress)
                        staticcall stakedTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        call stakedTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Deposit(0, msg.sender);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), 
                                        msg.sender,
                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            mem[552 len 0] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
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
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 581 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                msg.sender,
                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(0, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 
                                                'SafeMath: subtraction overflow',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 
                                                    'SafeMath: division by zero',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 
                                                    'SafeMath: division by zero',
                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(address arg1, uint256 arg2):
                                             0,
                                             mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                             msg.sender,
            else:
                if PRECISION_FACTOR <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require PRECISION_FACTOR
                if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                    if not arg1:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Deposit(arg1, msg.sender);
                    else:
                        require ext_code.size(stakedTokenAddress)
                        staticcall stakedTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(stakedTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call stakedTokenAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                        emit Deposit(0, msg.sender);
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                    mem[324 len 0] = 0
                    call rewardTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[580 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args arg1, mem[392 len 60], mem[552 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[566 len 14],
                                                0,
                                                mem[584 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
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
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 362 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 563 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 581 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 585 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                    0,
                                                    mem[ceil32(return_data.size) + 585 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            else:
                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 489]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
    else:
        require ext_code.size(stakedTokenAddress)
        staticcall stakedTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            lastRewardTime = block.timestamp
            if not userInfo[msg.sender].field_0:
                if not arg1:
                    if not userInfo[msg.sender].field_0:
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                    else:
                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if PRECISION_FACTOR <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require PRECISION_FACTOR
                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    emit Deposit(arg1, msg.sender);
                else:
                    require ext_code.size(stakedTokenAddress)
                    staticcall stakedTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(stakedTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call stakedTokenAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(stakedTokenAddress)
                        staticcall stakedTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                        require ext_code.size(stakedTokenAddress)
                        staticcall stakedTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                    emit Deposit(0, msg.sender);
            else:
                if userInfo[msg.sender].field_0:
                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            msg.sender,
                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                mem[552 len 0] = 0
                                call stakedTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(0, msg.sender);
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 
                                                            'SafeMath: division by zero',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 
                                                            'SafeMath: division by zero',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(address arg1, uint256 arg2):
                                                     0,
                                                     mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                     msg.sender,
                else:
                    if PRECISION_FACTOR <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require PRECISION_FACTOR
                    if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(rewardTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                        mem[324 len 0] = 0
                        call rewardTokenAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[580 len 4] = 0
                                call stakedTokenAddress with:
                                     gas gas_remaining wei
                                    args arg1, mem[392 len 60], mem[552 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[566 len 14],
                                                    0,
                                                    mem[584 len 4]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 558 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(0, msg.sender);
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not return_data.size:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 362 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 563 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 585 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    else:
                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 489]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 
                                                        'SafeMath: subtraction overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 
                                                        'SafeMath: addition overflow',
                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 
                                                            'SafeMath: division by zero',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 
                                                            'SafeMath: division by zero',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
        else:
            if block.timestamp <= bonusEndTime:
                if lastRewardTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastRewardTime:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / ext_call.return_data[0]
                    lastRewardTime = block.timestamp
                    if not userInfo[msg.sender].field_0:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
                    else:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 394 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[580 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[566 len 14],
                                                            0,
                                                            mem[584 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        else:
                                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[488]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 22]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            mem[ceil32(return_data.size) + 553 len 0] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(address arg1, uint256 arg2):
                                                             0,
                                                             mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 394 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[580 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            msg.sender,
                                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[566 len 14],
                                                            0,
                                                            mem[584 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        else:
                                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[488]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 22]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
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
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 362 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 563 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[ceil32(return_data.size) + 581 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            msg.sender,
                                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 585 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 23],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                        else:
                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 489]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 
                                                            'SafeMath: addition overflow',
                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 
                                                                'SafeMath: division by zero',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 
                                                                'SafeMath: division by zero',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(address arg1, uint256 arg2):
                                                         0,
                                                         mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                         msg.sender,
                else:
                    if (block.timestamp * rewardPerTime) - (lastRewardTime * rewardPerTime) / block.timestamp - lastRewardTime != rewardPerTime:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardPerTime) - (lastRewardTime * rewardPerTime):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / ext_call.return_data[0]
                        lastRewardTime = block.timestamp
                        if not userInfo[msg.sender].field_0:
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                call stakedTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 394 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(0, msg.sender);
                        else:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[402 len 14],
                                                            0,
                                                            mem[420 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 394 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                    mem[324 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[580 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[392 len 60], mem[552 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[566 len 14],
                                                                0,
                                                                mem[584 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[488]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not return_data.size:
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                        else:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[402 len 14],
                                                            0,
                                                            mem[420 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 394 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[580 len 4] = 0
                                            mem[552 len 0] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[566 len 14],
                                                                0,
                                                                mem[584 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[488]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not return_data.size:
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), 
                                                                    msg.sender,
                                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(0, msg.sender);
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(address arg1, uint256 arg2):
                                                                 0,
                                                                 mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                 msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), 
                                                                    msg.sender,
                                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                    else:
                        if (block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / (block.timestamp * rewardPerTime) - (lastRewardTime * rewardPerTime) != PRECISION_FACTOR:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if ((block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += (block.timestamp * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]
                        lastRewardTime = block.timestamp
                        if not userInfo[msg.sender].field_0:
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                call stakedTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 394 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(0, msg.sender);
                        else:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[402 len 14],
                                                            0,
                                                            mem[420 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 394 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                    mem[324 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[580 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[392 len 60], mem[552 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[566 len 14],
                                                                0,
                                                                mem[584 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[488]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not return_data.size:
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 
                                                                    'SafeERC20: low-level call failed',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                        else:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[402 len 14],
                                                            0,
                                                            mem[420 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 394 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                    mem[324 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[580 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[392 len 60], mem[552 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[566 len 14],
                                                                0,
                                                                mem[584 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[488]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
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
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
            else:
                if lastRewardTime >= bonusEndTime:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                        revert with 0, 'SafeMath: addition overflow'
                    accTokenPerShare += 0 / ext_call.return_data[0]
                    lastRewardTime = block.timestamp
                    if not userInfo[msg.sender].field_0:
                        if not arg1:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(arg1, msg.sender);
                        else:
                            require ext_code.size(stakedTokenAddress)
                            staticcall stakedTokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakedTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            call stakedTokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[402 len 14],
                                                0,
                                                mem[420 len 4]
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                            emit Deposit(0, msg.sender);
                    else:
                        if not userInfo[msg.sender].field_0:
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 394 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                mem[324 len 0] = 0
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[580 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args arg1, mem[392 len 60], mem[552 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[566 len 14],
                                                            0,
                                                            mem[584 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        else:
                                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[488]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 22]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 
                                                                'SafeERC20: low-level call failed',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                        else:
                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if PRECISION_FACTOR <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require PRECISION_FACTOR
                            if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 394 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                call rewardTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    msg.sender,
                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[580 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            msg.sender,
                                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[566 len 14],
                                                            0,
                                                            mem[584 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        else:
                                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[488]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 22]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 558 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not return_data.size:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 
                                                                'SafeMath: addition overflow',
                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 
                                                                    'SafeMath: division by zero',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(address arg1, uint256 arg2):
                                                             0,
                                                             mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                             msg.sender,
                                    else:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            mem[ceil32(return_data.size) + 553 len 0] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                else:
                    if lastRewardTime > bonusEndTime:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndTime - lastRewardTime:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                            revert with 0, 'SafeMath: addition overflow'
                        accTokenPerShare += 0 / ext_call.return_data[0]
                        lastRewardTime = block.timestamp
                        if not userInfo[msg.sender].field_0:
                            if not arg1:
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(arg1, msg.sender);
                            else:
                                require ext_code.size(stakedTokenAddress)
                                staticcall stakedTokenAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakedTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                                call stakedTokenAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[402 len 14],
                                                    0,
                                                    mem[420 len 4]
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 394 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                emit Deposit(0, msg.sender);
                        else:
                            if not userInfo[msg.sender].field_0:
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[402 len 14],
                                                            0,
                                                            mem[420 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 394 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[580 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[566 len 14],
                                                                0,
                                                                mem[584 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[488]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not return_data.size:
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(0, msg.sender);
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(address arg1, uint256 arg2):
                                                                 0,
                                                                 mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                 msg.sender,
                                        else:
                                            require return_data.size >= 32
                                            if not mem[292]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                mem[ceil32(return_data.size) + 553 len 0] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                            else:
                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if PRECISION_FACTOR <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require PRECISION_FACTOR
                                if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                    if not arg1:
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(arg1, msg.sender);
                                    else:
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakedTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                        call stakedTokenAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[402 len 14],
                                                            0,
                                                            mem[420 len 4]
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] > ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 394 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                        emit Deposit(0, msg.sender);
                                else:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                    mem[324 len 0] = 0
                                    call rewardTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), 
                                                        msg.sender,
                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[456 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[580 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[392 len 60], mem[552 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[566 len 14],
                                                                0,
                                                                mem[584 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[488]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
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
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                            mem[ceil32(return_data.size) + 563 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[ceil32(return_data.size) + 457 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[ceil32(return_data.size) + 581 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args arg1, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), 
                                                                msg.sender,
                                                                (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 567 len 14],
                                                                0,
                                                                mem[ceil32(return_data.size) + 585 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 558 len 23],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            else:
                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                if not ext_call.success:
                                                    if return_data.size:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                if return_data.size:
                                                    require return_data.size >= 32
                                                    if not mem[ceil32(return_data.size) + 489]:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                    else:
                        if (bonusEndTime * rewardPerTime) - (lastRewardTime * rewardPerTime) / bonusEndTime - lastRewardTime != rewardPerTime:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndTime * rewardPerTime) - (lastRewardTime * rewardPerTime):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += 0 / ext_call.return_data[0]
                            lastRewardTime = block.timestamp
                            if not userInfo[msg.sender].field_0:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 394 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                if userInfo[msg.sender].field_0:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[402 len 14],
                                                                0,
                                                                mem[420 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            msg.sender,
                                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[580 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), 
                                                                    msg.sender,
                                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[566 len 14],
                                                                    0,
                                                                    mem[584 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[488]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                if not arg1:
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                    if not ext_code.size(stakedTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                                    call stakedTokenAddress with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), 
                                                                        msg.sender,
                                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                                            0,
                                                                            mem[ceil32(return_data.size) + 585 len 4]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    else:
                                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(0, msg.sender);
                                            else:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                if not arg1:
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                    if not ext_code.size(stakedTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                                    call stakedTokenAddress with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), 
                                                                        msg.sender,
                                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                                            0,
                                                                            mem[ceil32(return_data.size) + 585 len 4]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                        emit Deposit(0, msg.sender);
                                                    else:
                                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 
                                                                            'SafeMath: division by zero',
                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 
                                                                            'SafeMath: division by zero',
                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                        emit Deposit(address arg1, uint256 arg2):
                                                                     0,
                                                                     mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     msg.sender,
                                else:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[402 len 14],
                                                                0,
                                                                mem[420 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[580 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[566 len 14],
                                                                    0,
                                                                    mem[584 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[488]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                if not arg1:
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                    if not ext_code.size(stakedTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                                    call stakedTokenAddress with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                                            0,
                                                                            mem[ceil32(return_data.size) + 585 len 4]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                        emit Deposit(0, msg.sender);
                                                    else:
                                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 
                                                                            'SafeMath: division by zero',
                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 
                                                                            'SafeMath: division by zero',
                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                        emit Deposit(address arg1, uint256 arg2):
                                                                     0,
                                                                     mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     msg.sender,
                                            else:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                if not arg1:
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                    if not ext_code.size(stakedTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                                    call stakedTokenAddress with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                                            0,
                                                                            mem[ceil32(return_data.size) + 585 len 4]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    else:
                                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(0, msg.sender);
                        else:
                            if (bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / (bonusEndTime * rewardPerTime) - (lastRewardTime * rewardPerTime) != PRECISION_FACTOR:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if ((bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]) + accTokenPerShare < accTokenPerShare:
                                revert with 0, 'SafeMath: addition overflow'
                            accTokenPerShare += (bonusEndTime * rewardPerTime * PRECISION_FACTOR) - (lastRewardTime * rewardPerTime * PRECISION_FACTOR) / ext_call.return_data[0]
                            lastRewardTime = block.timestamp
                            if not userInfo[msg.sender].field_0:
                                if not arg1:
                                    if not userInfo[msg.sender].field_0:
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                    else:
                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if PRECISION_FACTOR <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require PRECISION_FACTOR
                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(arg1, msg.sender);
                                else:
                                    require ext_code.size(stakedTokenAddress)
                                    staticcall stakedTokenAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakedTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                    call stakedTokenAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[402 len 14],
                                                        0,
                                                        mem[420 len 4]
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                        require ext_code.size(stakedTokenAddress)
                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not userInfo[msg.sender].field_0:
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                        else:
                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 394 len 31]
                                            if PRECISION_FACTOR <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require PRECISION_FACTOR
                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                    emit Deposit(0, msg.sender);
                            else:
                                if not userInfo[msg.sender].field_0:
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    if userInfo[msg.sender].field_256 > 0 / PRECISION_FACTOR:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[402 len 14],
                                                                0,
                                                                mem[420 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[580 len 4] = 0
                                                mem[552 len 0] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[566 len 14],
                                                                    0,
                                                                    mem[584 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[488]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
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
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 362 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[ceil32(return_data.size) + 581 len 4] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 567 len 14],
                                                                    0,
                                                                    mem[ceil32(return_data.size) + 585 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 23],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(0, msg.sender);
                                                else:
                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[ceil32(return_data.size) + 489]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 
                                                                    'SafeMath: addition overflow',
                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 
                                                                        'SafeMath: division by zero',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(address arg1, uint256 arg2):
                                                                 0,
                                                                 mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                 msg.sender,
                                else:
                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if PRECISION_FACTOR <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require PRECISION_FACTOR
                                    if userInfo[msg.sender].field_256 > accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256:
                                        if not arg1:
                                            if not userInfo[msg.sender].field_0:
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                            else:
                                                if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if PRECISION_FACTOR <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require PRECISION_FACTOR
                                                userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(arg1, msg.sender);
                                        else:
                                            require ext_code.size(stakedTokenAddress)
                                            staticcall stakedTokenAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakedTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            call stakedTokenAddress with:
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[402 len 14],
                                                                0,
                                                                mem[420 len 4]
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
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
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > ext_call.return_data[0]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                            emit Deposit(0, msg.sender);
                                    else:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) >> 32
                                        call rewardTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256) << 224, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), 
                                                            msg.sender,
                                                            (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                            if not arg1:
                                                if not userInfo[msg.sender].field_0:
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                else:
                                                    if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                    if PRECISION_FACTOR <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require PRECISION_FACTOR
                                                    userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(arg1, msg.sender);
                                            else:
                                                require ext_code.size(stakedTokenAddress)
                                                staticcall stakedTokenAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                if not ext_code.size(stakedTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[580 len 4] = 0
                                                mem[552 len 0] = 0
                                                call stakedTokenAddress with:
                                                     gas gas_remaining wei
                                                    args Mask(224, 32, arg1) << 480, mem[552 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), 
                                                                    msg.sender,
                                                                    (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 
                                                                    32,
                                                                    42,
                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[566 len 14],
                                                                    0,
                                                                    mem[584 len 4]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 23], 0, mem[584 len 4]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                else:
                                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                    if return_data.size:
                                                        require return_data.size >= 32
                                                        if not mem[488]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 22]
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > ext_call.return_data[0]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                emit Deposit(0, msg.sender);
                                        else:
                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if not return_data.size:
                                                if not arg1:
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                    if not ext_code.size(stakedTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                                    call stakedTokenAddress with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), 
                                                                        msg.sender,
                                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                                            0,
                                                                            mem[ceil32(return_data.size) + 585 len 4]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                        emit Deposit(0, msg.sender);
                                                    else:
                                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 
                                                                        'SafeMath: subtraction overflow',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 
                                                                        'SafeMath: addition overflow',
                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 
                                                                            'SafeMath: division by zero',
                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 
                                                                            'SafeMath: division by zero',
                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                        emit Deposit(address arg1, uint256 arg2):
                                                                     0,
                                                                     mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                     msg.sender,
                                            else:
                                                require return_data.size >= 32
                                                if not mem[292]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                                if not arg1:
                                                    if not userInfo[msg.sender].field_0:
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                    else:
                                                        if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                        if PRECISION_FACTOR <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require PRECISION_FACTOR
                                                        userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(arg1, msg.sender);
                                                else:
                                                    require ext_code.size(stakedTokenAddress)
                                                    staticcall stakedTokenAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                    if not ext_code.size(stakedTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[ceil32(return_data.size) + 581 len 4] = 0
                                                    mem[ceil32(return_data.size) + 553 len 0] = 0
                                                    call stakedTokenAddress with:
                                                         gas gas_remaining wei
                                                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), 
                                                                        msg.sender,
                                                                        (accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR) - userInfo[msg.sender].field_256
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 567 len 14],
                                                                        0,
                                                                        mem[ceil32(return_data.size) + 585 len 4]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[ceil32(return_data.size) + 558 len 23],
                                                                            0,
                                                                            mem[ceil32(return_data.size) + 585 len 4]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    else:
                                                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        if not ext_call.success:
                                                            if return_data.size:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                        if return_data.size:
                                                            require return_data.size >= 32
                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                revert with 0, 
                                                                            32,
                                                                            42,
                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                                                        require ext_code.size(stakedTokenAddress)
                                                        staticcall stakedTokenAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        if userInfo[msg.sender].field_0 < userInfo[msg.sender].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not userInfo[msg.sender].field_0:
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = 0 / PRECISION_FACTOR
                                                        else:
                                                            if accTokenPerShare * userInfo[msg.sender].field_0 / userInfo[msg.sender].field_0 != accTokenPerShare:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(2 * ceil32(return_data.size)) + 559 len 31]
                                                            if PRECISION_FACTOR <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            require PRECISION_FACTOR
                                                            userInfo[msg.sender].field_256 = accTokenPerShare * userInfo[msg.sender].field_0 / PRECISION_FACTOR
                                                    emit Deposit(0, msg.sender);
    stor1 = 1
}



}
