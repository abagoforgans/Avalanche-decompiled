contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address rewardTokenAddress;
uint256 taxRatio;
address devaddr;
address feeAddress;
uint256 rewardPerBlock;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432780;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432781;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432782;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432783;

function poolLength() payable {
    return poolInfo.length
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function taxRatio() payable {
    return taxRatio
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function devaddr() payable {
    return devaddr
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setstartblock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    startBlock = arg1
}

function getDaysSinceDeposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        return 0
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return (block.timestamp - userInfo[arg1][address(arg2)].field_512 / 24 * 3600)
}

function updateTaxRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    taxRatio = -arg1 + 10000
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    BONUS_MULTIPLIER = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    feeAddress = arg1
    emit 0x6dda798b: arg1
    return 1
}

function updateReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 <= block.number:
        revert with 0, 'invalid end block'
    if block.number > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - block.number:
        revert with 0, 'SafeMath: division by zero'
    rewardPerBlock = arg1 / arg2 - block.number
    endBlock = arg2
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUserInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        return userInfo[arg1][address(arg2)].field_0, userInfo[arg1][address(arg2)].field_256, 0
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return userInfo[arg1][address(arg2)].field_0, 
           userInfo[arg1][address(arg2)].field_256,
           block.timestamp - userInfo[arg1][address(arg2)].field_512 / 24 * 3600
}

