contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#
address owner;
address antAddress;
address voteAddress;
address devaddr;
uint256 lydPerSec;
uint256 BONUS_MULTIPLIER;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function lydPerSec() payable {
    return lydPerSec
}

function vote() payable {
    return voteAddress
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function ant() payable {
    return antAddress
}

function devaddr() payable {
    return devaddr
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

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    BONUS_MULTIPLIER = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if (arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) / arg2 - arg1 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(address(poolInfo[arg1].field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, userInfo[arg1][msg.sender].field_32)
    call address(poolInfo[arg1].field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, 0, userInfo[arg1][msg.sender].field_0), mem[324 len 4]
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
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function pendingLyd(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(address(poolInfo[arg1].field_0))
    staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != lydPerSec:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec):
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'withdraw ANT by unstaking'
    require arg1 < poolInfo.length
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][msg.sender].field_256:
                require ext_code.size(voteAddress)
                call voteAddress.0x3441922a with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                require ext_code.size(voteAddress)
                call voteAddress.0x3441922a with:
                     gas gas_remaining wei
                    args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if arg2 > userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][msg.sender].field_0 -= arg2
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            call address(poolInfo[arg1].field_0) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 554 len 31]
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                call address(poolInfo[arg1].field_0) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 554 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[708 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                call address(poolInfo[arg1].field_0) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[772 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[740]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 819 len 22]
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 810 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfo[idx].field_0))
        staticcall address(poolInfo[idx].field_0).0x70a08231 with:
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
        _285 = mem[64]
        mem[64] = mem[64] + 64
        mem[_285] = 30
        mem[_285 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _285 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_301] = 26
            mem[_301 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _306 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _306 + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                mem[_306 + 68] = mem[_306 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _306 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _339 = mem[64]
                mem[64] = mem[64] + 64
                mem[_339] = 26
                mem[_339 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _389 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_389] = 26
                    mem[_389 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _405 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _405 + 68] = mem[idx + _389 + 32]
                        idx = idx + 32
                        continue 
                    mem[_405 + 68] = mem[_405 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _405 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_396] = 26
                mem[_396 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _420 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _420 + 68] = mem[idx + _396 + 32]
                    idx = idx + 32
                    continue 
                mem[_420 + 68] = mem[_420 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _420 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_343] = 26
            mem[_343 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _395 = mem[64]
                mem[64] = mem[64] + 64
                mem[_395] = 26
                mem[_395 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _417 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _417 + 68] = mem[idx + _395 + 32]
                    idx = idx + 32
                    continue 
                mem[_417 + 68] = mem[_417 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _417 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _404 = mem[64]
            mem[64] = mem[64] + 64
            mem[_404] = 26
            mem[_404 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _435 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _435 + 68] = mem[idx + _404 + 32]
                idx = idx + 32
                continue 
            mem[_435 + 68] = mem[_435 + 74 len 26]
            revert with memory
              from mem[64]
               len _435 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _304 = mem[64]
            mem[64] = mem[64] + 64
            mem[_304] = 26
            mem[_304 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _310 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _310 + 68] = mem[idx + _304 + 32]
                    idx = idx + 32
                    continue 
                mem[_310 + 68] = mem[_310 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _310 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 26
                mem[_342 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _394 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_394] = 26
                    mem[_394 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _414 + 68] = mem[idx + _394 + 32]
                        idx = idx + 32
                        continue 
                    mem[_414 + 68] = mem[_414 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _414 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_403] = 26
                mem[_403 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _432 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _432 + 68] = mem[idx + _403 + 32]
                    idx = idx + 32
                    continue 
                mem[_432 + 68] = mem[_432 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _432 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_347] = 26
            mem[_347 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_402] = 26
                mem[_402 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _429 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _429 + 68] = mem[idx + _402 + 32]
                    idx = idx + 32
                    continue 
                mem[_429 + 68] = mem[_429 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _429 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _413 = mem[64]
            mem[64] = mem[64] + 64
            mem[_413] = 26
            mem[_413 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _449 + 68] = mem[idx + _413 + 32]
                idx = idx + 32
                continue 
            mem[_449 + 68] = mem[_449 + 74 len 26]
            revert with memory
              from mem[64]
               len _449 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
            _305 = mem[64]
            mem[64] = mem[64] + 64
            mem[_305] = 26
            mem[_305 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _313 + 68] = mem[idx + _305 + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 68] = mem[_313 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_346] = 26
                mem[_346 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_401] = 26
                    mem[_401 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _426 + 68] = mem[idx + _401 + 32]
                        idx = idx + 32
                        continue 
                    mem[_426 + 68] = mem[_426 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _426 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _412 = mem[64]
                mem[64] = mem[64] + 64
                mem[_412] = 26
                mem[_412 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _446 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _446 + 68] = mem[idx + _412 + 32]
                    idx = idx + 32
                    continue 
                mem[_446 + 68] = mem[_446 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _446 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _349 = mem[64]
            mem[64] = mem[64] + 64
            mem[_349] = 26
            mem[_349 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _411 = mem[64]
                mem[64] = mem[64] + 64
                mem[_411] = 26
                mem[_411 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _443 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _443 + 68] = mem[idx + _411 + 32]
                    idx = idx + 32
                    continue 
                mem[_443 + 68] = mem[_443 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _443 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _425 = mem[64]
            mem[64] = mem[64] + 64
            mem[_425] = 26
            mem[_425 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _463 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _463 + 68] = mem[idx + _425 + 32]
                idx = idx + 32
                continue 
            mem[_463 + 68] = mem[_463 + 74 len 26]
            revert with memory
              from mem[64]
               len _463 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _309 = mem[64]
        mem[64] = mem[64] + 64
        mem[_309] = 26
        mem[_309 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _317 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _317 + 68] = mem[idx + _309 + 32]
                idx = idx + 32
                continue 
            mem[_317 + 68] = mem[_317 + 74 len 26]
            revert with memory
              from mem[64]
               len _317 + -mem[64] + 100
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 26
            mem[_348 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _410 = mem[64]
                mem[64] = mem[64] + 64
                mem[_410] = 26
                mem[_410 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _440 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _440 + 68] = mem[idx + _410 + 32]
                    idx = idx + 32
                    continue 
                mem[_440 + 68] = mem[_440 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _440 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _424 = mem[64]
            mem[64] = mem[64] + 64
            mem[_424] = 26
            mem[_424 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _460 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _460 + 68] = mem[idx + _424 + 32]
                idx = idx + 32
                continue 
            mem[_460 + 68] = mem[_460 + 74 len 26]
            revert with memory
              from mem[64]
               len _460 + -mem[64] + 100
        if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _350 = mem[64]
        mem[64] = mem[64] + 64
        mem[_350] = 26
        mem[_350 + 32] = 'SafeMath: division by zero'
        require ext_code.size(antAddress)
        call antAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = voteAddress
        mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(antAddress)
        call antAddress.0x40c10f19 with:
             gas gas_remaining wei
            args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
            _423 = mem[64]
            mem[64] = mem[64] + 64
            mem[_423] = 26
            mem[_423 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _457 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _457 + 68] = mem[idx + _423 + 32]
                idx = idx + 32
                continue 
            mem[_457 + 68] = mem[_457 + 74 len 26]
            revert with memory
              from mem[64]
               len _457 + -mem[64] + 100
        if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _439 = mem[64]
        mem[64] = mem[64] + 64
        mem[_439] = 26
        mem[_439 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _477 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _477 + 68] = mem[idx + _439 + 32]
            idx = idx + 32
            continue 
        mem[_477 + 68] = mem[_477 + 74 len 26]
        revert with memory
          from mem[64]
           len _477 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfo[idx].field_0))
        staticcall address(poolInfo[idx].field_0).0x70a08231 with:
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
        _293 = mem[64]
        mem[64] = mem[64] + 64
        mem[_293] = 30
        mem[_293 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _293 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _309 = mem[64]
            mem[64] = mem[64] + 64
            mem[_309] = 26
            mem[_309 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _314 + 68] = mem[idx + _309 + 32]
                    idx = idx + 32
                    continue 
                mem[_314 + 68] = mem[_314 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _314 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 26
                mem[_347 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_397] = 26
                    mem[_397 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _413 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _413 + 68] = mem[idx + _397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_413 + 68] = mem[_413 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _413 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_404] = 26
                mem[_404 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _428 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _428 + 68] = mem[idx + _404 + 32]
                    idx = idx + 32
                    continue 
                mem[_428 + 68] = mem[_428 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _428 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 26
            mem[_351 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_403] = 26
                mem[_403 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _425 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _425 + 68] = mem[idx + _403 + 32]
                    idx = idx + 32
                    continue 
                mem[_425 + 68] = mem[_425 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _425 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _412 = mem[64]
            mem[64] = mem[64] + 64
            mem[_412] = 26
            mem[_412 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _443 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _443 + 68] = mem[idx + _412 + 32]
                idx = idx + 32
                continue 
            mem[_443 + 68] = mem[_443 + 74 len 26]
            revert with memory
              from mem[64]
               len _443 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _312 = mem[64]
            mem[64] = mem[64] + 64
            mem[_312] = 26
            mem[_312 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _318 + 68] = mem[idx + _312 + 32]
                    idx = idx + 32
                    continue 
                mem[_318 + 68] = mem[_318 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _318 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _350 = mem[64]
                mem[64] = mem[64] + 64
                mem[_350] = 26
                mem[_350 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_402] = 26
                    mem[_402 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _422 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _422 + 68] = mem[idx + _402 + 32]
                        idx = idx + 32
                        continue 
                    mem[_422 + 68] = mem[_422 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _422 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _411 = mem[64]
                mem[64] = mem[64] + 64
                mem[_411] = 26
                mem[_411 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _440 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _440 + 68] = mem[idx + _411 + 32]
                    idx = idx + 32
                    continue 
                mem[_440 + 68] = mem[_440 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _440 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 26
            mem[_355 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _410 = mem[64]
                mem[64] = mem[64] + 64
                mem[_410] = 26
                mem[_410 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _437 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _437 + 68] = mem[idx + _410 + 32]
                    idx = idx + 32
                    continue 
                mem[_437 + 68] = mem[_437 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _437 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _421 = mem[64]
            mem[64] = mem[64] + 64
            mem[_421] = 26
            mem[_421 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _457 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _457 + 68] = mem[idx + _421 + 32]
                idx = idx + 32
                continue 
            mem[_457 + 68] = mem[_457 + 74 len 26]
            revert with memory
              from mem[64]
               len _457 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
            _313 = mem[64]
            mem[64] = mem[64] + 64
            mem[_313] = 26
            mem[_313 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _321 + 68] = mem[idx + _313 + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 68] = mem[_321 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _354 = mem[64]
                mem[64] = mem[64] + 64
                mem[_354] = 26
                mem[_354 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _409 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_409] = 26
                    mem[_409 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _434 + 68] = mem[idx + _409 + 32]
                        idx = idx + 32
                        continue 
                    mem[_434 + 68] = mem[_434 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _434 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _420 = mem[64]
                mem[64] = mem[64] + 64
                mem[_420] = 26
                mem[_420 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _454 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _454 + 68] = mem[idx + _420 + 32]
                    idx = idx + 32
                    continue 
                mem[_454 + 68] = mem[_454 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _454 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _357 = mem[64]
            mem[64] = mem[64] + 64
            mem[_357] = 26
            mem[_357 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _419 = mem[64]
                mem[64] = mem[64] + 64
                mem[_419] = 26
                mem[_419 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _451 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _451 + 68] = mem[idx + _419 + 32]
                    idx = idx + 32
                    continue 
                mem[_451 + 68] = mem[_451 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _451 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _433 = mem[64]
            mem[64] = mem[64] + 64
            mem[_433] = 26
            mem[_433 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _471 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _471 + 68] = mem[idx + _433 + 32]
                idx = idx + 32
                continue 
            mem[_471 + 68] = mem[_471 + 74 len 26]
            revert with memory
              from mem[64]
               len _471 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _317 = mem[64]
        mem[64] = mem[64] + 64
        mem[_317] = 26
        mem[_317 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _325 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _325 + 68] = mem[idx + _317 + 32]
                idx = idx + 32
                continue 
            mem[_325 + 68] = mem[_325 + 74 len 26]
            revert with memory
              from mem[64]
               len _325 + -mem[64] + 100
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
            _356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_356] = 26
            mem[_356 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = 26
                mem[_418 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _448 + 68] = mem[idx + _418 + 32]
                    idx = idx + 32
                    continue 
                mem[_448 + 68] = mem[_448 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _448 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _432 = mem[64]
            mem[64] = mem[64] + 64
            mem[_432] = 26
            mem[_432 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _468 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _468 + 68] = mem[idx + _432 + 32]
                idx = idx + 32
                continue 
            mem[_468 + 68] = mem[_468 + 74 len 26]
            revert with memory
              from mem[64]
               len _468 + -mem[64] + 100
        if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _358 = mem[64]
        mem[64] = mem[64] + 64
        mem[_358] = 26
        mem[_358 + 32] = 'SafeMath: division by zero'
        require ext_code.size(antAddress)
        call antAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = voteAddress
        mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(antAddress)
        call antAddress.0x40c10f19 with:
             gas gas_remaining wei
            args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
            _431 = mem[64]
            mem[64] = mem[64] + 64
            mem[_431] = 26
            mem[_431 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _465 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _465 + 68] = mem[idx + _431 + 32]
                idx = idx + 32
                continue 
            mem[_465 + 68] = mem[_465 + 74 len 26]
            revert with memory
              from mem[64]
               len _465 + -mem[64] + 100
        if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _447 = mem[64]
        mem[64] = mem[64] + 64
        mem[_447] = 26
        mem[_447 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _485 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _485 + 68] = mem[idx + _447 + 32]
            idx = idx + 32
            continue 
        mem[_485 + 68] = mem[_485 + 74 len 26]
        revert with memory
          from mem[64]
           len _485 + -mem[64] + 100
    lydPerSec = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function enterStaking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.timestamp <= uint256(poolInfo.field_512):
        if not userInfo[0][msg.sender].field_0:
            if not arg1:
                if not userInfo[0][msg.sender].field_0:
                    userInfo[0][msg.sender].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                call address(poolInfo.field_0) with:
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
                    if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[0][msg.sender].field_0 += arg1
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
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
                    if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[0][msg.sender].field_0 += arg1
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
        else:
            if not userInfo[0][msg.sender].field_0:
                if userInfo[0][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[0][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[0][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if not arg1:
                if not userInfo[0][msg.sender].field_0:
                    userInfo[0][msg.sender].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo.field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[544 len 4] = 0
                call address(poolInfo.field_0) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[0][msg.sender].field_0 += arg1
                if not userInfo[0][msg.sender].field_0:
                    userInfo[0][msg.sender].field_256 = 0
                else:
                    if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(address(poolInfo.field_0))
        staticcall address(poolInfo.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            uint256(poolInfo.field_512) = block.timestamp
            if not userInfo[0][msg.sender].field_0:
                if not arg1:
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                    call address(poolInfo.field_0) with:
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
                        if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[0][msg.sender].field_0 += arg1
                        if not userInfo[0][msg.sender].field_0:
                            userInfo[0][msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
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
                        if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[0][msg.sender].field_0 += arg1
                        if not userInfo[0][msg.sender].field_0:
                            userInfo[0][msg.sender].field_256 = 0
                        else:
                            if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
            else:
                if not userInfo[0][msg.sender].field_0:
                    if userInfo[0][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[0][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[0][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if not arg1:
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[0][msg.sender].field_0 += arg1
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
        else:
            if uint256(poolInfo.field_512) > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - uint256(poolInfo.field_512):
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) / block.timestamp - uint256(poolInfo.field_512) != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec) != uint256(poolInfo.field_256):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / ext_call.return_data[0]
            uint256(poolInfo.field_512) = block.timestamp
            if not userInfo[0][msg.sender].field_0:
                if not arg1:
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[672 len 4] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[0][msg.sender].field_0 += arg1
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 650 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
            else:
                if not userInfo[0][msg.sender].field_0:
                    if userInfo[0][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[0][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[0][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if not arg1:
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo.field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[800 len 4] = 0
                    call address(poolInfo.field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    if arg1 + userInfo[0][msg.sender].field_0 < userInfo[0][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[0][msg.sender].field_0 += arg1
                    if not userInfo[0][msg.sender].field_0:
                        userInfo[0][msg.sender].field_256 = 0
                    else:
                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 778 len 31]
                        userInfo[0][msg.sender].field_256 = uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12
    require ext_code.size(voteAddress)
    call voteAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, msg.sender, 0);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'deposit ANT by staking'
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                call address(poolInfo[arg1].field_0) with:
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
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    require ext_code.size(voteAddress)
                    call voteAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[544 len 4] = 0
                call address(poolInfo[arg1].field_0) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 531 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call address(poolInfo[arg1].field_0) with:
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
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
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
                        if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender].field_0 += arg2
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[544 len 4] = 0
                    call address(poolInfo[arg1].field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(antAddress)
                            call antAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(antAddress)
                        call antAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[arg1].field_512 = block.timestamp
            if not userInfo[arg1][msg.sender].field_0:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[672 len 4] = 0
                    call address(poolInfo[arg1].field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[580]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 659 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 650 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                        require ext_code.size(voteAddress)
                        call voteAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(address(poolInfo[arg1].field_0)):
                        revert with 0, 'Address: call to non-contract'
                    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[800 len 4] = 0
                    call address(poolInfo[arg1].field_0) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[772 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[708]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 787 len 22]
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 778 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg3:
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = arg2
        if poolInfo[arg1].field_256 != arg2:
            if poolInfo[arg1].field_256 > totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 6
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(4 * stor6.length) + _323 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _323 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _323 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _323 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _323 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _323 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _323 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _323 + 1]) / 3
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
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
            _346 = mem[64]
            mem[64] = mem[64] + 64
            mem[_346] = 30
            mem[_346 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _346 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _386 = mem[64]
                mem[64] = mem[64] + 64
                mem[_386] = 26
                mem[_386 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _391 + 68] = mem[idx + _386 + 32]
                        idx = idx + 32
                        continue 
                    mem[_391 + 68] = mem[_391 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _391 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _424 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_424] = 26
                    mem[_424 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = voteAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _474 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_474] = 26
                        mem[_474 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _490 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _490 + 68] = mem[idx + _474 + 32]
                            idx = idx + 32
                            continue 
                        mem[_490 + 68] = mem[_490 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _490 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _481 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_481] = 26
                    mem[_481 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _505 + 68] = mem[idx + _481 + 32]
                        idx = idx + 32
                        continue 
                    mem[_505 + 68] = mem[_505 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _505 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _428 = mem[64]
                mem[64] = mem[64] + 64
                mem[_428] = 26
                mem[_428 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_480] = 26
                    mem[_480 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _502 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _502 + 68] = mem[idx + _480 + 32]
                        idx = idx + 32
                        continue 
                    mem[_502 + 68] = mem[_502 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _502 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _489 = mem[64]
                mem[64] = mem[64] + 64
                mem[_489] = 26
                mem[_489 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _520 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _520 + 68] = mem[idx + _489 + 32]
                    idx = idx + 32
                    continue 
                mem[_520 + 68] = mem[_520 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _520 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_389] = 26
                mem[_389 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _395 + 68] = mem[idx + _389 + 32]
                        idx = idx + 32
                        continue 
                    mem[_395 + 68] = mem[_395 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _395 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_427] = 26
                    mem[_427 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = voteAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_479] = 26
                        mem[_479 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _499 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _499 + 68] = mem[idx + _479 + 32]
                            idx = idx + 32
                            continue 
                        mem[_499 + 68] = mem[_499 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _499 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_488] = 26
                    mem[_488 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _517 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _517 + 68] = mem[idx + _488 + 32]
                        idx = idx + 32
                        continue 
                    mem[_517 + 68] = mem[_517 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _517 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_432] = 26
                mem[_432 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_487] = 26
                    mem[_487 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _514 + 68] = mem[idx + _487 + 32]
                        idx = idx + 32
                        continue 
                    mem[_514 + 68] = mem[_514 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _514 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_498] = 26
                mem[_498 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _534 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _534 + 68] = mem[idx + _498 + 32]
                    idx = idx + 32
                    continue 
                mem[_534 + 68] = mem[_534 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _534 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
                _390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_390] = 26
                mem[_390 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _398 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _398 + 68] = mem[idx + _390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_398 + 68] = mem[_398 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _398 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _431 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_431] = 26
                    mem[_431 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = voteAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_486] = 26
                        mem[_486 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _511 + 68] = mem[idx + _486 + 32]
                            idx = idx + 32
                            continue 
                        mem[_511 + 68] = mem[_511 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _511 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_497] = 26
                    mem[_497 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _531 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _531 + 68] = mem[idx + _497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_531 + 68] = mem[_531 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _531 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _434 = mem[64]
                mem[64] = mem[64] + 64
                mem[_434] = 26
                mem[_434 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_496] = 26
                    mem[_496 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _528 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _528 + 68] = mem[idx + _496 + 32]
                        idx = idx + 32
                        continue 
                    mem[_528 + 68] = mem[_528 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _528 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _510 = mem[64]
                mem[64] = mem[64] + 64
                mem[_510] = 26
                mem[_510 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _548 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _548 + 68] = mem[idx + _510 + 32]
                    idx = idx + 32
                    continue 
                mem[_548 + 68] = mem[_548 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _548 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _394 = mem[64]
            mem[64] = mem[64] + 64
            mem[_394] = 26
            mem[_394 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _402 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _402 + 68] = mem[idx + _394 + 32]
                    idx = idx + 32
                    continue 
                mem[_402 + 68] = mem[_402 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _402 + -mem[64] + 100
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _433 = mem[64]
                mem[64] = mem[64] + 64
                mem[_433] = 26
                mem[_433 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                    _495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_495] = 26
                    mem[_495 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _525 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _525 + 68] = mem[idx + _495 + 32]
                        idx = idx + 32
                        continue 
                    mem[_525 + 68] = mem[_525 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _525 + -mem[64] + 100
                if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _509 = mem[64]
                mem[64] = mem[64] + 64
                mem[_509] = 26
                mem[_509 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _545 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _545 + 68] = mem[idx + _509 + 32]
                    idx = idx + 32
                    continue 
                mem[_545 + 68] = mem[_545 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _545 + -mem[64] + 100
            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _435 = mem[64]
            mem[64] = mem[64] + 64
            mem[_435] = 26
            mem[_435 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_508] = 26
                mem[_508 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _542 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _542 + 68] = mem[idx + _508 + 32]
                    idx = idx + 32
                    continue 
                mem[_542 + 68] = mem[_542 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _542 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_524] = 26
            mem[_524 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _562 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _562 + 68] = mem[idx + _524 + 32]
                idx = idx + 32
                continue 
            mem[_562 + 68] = mem[_562 + 74 len 26]
            revert with memory
              from mem[64]
               len _562 + -mem[64] + 100
        require arg1 < poolInfo.length
        poolInfo[arg1].field_256 = arg2
        if poolInfo[arg1].field_256 != arg2:
            if poolInfo[arg1].field_256 > totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 6
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(4 * stor6.length) + _669 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _669 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _669 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _669 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _669 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _669 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _669 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _669 + 1]) / 3
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg3:
        if arg1 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        poolInfo.length++
        address(poolInfo[poolInfo.length].field_0) = arg2
        storF652[stor6.length] = arg1
        if block.timestamp > startTimestamp:
            storF652[stor6.length] = block.timestamp
            storF652[stor6.length] = 0
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 6
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(4 * stor6.length) + _324 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _324 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _324 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _324 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _324 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _324 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _324 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _324 + 1]) / 3
        else:
            storF652[stor6.length] = startTimestamp
            storF652[stor6.length] = 0
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 6
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(4 * stor6.length) + _325 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _325 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _325 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _325 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _325 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _325 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _325 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _325 + 1]) / 3
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
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
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 30
            mem[_355 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _355 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _405 = mem[64]
                mem[64] = mem[64] + 64
                mem[_405] = 26
                mem[_405 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _410 + 68] = mem[idx + _405 + 32]
                        idx = idx + 32
                        continue 
                    mem[_410 + 68] = mem[_410 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _410 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_443] = 26
                    mem[_443 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = voteAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _493 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_493] = 26
                        mem[_493 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _509 + 68] = mem[idx + _493 + 32]
                            idx = idx + 32
                            continue 
                        mem[_509 + 68] = mem[_509 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _509 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_500] = 26
                    mem[_500 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _524 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _524 + 68] = mem[idx + _500 + 32]
                        idx = idx + 32
                        continue 
                    mem[_524 + 68] = mem[_524 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _524 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _447 = mem[64]
                mem[64] = mem[64] + 64
                mem[_447] = 26
                mem[_447 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _499 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_499] = 26
                    mem[_499 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _521 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _521 + 68] = mem[idx + _499 + 32]
                        idx = idx + 32
                        continue 
                    mem[_521 + 68] = mem[_521 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _521 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_508] = 26
                mem[_508 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _539 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _539 + 68] = mem[idx + _508 + 32]
                    idx = idx + 32
                    continue 
                mem[_539 + 68] = mem[_539 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _539 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_408] = 26
                mem[_408 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _414 + 68] = mem[idx + _408 + 32]
                        idx = idx + 32
                        continue 
                    mem[_414 + 68] = mem[_414 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _414 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _446 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_446] = 26
                    mem[_446 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = voteAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _498 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_498] = 26
                        mem[_498 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _518 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _518 + 68] = mem[idx + _498 + 32]
                            idx = idx + 32
                            continue 
                        mem[_518 + 68] = mem[_518 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _518 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _507 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_507] = 26
                    mem[_507 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _536 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _536 + 68] = mem[idx + _507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_536 + 68] = mem[_536 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _536 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _451 = mem[64]
                mem[64] = mem[64] + 64
                mem[_451] = 26
                mem[_451 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_506] = 26
                    mem[_506 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _533 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _533 + 68] = mem[idx + _506 + 32]
                        idx = idx + 32
                        continue 
                    mem[_533 + 68] = mem[_533 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _533 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _517 = mem[64]
                mem[64] = mem[64] + 64
                mem[_517] = 26
                mem[_517 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _553 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _553 + 68] = mem[idx + _517 + 32]
                    idx = idx + 32
                    continue 
                mem[_553 + 68] = mem[_553 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _553 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 26
                mem[_409 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _417 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _417 + 68] = mem[idx + _409 + 32]
                        idx = idx + 32
                        continue 
                    mem[_417 + 68] = mem[_417 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _417 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _450 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_450] = 26
                    mem[_450 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = voteAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(antAddress)
                    call antAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args voteAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_505] = 26
                        mem[_505 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _530 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _530 + 68] = mem[idx + _505 + 32]
                            idx = idx + 32
                            continue 
                        mem[_530 + 68] = mem[_530 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _530 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_516] = 26
                    mem[_516 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _550 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _550 + 68] = mem[idx + _516 + 32]
                        idx = idx + 32
                        continue 
                    mem[_550 + 68] = mem[_550 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _550 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _453 = mem[64]
                mem[64] = mem[64] + 64
                mem[_453] = 26
                mem[_453 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_515] = 26
                    mem[_515 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _547 + 68] = mem[idx + _515 + 32]
                        idx = idx + 32
                        continue 
                    mem[_547 + 68] = mem[_547 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _547 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _529 = mem[64]
                mem[64] = mem[64] + 64
                mem[_529] = 26
                mem[_529 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _567 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _567 + 68] = mem[idx + _529 + 32]
                    idx = idx + 32
                    continue 
                mem[_567 + 68] = mem[_567 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _567 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _413 = mem[64]
            mem[64] = mem[64] + 64
            mem[_413] = 26
            mem[_413 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _421 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _421 + 68] = mem[idx + _413 + 32]
                    idx = idx + 32
                    continue 
                mem[_421 + 68] = mem[_421 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _421 + -mem[64] + 100
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_452] = 26
                mem[_452 + 32] = 'SafeMath: division by zero'
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = voteAddress
                mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(antAddress)
                call antAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                    _514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_514] = 26
                    mem[_514 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _544 + 68] = mem[idx + _514 + 32]
                        idx = idx + 32
                        continue 
                    mem[_544 + 68] = mem[_544 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _544 + -mem[64] + 100
                if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _528 = mem[64]
                mem[64] = mem[64] + 64
                mem[_528] = 26
                mem[_528 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _564 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _564 + 68] = mem[idx + _528 + 32]
                    idx = idx + 32
                    continue 
                mem[_564 + 68] = mem[_564 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _564 + -mem[64] + 100
            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _454 = mem[64]
            mem[64] = mem[64] + 64
            mem[_454] = 26
            mem[_454 + 32] = 'SafeMath: division by zero'
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = voteAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(antAddress)
            call antAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args voteAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 26
                mem[_527 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _561 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _561 + 68] = mem[idx + _527 + 32]
                    idx = idx + 32
                    continue 
                mem[_561 + 68] = mem[_561 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _561 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _543 = mem[64]
            mem[64] = mem[64] + 64
            mem[_543] = 26
            mem[_543 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _581 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _581 + 68] = mem[idx + _543 + 32]
                idx = idx + 32
                continue 
            mem[_581 + 68] = mem[_581 + 74 len 26]
            revert with memory
              from mem[64]
               len _581 + -mem[64] + 100
        if arg1 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg1
        poolInfo.length++
        address(poolInfo[poolInfo.length].field_0) = arg2
        storF652[stor6.length] = arg1
        if block.timestamp > startTimestamp:
            storF652[stor6.length] = block.timestamp
            storF652[stor6.length] = 0
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 6
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(4 * stor6.length) + _690 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _690 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _690 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _690 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _690 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _690 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _690 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _690 + 1]) / 3
        else:
            storF652[stor6.length] = startTimestamp
            storF652[stor6.length] = 0
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 6
                if poolInfo[idx].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = poolInfo[idx].field_256 + s
                continue 
            if -stor[(4 * stor6.length) + _691 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _691 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _691 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _691 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _691 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _691 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _691 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _691 + 1]) / 3
}



}
