contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#
address owner;
address lydAddress;
address electrumAddress;
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

function devaddr() payable {
    return devaddr
}

function lyd() payable {
    return lydAddress
}

function startTimestamp() payable {
    return startTimestamp
}

function electrum() payable {
    return electrumAddress
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
        revert with 0, 'Ownable: caller is not the owner'
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
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
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
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
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
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
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
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
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
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
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
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, 0 / totalAllocPoint
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
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
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
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, 0 / totalAllocPoint
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
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
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
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, 0 / totalAllocPoint
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
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
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
        require ext_code.size(lydAddress)
        call lydAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = electrumAddress
        mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(lydAddress)
        call lydAddress.0x40c10f19 with:
             gas gas_remaining wei
            args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
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
        revert with 0, 'Ownable: caller is not the owner'
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
        _291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_291] = 30
        mem[_291 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _291 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[idx].field_512:
            _307 = mem[64]
            mem[64] = mem[64] + 64
            mem[_307] = 26
            mem[_307 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _312 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _312 + 68] = mem[idx + _307 + 32]
                    idx = idx + 32
                    continue 
                mem[_312 + 68] = mem[_312 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _312 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_345] = 26
                mem[_345 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
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
                    _411 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _411 + 68] = mem[idx + _395 + 32]
                        idx = idx + 32
                        continue 
                    mem[_411 + 68] = mem[_411 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _411 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_402] = 26
                mem[_402 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _426 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _426 + 68] = mem[idx + _402 + 32]
                    idx = idx + 32
                    continue 
                mem[_426 + 68] = mem[_426 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _426 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _349 = mem[64]
            mem[64] = mem[64] + 64
            mem[_349] = 26
            mem[_349 + 32] = 'SafeMath: division by zero'
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, 0 / totalAllocPoint
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
                _423 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _423 + 68] = mem[idx + _401 + 32]
                    idx = idx + 32
                    continue 
                mem[_423 + 68] = mem[_423 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _423 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _410 = mem[64]
            mem[64] = mem[64] + 64
            mem[_410] = 26
            mem[_410 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _441 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _441 + 68] = mem[idx + _410 + 32]
                idx = idx + 32
                continue 
            mem[_441 + 68] = mem[_441 + 74 len 26]
            revert with memory
              from mem[64]
               len _441 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
            _310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_310] = 26
            mem[_310 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _316 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _316 + 68] = mem[idx + _310 + 32]
                    idx = idx + 32
                    continue 
                mem[_316 + 68] = mem[_316 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _316 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _348 = mem[64]
                mem[64] = mem[64] + 64
                mem[_348] = 26
                mem[_348 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = 26
                    mem[_400 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _420 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _420 + 68] = mem[idx + _400 + 32]
                        idx = idx + 32
                        continue 
                    mem[_420 + 68] = mem[_420 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _420 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 26
                mem[_409 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _438 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _438 + 68] = mem[idx + _409 + 32]
                    idx = idx + 32
                    continue 
                mem[_438 + 68] = mem[_438 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _438 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_353] = 26
            mem[_353 + 32] = 'SafeMath: division by zero'
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _408 = mem[64]
                mem[64] = mem[64] + 64
                mem[_408] = 26
                mem[_408 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _435 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _435 + 68] = mem[idx + _408 + 32]
                    idx = idx + 32
                    continue 
                mem[_435 + 68] = mem[_435 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _435 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _419 = mem[64]
            mem[64] = mem[64] + 64
            mem[_419] = 26
            mem[_419 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _455 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _455 + 68] = mem[idx + _419 + 32]
                idx = idx + 32
                continue 
            mem[_455 + 68] = mem[_455 + 74 len 26]
            revert with memory
              from mem[64]
               len _455 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
            _311 = mem[64]
            mem[64] = mem[64] + 64
            mem[_311] = 26
            mem[_311 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _319 + 68] = mem[idx + _311 + 32]
                    idx = idx + 32
                    continue 
                mem[_319 + 68] = mem[_319 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _319 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _352 = mem[64]
                mem[64] = mem[64] + 64
                mem[_352] = 26
                mem[_352 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_407] = 26
                    mem[_407 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _432 + 68] = mem[idx + _407 + 32]
                        idx = idx + 32
                        continue 
                    mem[_432 + 68] = mem[_432 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _432 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = 26
                mem[_418 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _452 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _452 + 68] = mem[idx + _418 + 32]
                    idx = idx + 32
                    continue 
                mem[_452 + 68] = mem[_452 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _452 + -mem[64] + 100
            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 26
            mem[_355 + 32] = 'SafeMath: division by zero'
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _417 = mem[64]
                mem[64] = mem[64] + 64
                mem[_417] = 26
                mem[_417 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _449 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _449 + 68] = mem[idx + _417 + 32]
                    idx = idx + 32
                    continue 
                mem[_449 + 68] = mem[_449 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _449 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _431 = mem[64]
            mem[64] = mem[64] + 64
            mem[_431] = 26
            mem[_431 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _469 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _469 + 68] = mem[idx + _431 + 32]
                idx = idx + 32
                continue 
            mem[_469 + 68] = mem[_469 + 74 len 26]
            revert with memory
              from mem[64]
               len _469 + -mem[64] + 100
        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _315 = mem[64]
        mem[64] = mem[64] + 64
        mem[_315] = 26
        mem[_315 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _323 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _323 + 68] = mem[idx + _315 + 32]
                idx = idx + 32
                continue 
            mem[_323 + 68] = mem[_323 + 74 len 26]
            revert with memory
              from mem[64]
               len _323 + -mem[64] + 100
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
            _354 = mem[64]
            mem[64] = mem[64] + 64
            mem[_354] = 26
            mem[_354 + 32] = 'SafeMath: division by zero'
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _416 = mem[64]
                mem[64] = mem[64] + 64
                mem[_416] = 26
                mem[_416 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _446 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _446 + 68] = mem[idx + _416 + 32]
                    idx = idx + 32
                    continue 
                mem[_446 + 68] = mem[_446 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _446 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _430 = mem[64]
            mem[64] = mem[64] + 64
            mem[_430] = 26
            mem[_430 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _466 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _466 + 68] = mem[idx + _430 + 32]
                idx = idx + 32
                continue 
            mem[_466 + 68] = mem[_466 + 74 len 26]
            revert with memory
              from mem[64]
               len _466 + -mem[64] + 100
        if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _356 = mem[64]
        mem[64] = mem[64] + 64
        mem[_356] = 26
        mem[_356 + 32] = 'SafeMath: division by zero'
        require ext_code.size(lydAddress)
        call lydAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = electrumAddress
        mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(lydAddress)
        call lydAddress.0x40c10f19 with:
             gas gas_remaining wei
            args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
            _429 = mem[64]
            mem[64] = mem[64] + 64
            mem[_429] = 26
            mem[_429 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _463 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _463 + 68] = mem[idx + _429 + 32]
                idx = idx + 32
                continue 
            mem[_463 + 68] = mem[_463 + 74 len 26]
            revert with memory
              from mem[64]
               len _463 + -mem[64] + 100
        if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _445 = mem[64]
        mem[64] = mem[64] + 64
        mem[_445] = 26
        mem[_445 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _483 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _483 + 68] = mem[idx + _445 + 32]
            idx = idx + 32
            continue 
        mem[_483 + 68] = mem[_483 + 74 len 26]
        revert with memory
          from mem[64]
           len _483 + -mem[64] + 100
    lydPerSec = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
            if -stor[(4 * stor6.length) + _321 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _321 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _321 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _321 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _321 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _321 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _321 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _321 + 1]) / 3
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
            _344 = mem[64]
            mem[64] = mem[64] + 64
            mem[_344] = 30
            mem[_344 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _344 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _384 = mem[64]
                mem[64] = mem[64] + 64
                mem[_384] = 26
                mem[_384 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _389 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _389 + 68] = mem[idx + _384 + 32]
                        idx = idx + 32
                        continue 
                    mem[_389 + 68] = mem[_389 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _389 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _422 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_422] = 26
                    mem[_422 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = electrumAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_472] = 26
                        mem[_472 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _488 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _488 + 68] = mem[idx + _472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_488 + 68] = mem[_488 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _488 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_479] = 26
                    mem[_479 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _503 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _503 + 68] = mem[idx + _479 + 32]
                        idx = idx + 32
                        continue 
                    mem[_503 + 68] = mem[_503 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _503 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _426 = mem[64]
                mem[64] = mem[64] + 64
                mem[_426] = 26
                mem[_426 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_478] = 26
                    mem[_478 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _500 + 68] = mem[idx + _478 + 32]
                        idx = idx + 32
                        continue 
                    mem[_500 + 68] = mem[_500 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _500 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _487 = mem[64]
                mem[64] = mem[64] + 64
                mem[_487] = 26
                mem[_487 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _518 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _518 + 68] = mem[idx + _487 + 32]
                    idx = idx + 32
                    continue 
                mem[_518 + 68] = mem[_518 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _518 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _387 = mem[64]
                mem[64] = mem[64] + 64
                mem[_387] = 26
                mem[_387 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _393 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _393 + 68] = mem[idx + _387 + 32]
                        idx = idx + 32
                        continue 
                    mem[_393 + 68] = mem[_393 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _393 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _425 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_425] = 26
                    mem[_425 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = electrumAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _477 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_477] = 26
                        mem[_477 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _497 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _497 + 68] = mem[idx + _477 + 32]
                            idx = idx + 32
                            continue 
                        mem[_497 + 68] = mem[_497 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _497 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_486] = 26
                    mem[_486 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _515 + 68] = mem[idx + _486 + 32]
                        idx = idx + 32
                        continue 
                    mem[_515 + 68] = mem[_515 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _515 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _430 = mem[64]
                mem[64] = mem[64] + 64
                mem[_430] = 26
                mem[_430 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_485] = 26
                    mem[_485 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _512 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _512 + 68] = mem[idx + _485 + 32]
                        idx = idx + 32
                        continue 
                    mem[_512 + 68] = mem[_512 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _512 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_496] = 26
                mem[_496 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _532 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _532 + 68] = mem[idx + _496 + 32]
                    idx = idx + 32
                    continue 
                mem[_532 + 68] = mem[_532 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _532 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
                _388 = mem[64]
                mem[64] = mem[64] + 64
                mem[_388] = 26
                mem[_388 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _396 + 68] = mem[idx + _388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_396 + 68] = mem[_396 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _396 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _429 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_429] = 26
                    mem[_429 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = electrumAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _484 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_484] = 26
                        mem[_484 + 32] = 'SafeMath: division by zero'
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
                            mem[idx + _509 + 68] = mem[idx + _484 + 32]
                            idx = idx + 32
                            continue 
                        mem[_509 + 68] = mem[_509 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _509 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_495] = 26
                    mem[_495 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _529 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _529 + 68] = mem[idx + _495 + 32]
                        idx = idx + 32
                        continue 
                    mem[_529 + 68] = mem[_529 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _529 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_432] = 26
                mem[_432 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _494 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_494] = 26
                    mem[_494 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _526 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _526 + 68] = mem[idx + _494 + 32]
                        idx = idx + 32
                        continue 
                    mem[_526 + 68] = mem[_526 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _526 + -mem[64] + 100
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
                _546 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _546 + 68] = mem[idx + _508 + 32]
                    idx = idx + 32
                    continue 
                mem[_546 + 68] = mem[_546 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _546 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _392 = mem[64]
            mem[64] = mem[64] + 64
            mem[_392] = 26
            mem[_392 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _400 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _400 + 68] = mem[idx + _392 + 32]
                    idx = idx + 32
                    continue 
                mem[_400 + 68] = mem[_400 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _400 + -mem[64] + 100
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _431 = mem[64]
                mem[64] = mem[64] + 64
                mem[_431] = 26
                mem[_431 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
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
                    _523 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _523 + 68] = mem[idx + _493 + 32]
                        idx = idx + 32
                        continue 
                    mem[_523 + 68] = mem[_523 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _523 + -mem[64] + 100
                if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _507 = mem[64]
                mem[64] = mem[64] + 64
                mem[_507] = 26
                mem[_507 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _543 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _543 + 68] = mem[idx + _507 + 32]
                    idx = idx + 32
                    continue 
                mem[_543 + 68] = mem[_543 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _543 + -mem[64] + 100
            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _433 = mem[64]
            mem[64] = mem[64] + 64
            mem[_433] = 26
            mem[_433 + 32] = 'SafeMath: division by zero'
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
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
                _540 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _540 + 68] = mem[idx + _506 + 32]
                    idx = idx + 32
                    continue 
                mem[_540 + 68] = mem[_540 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _540 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _522 = mem[64]
            mem[64] = mem[64] + 64
            mem[_522] = 26
            mem[_522 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _560 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _560 + 68] = mem[idx + _522 + 32]
                idx = idx + 32
                continue 
            mem[_560 + 68] = mem[_560 + 74 len 26]
            revert with memory
              from mem[64]
               len _560 + -mem[64] + 100
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
            if -stor[(4 * stor6.length) + _667 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _667 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _667 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _667 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _667 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _667 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _667 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _667 + 1]) / 3
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
            if -stor[(4 * stor6.length) + _322 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _322 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _322 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _322 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _322 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _322 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _322 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _322 + 1]) / 3
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
            _353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_353] = 30
            mem[_353 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _353 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[idx].field_512:
                _403 = mem[64]
                mem[64] = mem[64] + 64
                mem[_403] = 26
                mem[_403 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _408 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _408 + 68] = mem[idx + _403 + 32]
                        idx = idx + 32
                        continue 
                    mem[_408 + 68] = mem[_408 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _408 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _441 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_441] = 26
                    mem[_441 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = electrumAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _491 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_491] = 26
                        mem[_491 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        _507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _507 + 68] = mem[idx + _491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_507 + 68] = mem[_507 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _507 + -mem[64] + 100
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
                    _522 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _522 + 68] = mem[idx + _498 + 32]
                        idx = idx + 32
                        continue 
                    mem[_522 + 68] = mem[_522 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _522 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _445 = mem[64]
                mem[64] = mem[64] + 64
                mem[_445] = 26
                mem[_445 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_497] = 26
                    mem[_497 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _519 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _519 + 68] = mem[idx + _497 + 32]
                        idx = idx + 32
                        continue 
                    mem[_519 + 68] = mem[_519 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _519 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _506 = mem[64]
                mem[64] = mem[64] + 64
                mem[_506] = 26
                mem[_506 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _537 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _537 + 68] = mem[idx + _506 + 32]
                    idx = idx + 32
                    continue 
                mem[_537 + 68] = mem[_537 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _537 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[idx].field_512 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                _406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_406] = 26
                mem[_406 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _412 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _412 + 68] = mem[idx + _406 + 32]
                        idx = idx + 32
                        continue 
                    mem[_412 + 68] = mem[_412 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _412 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_444] = 26
                    mem[_444 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = electrumAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
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
                        _516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _516 + 68] = mem[idx + _496 + 32]
                            idx = idx + 32
                            continue 
                        mem[_516 + 68] = mem[_516 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _516 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_505] = 26
                    mem[_505 + 32] = 'SafeMath: division by zero'
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
                        mem[idx + _534 + 68] = mem[idx + _505 + 32]
                        idx = idx + 32
                        continue 
                    mem[_534 + 68] = mem[_534 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _534 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _449 = mem[64]
                mem[64] = mem[64] + 64
                mem[_449] = 26
                mem[_449 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_504] = 26
                    mem[_504 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _531 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _531 + 68] = mem[idx + _504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_531 + 68] = mem[_531 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _531 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _515 = mem[64]
                mem[64] = mem[64] + 64
                mem[_515] = 26
                mem[_515 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _551 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _551 + 68] = mem[idx + _515 + 32]
                    idx = idx + 32
                    continue 
                mem[_551 + 68] = mem[_551 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _551 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec):
                _407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_407] = 26
                mem[_407 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _415 + 68] = mem[idx + _407 + 32]
                        idx = idx + 32
                        continue 
                    mem[_415 + 68] = mem[_415 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _415 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _448 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_448] = 26
                    mem[_448 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = electrumAddress
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_503] = 26
                        mem[_503 + 32] = 'SafeMath: division by zero'
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
                            mem[idx + _528 + 68] = mem[idx + _503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_528 + 68] = mem[_528 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _528 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_514] = 26
                    mem[_514 + 32] = 'SafeMath: division by zero'
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
                        mem[idx + _548 + 68] = mem[idx + _514 + 32]
                        idx = idx + 32
                        continue 
                    mem[_548 + 68] = mem[_548 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _548 + -mem[64] + 100
                if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _451 = mem[64]
                mem[64] = mem[64] + 64
                mem[_451] = 26
                mem[_451 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 15 * 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _513 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_513] = 26
                    mem[_513 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _545 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _545 + 68] = mem[idx + _513 + 32]
                        idx = idx + 32
                        continue 
                    mem[_545 + 68] = mem[_545 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _545 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 26
                mem[_527 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _565 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _565 + 68] = mem[idx + _527 + 32]
                    idx = idx + 32
                    continue 
                mem[_565 + 68] = mem[_565 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _565 + -mem[64] + 100
            if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _411 = mem[64]
            mem[64] = mem[64] + 64
            mem[_411] = 26
            mem[_411 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _419 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _419 + 68] = mem[idx + _411 + 32]
                    idx = idx + 32
                    continue 
                mem[_419 + 68] = mem[_419 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _419 + -mem[64] + 100
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_450] = 26
                mem[_450 + 32] = 'SafeMath: division by zero'
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = electrumAddress
                mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(lydAddress)
                call lydAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                    _512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_512] = 26
                    mem[_512 + 32] = 'SafeMath: division by zero'
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
                        mem[idx + _542 + 68] = mem[idx + _512 + 32]
                        idx = idx + 32
                        continue 
                    mem[_542 + 68] = mem[_542 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _542 + -mem[64] + 100
                if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_526] = 26
                mem[_526 + 32] = 'SafeMath: division by zero'
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
                    mem[idx + _562 + 68] = mem[idx + _526 + 32]
                    idx = idx + 32
                    continue 
                mem[_562 + 68] = mem[_562 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _562 + -mem[64] + 100
            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 15:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _452 = mem[64]
            mem[64] = mem[64] + 64
            mem[_452] = 26
            mem[_452 + 32] = 'SafeMath: division by zero'
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = electrumAddress
            mem[mem[64] + 36] = (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(lydAddress)
            call lydAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint:
                _525 = mem[64]
                mem[64] = mem[64] + 64
                mem[_525] = 26
                mem[_525 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _559 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _559 + 68] = mem[idx + _525 + 32]
                    idx = idx + 32
                    continue 
                mem[_559 + 68] = mem[_559 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _559 + -mem[64] + 100
            if 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _541 = mem[64]
            mem[64] = mem[64] + 64
            mem[_541] = 26
            mem[_541 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _579 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _579 + 68] = mem[idx + _541 + 32]
                idx = idx + 32
                continue 
            mem[_579 + 68] = mem[_579 + 74 len 26]
            revert with memory
              from mem[64]
               len _579 + -mem[64] + 100
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
            if -stor[(4 * stor6.length) + _688 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _688 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _688 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _688 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _688 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _688 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _688 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _688 + 1]) / 3
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
            if -stor[(4 * stor6.length) + _689 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _689 + 1]):
                require 0 < poolInfo.length
                if uint256(poolInfo.field_256) > totalAllocPoint:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -stor[(4 * stor6.length) + _689 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _689 + 1]) / 3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint = (-stor[(4 * stor6.length) + _689 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _689 + 1]) / 3) + totalAllocPoint - uint256(poolInfo.field_256)
                require 0 < poolInfo.length
                uint256(poolInfo.field_256) = -stor[(4 * stor6.length) + _689 + 1] + (poolInfo.length * stor[(4 * stor6.length) + _689 + 1]) / 3
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'withdraw LYD by unstaking'
    require arg1 < poolInfo.length
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][msg.sender].field_256:
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                require ext_code.size(electrumAddress)
                call electrumAddress.0x3441922a with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                    mem[516 len 0] = 0
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                require ext_code.size(electrumAddress)
                call electrumAddress.0x3441922a with:
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
                    mem[516 len 0] = 0
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(electrumAddress)
                    call electrumAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(electrumAddress)
                    call electrumAddress.0x3441922a with:
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
                        mem[516 len 0] = 0
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        if userInfo[arg1][msg.sender].field_0:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not -userInfo[arg1][msg.sender].field_256:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                    mem[772 len 0] = 0
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                    mem[772 len 0] = 0
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][msg.sender].field_0:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                        mem[772 len 0] = 0
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
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
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][msg.sender].field_0:
                            if userInfo[arg1][msg.sender].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][msg.sender].field_256:
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.timestamp
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -userInfo[arg1][msg.sender].field_256:
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
                                            mem[772 len 0] = 0
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.timestamp
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][msg.sender].field_256:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.timestamp
                                if userInfo[arg1][msg.sender].field_0:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                            mem[772 len 0] = 0
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not -userInfo[arg1][msg.sender].field_256:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                            mem[772 len 0] = 0
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[arg1].field_512 = block.timestamp
                                if not userInfo[arg1][msg.sender].field_0:
                                    if userInfo[arg1][msg.sender].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if -userInfo[arg1][msg.sender].field_256:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
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
                            if userInfo[arg1][msg.sender].field_0:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if userInfo[arg1][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -userInfo[arg1][msg.sender].field_256:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                        mem[772 len 0] = 0
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
            if userInfo[0][msg.sender].field_0:
                if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                    require ext_code.size(electrumAddress)
                    call electrumAddress.0x3441922a with:
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                if userInfo[0][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -userInfo[0][msg.sender].field_256:
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(electrumAddress)
                    call electrumAddress.0x3441922a with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[0][msg.sender].field_256
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
                        mem[516 len 0] = 0
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    if not -userInfo[0][msg.sender].field_256:
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
                            mem[516 len 0] = 0
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        require ext_code.size(electrumAddress)
                        call electrumAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[0][msg.sender].field_256
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                        require ext_code.size(electrumAddress)
                        call electrumAddress.0x3441922a with:
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                if not -userInfo[0][msg.sender].field_256:
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
                                        mem[772 len 0] = 0
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[0][msg.sender].field_256
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            if userInfo[0][msg.sender].field_0:
                                if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if userInfo[0][msg.sender].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not -userInfo[0][msg.sender].field_256:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[0][msg.sender].field_256
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
                                        mem[772 len 0] = 0
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                else:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[0][msg.sender].field_256
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
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
                                        mem[772 len 0] = 0
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) / block.timestamp - uint256(poolInfo.field_512) != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
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
                                    mem[644 len 0] = 0
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(poolInfo.field_768) += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec) != uint256(poolInfo.field_256):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint:
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        if not -userInfo[0][msg.sender].field_256:
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[0][msg.sender].field_256
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                            mem[772 len 0] = 0
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * BONUS_MULTIPLIER * lydPerSec * uint256(poolInfo.field_256)) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(poolInfo.field_768) += 0 / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[0][msg.sender].field_256
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / userInfo[0][msg.sender].field_0 != uint256(poolInfo.field_768):
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[0][msg.sender].field_256 > uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not (uint256(poolInfo.field_768) * userInfo[0][msg.sender].field_0 / 10^12) - userInfo[0][msg.sender].field_256:
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
    require ext_code.size(electrumAddress)
    call electrumAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, msg.sender, 0);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'deposit LYD by staking'
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    require ext_code.size(electrumAddress)
                    call electrumAddress.0x3441922a with:
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
                    require ext_code.size(electrumAddress)
                    call electrumAddress.0x3441922a with:
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        require ext_code.size(electrumAddress)
                        call electrumAddress.0x3441922a with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                            mem[516 len 0] = 0
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        require ext_code.size(electrumAddress)
                        call electrumAddress.0x3441922a with:
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                if 0 / totalAllocPoint:
                    if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 15 * 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                require ext_code.size(electrumAddress)
                                call electrumAddress.0x3441922a with:
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
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                else:
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(lydAddress)
                    call lydAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args electrumAddress, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    require ext_code.size(electrumAddress)
                                    call electrumAddress.0x3441922a with:
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
                                        mem[772 len 0] = 0
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
            else:
                if (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) / block.timestamp - poolInfo[arg1].field_512 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 / totalAllocPoint:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                else:
                                    if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                            mem[772 len 0] = 0
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 15 * 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(lydAddress)
                        call lydAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args electrumAddress, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                    mem[644 len 0] = 0
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                else:
                    if (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) / (block.timestamp * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) != lydPerSec:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        if not -userInfo[arg1][msg.sender].field_256:
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 15 * 0 / totalAllocPoint / 0 / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    if userInfo[arg1][msg.sender].field_0:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not -userInfo[arg1][msg.sender].field_256:
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            else:
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        if not -userInfo[arg1][msg.sender].field_256:
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                    else:
                        if (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / (block.timestamp * BONUS_MULTIPLIER * lydPerSec) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        if not -userInfo[arg1][msg.sender].field_256:
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    if userInfo[arg1][msg.sender].field_0:
                                        if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                    else:
                                        if userInfo[arg1][msg.sender].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not -userInfo[arg1][msg.sender].field_256:
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        else:
                                            require ext_code.size(electrumAddress)
                                            call electrumAddress.0x3441922a with:
                                                 gas gas_remaining wei
                                                args msg.sender, -userInfo[arg1][msg.sender].field_256
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
                                                mem[772 len 0] = 0
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                        else:
                            if 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint != 15:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 15 * (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(lydAddress)
                            call lydAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args electrumAddress, (block.timestamp * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * lydPerSec * poolInfo[arg1].field_256) / totalAllocPoint
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                        require ext_code.size(electrumAddress)
                                        call electrumAddress.0x3441922a with:
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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



}