function withdrawRemainder() payable {
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    if endBlock + 465230 < endBlock:
        revert with 0, 'SafeMath: addition overflow'
    if block.number <= endBlock + 465230:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x6b6f6e6c7920776974686472617761626c65206166746572207e37646179732066726f6d20726577617264696e6720706572696f6420656e,
                    mem[220 len 8]
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
        args feeAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
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
    if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1536 -= userInfo[arg1][msg.sender].field_0
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_1024:
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_1536:
            poolInfo[idx].field_1024 = block.number
            idx = idx + 1
            continue 
        if block.number < poolInfo[idx].field_1792:
            _367 = mem[64]
            mem[64] = mem[64] + 64
            mem[_367] = 30
            mem[_367 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1024 > block.number:
                _369 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _369 + 68] = mem[idx + _367 + 32]
                    idx = idx + 32
                    continue 
                mem[_369 + 68] = mem[_369 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _369 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_1024:
                _391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_391] = 26
                mem[_391 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _391 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_486] = 26
                        mem[_486 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1536:
                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                            poolInfo[idx].field_1024 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _486 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _501 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_501] = 26
                        mem[_501 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1536:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_1024 = block.number
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _501 + 32]
                            idx = idx + 32
                            continue 
            else:
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _393 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _500 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_500] = 26
                            mem[_500 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1536:
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_1024 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _500 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_518] = 26
                            mem[_518 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1536:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_1024 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _518 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                        _407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_407] = 26
                        mem[_407 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _407 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _517 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_517] = 26
                                mem[_517 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _517 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _550 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_550] = 26
                                mem[_550 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _550 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_425] = 26
                        mem[_425 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _425 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                _549 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_549] = 26
                                mem[_549 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _549 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _591 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_591] = 26
                                mem[_591 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _591 + 32]
                                    idx = idx + 32
                                    continue 
        else:
            _368 = mem[64]
            mem[64] = mem[64] + 64
            mem[_368] = 30
            mem[_368 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1024 > poolInfo[idx].field_1792:
                _372 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _372 + 68] = mem[idx + _368 + 32]
                    idx = idx + 32
                    continue 
                mem[_372 + 68] = mem[_372 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _372 + -mem[64] + 100
            if not poolInfo[idx].field_1792 - poolInfo[idx].field_1024:
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 26
                mem[_392 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _392 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_490] = 26
                        mem[_490 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1536:
                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _490 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _507 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_507] = 26
                        mem[_507 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1536:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _507 + 32]
                            idx = idx + 32
                            continue 
            else:
                if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / poolInfo[idx].field_1792 - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                    _397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_397] = 26
                    mem[_397 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _397 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _506 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_506] = 26
                            mem[_506 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1536:
                                if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _506 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _528 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_528] = 26
                            mem[_528 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1536:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _528 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                        _413 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_413] = 26
                        mem[_413 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _413 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _527 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_527] = 26
                                mem[_527 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _527 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _564 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_564] = 26
                                mem[_564 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _564 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_433] = 26
                        mem[_433 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _433 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                _563 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_563] = 26
                                mem[_563 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _563 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _608 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_608] = 26
                                mem[_608 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _608 + 32]
                                    idx = idx + 32
                                    continue 
        revert with 0, 'SafeMath: division by zero'
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_1024:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if not poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1280:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0 / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if block.number < poolInfo[arg1].field_1792:
        if poolInfo[arg1].field_1024 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_1024:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[arg1][address(arg2)].field_256:
                        return 0
                    if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
                if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                    return 0
                if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_1024 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[arg1][address(arg2)].field_256:
                        return 0
                    if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
                if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                    return 0
                if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1536:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -userInfo[arg1][address(arg2)].field_256:
                        return 0
                    if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
                if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                    return 0
                if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ((10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if ((10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return (((10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if poolInfo[arg1].field_1024 > poolInfo[arg1].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    if not poolInfo[arg1].field_1792 - poolInfo[arg1].field_1024:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER) / poolInfo[arg1].field_1792 - poolInfo[arg1].field_1024 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1536:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[arg1][address(arg2)].field_256:
                    return 0
                if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
            if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
                return 0
            if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][address(arg2)].field_256:
                return 0
            if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
        if (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
            return 0
        if ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return (((0 / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
    if 10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280 < poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -userInfo[arg1][address(arg2)].field_256:
            return 0
        if -1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_256 != taxRatio:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        return (-1 * taxRatio * userInfo[arg1][address(arg2)].field_256 / 10000)
    if (10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) + poolInfo[arg1].field_1280:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ((10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256:
        return 0
    if ((10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / ((10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256 != taxRatio:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    return (((10^18 * (poolInfo[arg1].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18 * taxRatio) - (userInfo[arg1][address(arg2)].field_256 * taxRatio) / 10000)
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if msg.sender == owner:
        if arg3 > 600:
            revert with 0, 'Max Deposit fee is 6%'
        if arg4 > 600:
            revert with 0, 'Max Withdrawal fee is 6%'
        if arg5 <= block.number:
            revert with 0, 'invalid rewardEndBlock'
        if arg5 > endBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x734552524f52203a20726577617264456e64426c6f636b20686967686572207468616e20656e64426c6f63,
                        mem[207 len 21]
        if arg6:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 7
                if block.number <= poolInfo[idx].field_1024:
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                if block.number < poolInfo[idx].field_1792:
                    _833 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_833] = 30
                    mem[_833 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > block.number:
                        _843 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _843 + 68] = mem[idx + _833 + 32]
                            idx = idx + 32
                            continue 
                        mem[_843 + 68] = mem[_843 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _843 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_1024:
                        _897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_897] = 26
                        mem[_897 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _897 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1084 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1084] = 26
                                mem[_1084 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1084 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1115 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1115] = 26
                                mem[_1115 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1115 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _901 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_901] = 26
                            mem[_901 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _901 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1114 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1114] = 26
                                    mem[_1114 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1114 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1150 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1150] = 26
                                    mem[_1150 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1150 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _929 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_929] = 26
                                mem[_929 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _929 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1149 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1149] = 26
                                        mem[_1149 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1149 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1214 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1214] = 26
                                        mem[_1214 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1214 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _965 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_965] = 26
                                mem[_965 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _965 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1213 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1213] = 26
                                        mem[_1213 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1213 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1297 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1297] = 26
                                        mem[_1297 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1297 + 32]
                                            idx = idx + 32
                                            continue 
                else:
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 30
                    mem[_834 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > poolInfo[idx].field_1792:
                        _846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _846 + 68] = mem[idx + _834 + 32]
                            idx = idx + 32
                            continue 
                        mem[_846 + 68] = mem[_846 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _846 + -mem[64] + 100
                    if not poolInfo[idx].field_1792 - poolInfo[idx].field_1024:
                        _898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_898] = 26
                        mem[_898 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _898 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1088 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1088] = 26
                                mem[_1088 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1088 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1121 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1121] = 26
                                mem[_1121 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1121 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / poolInfo[idx].field_1792 - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_905] = 26
                            mem[_905 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _905 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1120 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1120] = 26
                                    mem[_1120 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1120 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1160 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1160] = 26
                                    mem[_1160 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1160 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _935 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_935] = 26
                                mem[_935 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _935 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1159 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1159] = 26
                                        mem[_1159 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1159 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1228 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1228] = 26
                                        mem[_1228 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1228 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _973 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_973] = 26
                                mem[_973 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _973 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1227 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1227] = 26
                                        mem[_1227 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1227 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1314 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1314] = 26
                                        mem[_1314 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1314 + 32]
                                            idx = idx + 32
                                            continue 
                revert with 0, 'SafeMath: division by zero'
    else:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
        if arg3 > 600:
            revert with 0, 'Max Deposit fee is 6%'
        if arg4 > 600:
            revert with 0, 'Max Withdrawal fee is 6%'
        if arg5 <= block.number:
            revert with 0, 'invalid rewardEndBlock'
        if arg5 > endBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x734552524f52203a20726577617264456e64426c6f636b20686967686572207468616e20656e64426c6f63,
                        mem[207 len 21]
        if arg6:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 7
                if block.number <= poolInfo[idx].field_1024:
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                if block.number < poolInfo[idx].field_1792:
                    _837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_837] = 30
                    mem[_837 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > block.number:
                        _851 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _851 + 68] = mem[idx + _837 + 32]
                            idx = idx + 32
                            continue 
                        mem[_851 + 68] = mem[_851 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _851 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_1024:
                        _899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_899] = 26
                        mem[_899 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _899 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1092 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1092] = 26
                                mem[_1092 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1092 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1127 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1127] = 26
                                mem[_1127 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1127 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _909 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_909] = 26
                            mem[_909 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _909 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1126 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1126] = 26
                                    mem[_1126 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1126 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1170 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1170] = 26
                                    mem[_1170 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1170 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _941 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_941] = 26
                                mem[_941 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _941 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1169 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1169] = 26
                                        mem[_1169 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1169 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1242 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1242] = 26
                                        mem[_1242 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1242 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _981 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_981] = 26
                                mem[_981 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _981 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1241 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1241] = 26
                                        mem[_1241 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1241 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1331 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1331] = 26
                                        mem[_1331 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1331 + 32]
                                            idx = idx + 32
                                            continue 
                else:
                    _838 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_838] = 30
                    mem[_838 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > poolInfo[idx].field_1792:
                        _854 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _854 + 68] = mem[idx + _838 + 32]
                            idx = idx + 32
                            continue 
                        mem[_854 + 68] = mem[_854 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _854 + -mem[64] + 100
                    if not poolInfo[idx].field_1792 - poolInfo[idx].field_1024:
                        _900 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_900] = 26
                        mem[_900 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _900 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1096 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1096] = 26
                                mem[_1096 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1096 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1133 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1133] = 26
                                mem[_1133 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1133 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / poolInfo[idx].field_1792 - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _913 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_913] = 26
                            mem[_913 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _913 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1132 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1132] = 26
                                    mem[_1132 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1132 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1180 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1180] = 26
                                    mem[_1180 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1180 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _947 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_947] = 26
                                mem[_947 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _947 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1179 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1179] = 26
                                        mem[_1179 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1179 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1256 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1256] = 26
                                        mem[_1256 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1256 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _989 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_989] = 26
                                mem[_989 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _989 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1255 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1255] = 26
                                        mem[_1255 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1255 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1348 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1348] = 26
                                        mem[_1348 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1348 + 32]
                                            idx = idx + 32
                                            continue 
                revert with 0, 'SafeMath: division by zero'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_512 = arg3
    poolInfo[arg1].field_768 = arg4
    poolInfo[arg1].field_1792 = arg5
}

function add(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5, bool arg6) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if msg.sender == owner:
        if arg2 > 600:
            revert with 0, 'Max Deposit fee is 6%'
        if arg3 > 600:
            revert with 0, 'Max Withdrawal fee is 6%'
        if arg5 <= block.number:
            revert with 0, 'invalid rewardEndBlock'
        if arg5 > endBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x734552524f52203a20726577617264456e64426c6f636b20686967686572207468616e20656e64426c6f63,
                        mem[207 len 21]
        if arg6:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 7
                if block.number <= poolInfo[idx].field_1024:
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                if block.number < poolInfo[idx].field_1792:
                    _883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_883] = 30
                    mem[_883 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > block.number:
                        _887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _887 + 68] = mem[idx + _883 + 32]
                            idx = idx + 32
                            continue 
                        mem[_887 + 68] = mem[_887 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _887 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_1024:
                        _931 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_931] = 26
                        mem[_931 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _931 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1118 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1118] = 26
                                mem[_1118 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1118 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1149 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1149] = 26
                                mem[_1149 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1149 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _935 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_935] = 26
                            mem[_935 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _935 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1148 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1148] = 26
                                    mem[_1148 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1148 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1184 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1184] = 26
                                    mem[_1184 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1184 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _963 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_963] = 26
                                mem[_963 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _963 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1183 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1183] = 26
                                        mem[_1183 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1183 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1248 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1248] = 26
                                        mem[_1248 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1248 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _999 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_999] = 26
                                mem[_999 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _999 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1247 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1247] = 26
                                        mem[_1247 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1247 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1331 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1331] = 26
                                        mem[_1331 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1331 + 32]
                                            idx = idx + 32
                                            continue 
                else:
                    _884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_884] = 30
                    mem[_884 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > poolInfo[idx].field_1792:
                        _890 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _890 + 68] = mem[idx + _884 + 32]
                            idx = idx + 32
                            continue 
                        mem[_890 + 68] = mem[_890 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _890 + -mem[64] + 100
                    if not poolInfo[idx].field_1792 - poolInfo[idx].field_1024:
                        _932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_932] = 26
                        mem[_932 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _932 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1122 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1122] = 26
                                mem[_1122 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1122 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1155 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1155] = 26
                                mem[_1155 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1155 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / poolInfo[idx].field_1792 - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_939] = 26
                            mem[_939 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _939 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1154 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1154] = 26
                                    mem[_1154 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1154 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1194 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1194] = 26
                                    mem[_1194 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1194 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _969 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_969] = 26
                                mem[_969 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _969 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1193 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1193] = 26
                                        mem[_1193 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1193 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1262 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1262] = 26
                                        mem[_1262 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1262 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1007 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1007] = 26
                                mem[_1007 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1007 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1261 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1261] = 26
                                        mem[_1261 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1261 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1348 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1348] = 26
                                        mem[_1348 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1348 + 32]
                                            idx = idx + 32
                                            continue 
                revert with 0, 'SafeMath: division by zero'
    else:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
        if arg2 > 600:
            revert with 0, 'Max Deposit fee is 6%'
        if arg3 > 600:
            revert with 0, 'Max Withdrawal fee is 6%'
        if arg5 <= block.number:
            revert with 0, 'invalid rewardEndBlock'
        if arg5 > endBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x734552524f52203a20726577617264456e64426c6f636b20686967686572207468616e20656e64426c6f63,
                        mem[207 len 21]
        if arg6:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 7
                if block.number <= poolInfo[idx].field_1024:
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_1536:
                    poolInfo[idx].field_1024 = block.number
                    idx = idx + 1
                    continue 
                if block.number < poolInfo[idx].field_1792:
                    _885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_885] = 30
                    mem[_885 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > block.number:
                        _893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _893 + 68] = mem[idx + _885 + 32]
                            idx = idx + 32
                            continue 
                        mem[_893 + 68] = mem[_893 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _893 + -mem[64] + 100
                    if not block.number - poolInfo[idx].field_1024:
                        _933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_933] = 26
                        mem[_933 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _933 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1126 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1126] = 26
                                mem[_1126 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1126 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1161 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1161] = 26
                                mem[_1161 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1161 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _943 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_943] = 26
                            mem[_943 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _943 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1160 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1160] = 26
                                    mem[_1160 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1160 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1204 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1204] = 26
                                    mem[_1204 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1204 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _975 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_975] = 26
                                mem[_975 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _975 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1203 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1203] = 26
                                        mem[_1203 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1203 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1276 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1276] = 26
                                        mem[_1276 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1276 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1015 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1015] = 26
                                mem[_1015 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1015 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1275 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1275] = 26
                                        mem[_1275 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1275 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1365 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1365] = 26
                                        mem[_1365 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (block.number * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1365 + 32]
                                            idx = idx + 32
                                            continue 
                else:
                    _886 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_886] = 30
                    mem[_886 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_1024 > poolInfo[idx].field_1792:
                        _896 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _896 + 68] = mem[idx + _886 + 32]
                            idx = idx + 32
                            continue 
                        mem[_896 + 68] = mem[_896 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _896 + -mem[64] + 100
                    if not poolInfo[idx].field_1792 - poolInfo[idx].field_1024:
                        _934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_934] = 26
                        mem[_934 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _934 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1130 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1130] = 26
                                mem[_1130 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1130 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1167 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1167] = 26
                                mem[_1167 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1536:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                    poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1167 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) / poolInfo[idx].field_1792 - poolInfo[idx].field_1024 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER):
                            _947 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_947] = 26
                            mem[_947 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _947 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _1166 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1166] = 26
                                    mem[_1166 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1166 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1214 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1214] = 26
                                    mem[_1214 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1536:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                        poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1214 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER) != rewardPerBlock:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock):
                                _981 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_981] = 26
                                mem[_981 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _981 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1213 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1213] = 26
                                        mem[_1213 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1213 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1290 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1290] = 26
                                        mem[_1290 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1290 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1023 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1023] = 26
                                mem[_1023 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1023 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1289 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1289] = 26
                                        mem[_1289 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (0 / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 0 / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1289 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1382 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1382] = 26
                                        mem[_1382 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1536:
                                            if (10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536) + poolInfo[idx].field_1280 < poolInfo[idx].field_1280:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1280 += 10^18 * (poolInfo[idx].field_1792 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_1024 * BONUS_MULTIPLIER * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                                            poolInfo[idx].field_1024 = poolInfo[idx].field_1792
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1382 + 32]
                                            idx = idx + 32
                                            continue 
                revert with 0, 'SafeMath: division by zero'
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg4
    storA66C[stor7.length] = arg1
    storA66C[stor7.length] = arg2
    storA66C[stor7.length] = arg3
    if block.number > startBlock:
        storA66C[stor7.length] = block.number
    else:
        storA66C[stor7.length] = startBlock
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = 0
    storA66C[stor7.length] = arg5
}



}
