contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
uint256 totalRewardPaid;
uint256 sub_fb5478b3;
address pltAddress;
address devaddr;
address productwalletAddress;
uint256 sub_426c2d43;
address feeAddress;
uint256 stor8;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
address sub_3f35183bAddress;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint16 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;

function poolLength() payable {
    return poolInfo.length
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

function productwallet() payable {
    return productwalletAddress
}

function sub_3f35183b(?) payable {
    return sub_3f35183bAddress
}

function feeAddress() payable {
    return feeAddress
}

function sub_426c2d43(?) payable {
    return sub_426c2d43
}

function startBlock() payable {
    return startBlock
}

function totalRewardPaid() payable {
    return totalRewardPaid
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function plt() payable {
    return pltAddress
}

function devaddr() payable {
    return devaddr
}

function sub_fb5478b3(?) payable {
    return sub_fb5478b3
}

function _fallback() payable {
    revert
}

function enableStaking() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    startBlock = block.number
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

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
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
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint / 10) + totalRewardPaid <= sub_fb5478b3:
                        require ext_code.size(sub_3f35183bAddress)
                        call sub_3f35183bAddress.0x56cb3778 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                            revert with 0, 'SafeMath: addition overflow'
                        totalRewardPaid += 0 / totalAllocPoint / 10
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid <= sub_fb5478b3:
                        require ext_code.size(sub_3f35183bAddress)
                        call sub_3f35183bAddress.0x56cb3778 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                            revert with 0, 'SafeMath: addition overflow'
                        totalRewardPaid += 0 / totalAllocPoint
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
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / totalAllocPoint / 10) + totalRewardPaid <= sub_fb5478b3:
                            require ext_code.size(sub_3f35183bAddress)
                            call sub_3f35183bAddress.0x56cb3778 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                                revert with 0, 'SafeMath: addition overflow'
                            totalRewardPaid += 0 / totalAllocPoint / 10
                        if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / totalAllocPoint) + totalRewardPaid <= sub_fb5478b3:
                            require ext_code.size(sub_3f35183bAddress)
                            call sub_3f35183bAddress.0x56cb3778 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                                revert with 0, 'SafeMath: addition overflow'
                            totalRewardPaid += 0 / totalAllocPoint
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
                        if (block.number * sub_426c2d43) - (poolInfo[arg1].field_512 * sub_426c2d43) / block.number - poolInfo[arg1].field_512 != sub_426c2d43:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_426c2d43) - (poolInfo[arg1].field_512 * sub_426c2d43):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint / 10) + totalRewardPaid <= sub_fb5478b3:
                                require ext_code.size(sub_3f35183bAddress)
                                call sub_3f35183bAddress.0x56cb3778 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalRewardPaid += 0 / totalAllocPoint / 10
                            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / totalAllocPoint) + totalRewardPaid <= sub_fb5478b3:
                                require ext_code.size(sub_3f35183bAddress)
                                call sub_3f35183bAddress.0x56cb3778 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalRewardPaid += 0 / totalAllocPoint
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
                            if (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / (block.number * sub_426c2d43) - (poolInfo[arg1].field_512 * sub_426c2d43) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if ((block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / 10) + totalRewardPaid <= sub_fb5478b3:
                                require ext_code.size(sub_3f35183bAddress)
                                call sub_3f35183bAddress.0x56cb3778 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if ((block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint) + totalRewardPaid <= sub_fb5478b3:
                                require ext_code.size(sub_3f35183bAddress)
                                call sub_3f35183bAddress.0x56cb3778 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint
                            if not (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_9af4dc04(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
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
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
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
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not block.number - poolInfo[arg1].field_512:
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
    if (block.number * sub_426c2d43) - (poolInfo[arg1].field_512 * sub_426c2d43) / block.number - poolInfo[arg1].field_512 != sub_426c2d43:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_426c2d43) - (poolInfo[arg1].field_512 * sub_426c2d43):
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
    if (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / (block.number * sub_426c2d43) - (poolInfo[arg1].field_512 * sub_426c2d43) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint:
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
    if 10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * sub_426c2d43 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_426c2d43 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
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
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _489 = mem[64]
        mem[64] = mem[64] + 64
        mem[_489] = 30
        mem[_489 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _489 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _505 = mem[64]
            mem[64] = mem[64] + 64
            mem[_505] = 26
            mem[_505 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _507 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _507 + 68] = mem[idx + _505 + 32]
                    idx = idx + 32
                    continue 
                mem[_507 + 68] = mem[_507 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _507 + -mem[64] + 100
            _527 = mem[64]
            mem[64] = mem[64] + 64
            mem[_527] = 26
            mem[_527 + 32] = 'SafeMath: division by zero'
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _593 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_593] = 26
                        mem[_593 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _606 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _606 + 68] = mem[idx + _593 + 32]
                            idx = idx + 32
                            continue 
                        mem[_606 + 68] = mem[_606 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _606 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_605] = 26
                    mem[_605 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _622 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _622 + 68] = mem[idx + _605 + 32]
                        idx = idx + 32
                        continue 
                    mem[_622 + 68] = mem[_622 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _622 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_651] = 26
                    mem[_651 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _679 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _679 + 68] = mem[idx + _651 + 32]
                        idx = idx + 32
                        continue 
                    mem[_679 + 68] = mem[_679 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _679 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_678] = 26
                mem[_678 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _717 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _717 + 68] = mem[idx + _678 + 32]
                    idx = idx + 32
                    continue 
                mem[_717 + 68] = mem[_717 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _717 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint / 10
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not 0 / totalAllocPoint:
                    _652 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_652] = 26
                    mem[_652 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _683 + 68] = mem[idx + _652 + 32]
                        idx = idx + 32
                        continue 
                    mem[_683 + 68] = mem[_683 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _683 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 26
                mem[_682 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _721 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _721 + 68] = mem[idx + _682 + 32]
                    idx = idx + 32
                    continue 
                mem[_721 + 68] = mem[_721 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _721 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint
            if not 0 / totalAllocPoint:
                _768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_768] = 26
                mem[_768 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _814 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _814 + 68] = mem[idx + _768 + 32]
                    idx = idx + 32
                    continue 
                mem[_814 + 68] = mem[_814 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _814 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _813 = mem[64]
            mem[64] = mem[64] + 64
            mem[_813] = 26
            mem[_813 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _856 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _856 + 68] = mem[idx + _813 + 32]
                idx = idx + 32
                continue 
            mem[_856 + 68] = mem[_856 + 74 len 26]
            revert with memory
              from mem[64]
               len _856 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _506 = mem[64]
            mem[64] = mem[64] + 64
            mem[_506] = 26
            mem[_506 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _513 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _513 + 68] = mem[idx + _506 + 32]
                    idx = idx + 32
                    continue 
                mem[_513 + 68] = mem[_513 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _513 + -mem[64] + 100
            _535 = mem[64]
            mem[64] = mem[64] + 64
            mem[_535] = 26
            mem[_535 + 32] = 'SafeMath: division by zero'
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _602 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_602] = 26
                        mem[_602 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _619 + 68] = mem[idx + _602 + 32]
                            idx = idx + 32
                            continue 
                        mem[_619 + 68] = mem[_619 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _619 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_618] = 26
                    mem[_618 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _643 + 68] = mem[idx + _618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_643 + 68] = mem[_643 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _643 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_673] = 26
                    mem[_673 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _708 + 68] = mem[idx + _673 + 32]
                        idx = idx + 32
                        continue 
                    mem[_708 + 68] = mem[_708 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _708 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_707] = 26
                mem[_707 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _756 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _756 + 68] = mem[idx + _707 + 32]
                    idx = idx + 32
                    continue 
                mem[_756 + 68] = mem[_756 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _756 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint / 10
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not 0 / totalAllocPoint:
                    _674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_674] = 26
                    mem[_674 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _712 + 68] = mem[idx + _674 + 32]
                        idx = idx + 32
                        continue 
                    mem[_712 + 68] = mem[_712 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _712 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_711] = 26
                mem[_711 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _760 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _760 + 68] = mem[idx + _711 + 32]
                    idx = idx + 32
                    continue 
                mem[_760 + 68] = mem[_760 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _760 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint
            if not 0 / totalAllocPoint:
                _806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_806] = 26
                mem[_806 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _849 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _849 + 68] = mem[idx + _806 + 32]
                    idx = idx + 32
                    continue 
                mem[_849 + 68] = mem[_849 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _849 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _848 = mem[64]
            mem[64] = mem[64] + 64
            mem[_848] = 26
            mem[_848 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _891 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _891 + 68] = mem[idx + _848 + 32]
                idx = idx + 32
                continue 
            mem[_891 + 68] = mem[_891 + 74 len 26]
            revert with memory
              from mem[64]
               len _891 + -mem[64] + 100
        if (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) / block.number - poolInfo[idx].field_512 != sub_426c2d43:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43):
            _512 = mem[64]
            mem[64] = mem[64] + 64
            mem[_512] = 26
            mem[_512 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _520 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _520 + 68] = mem[idx + _512 + 32]
                    idx = idx + 32
                    continue 
                mem[_520 + 68] = mem[_520 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _520 + -mem[64] + 100
            _540 = mem[64]
            mem[64] = mem[64] + 64
            mem[_540] = 26
            mem[_540 + 32] = 'SafeMath: division by zero'
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_615] = 26
                        mem[_615 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _640 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _640 + 68] = mem[idx + _615 + 32]
                            idx = idx + 32
                            continue 
                        mem[_640 + 68] = mem[_640 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _640 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_639] = 26
                    mem[_639 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _665 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _665 + 68] = mem[idx + _639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_665 + 68] = mem[_665 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _665 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_702] = 26
                    mem[_702 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _747 + 68] = mem[idx + _702 + 32]
                        idx = idx + 32
                        continue 
                    mem[_747 + 68] = mem[_747 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _747 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_746] = 26
                mem[_746 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _794 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _794 + 68] = mem[idx + _746 + 32]
                    idx = idx + 32
                    continue 
                mem[_794 + 68] = mem[_794 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _794 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint / 10
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not 0 / totalAllocPoint:
                    _703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_703] = 26
                    mem[_703 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _751 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _751 + 68] = mem[idx + _703 + 32]
                        idx = idx + 32
                        continue 
                    mem[_751 + 68] = mem[_751 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _751 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = 26
                mem[_750 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _798 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _798 + 68] = mem[idx + _750 + 32]
                    idx = idx + 32
                    continue 
                mem[_798 + 68] = mem[_798 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _798 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint
            if not 0 / totalAllocPoint:
                _841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_841] = 26
                mem[_841 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _884 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _884 + 68] = mem[idx + _841 + 32]
                    idx = idx + 32
                    continue 
                mem[_884 + 68] = mem[_884 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _884 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _883 = mem[64]
            mem[64] = mem[64] + 64
            mem[_883] = 26
            mem[_883 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _919 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _919 + 68] = mem[idx + _883 + 32]
                idx = idx + 32
                continue 
            mem[_919 + 68] = mem[_919 + 74 len 26]
            revert with memory
              from mem[64]
               len _919 + -mem[64] + 100
        if (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _519 = mem[64]
        mem[64] = mem[64] + 64
        mem[_519] = 26
        mem[_519 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _528 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _528 + 68] = mem[idx + _519 + 32]
                idx = idx + 32
                continue 
            mem[_528 + 68] = mem[_528 + 74 len 26]
            revert with memory
              from mem[64]
               len _528 + -mem[64] + 100
        _542 = mem[64]
        mem[64] = mem[64] + 64
        mem[_542] = 26
        mem[_542 + 32] = 'SafeMath: division by zero'
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_636] = 26
                    mem[_636 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _662 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _662 + 68] = mem[idx + _636 + 32]
                        idx = idx + 32
                        continue 
                    mem[_662 + 68] = mem[_662 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _662 + -mem[64] + 100
                if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_661] = 26
                mem[_661 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _694 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _694 + 68] = mem[idx + _661 + 32]
                    idx = idx + 32
                    continue 
                mem[_694 + 68] = mem[_694 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _694 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                _741 = mem[64]
                mem[64] = mem[64] + 64
                mem[_741] = 26
                mem[_741 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _785 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _785 + 68] = mem[idx + _741 + 32]
                    idx = idx + 32
                    continue 
                mem[_785 + 68] = mem[_785 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _785 + -mem[64] + 100
            if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _784 = mem[64]
            mem[64] = mem[64] + 64
            mem[_784] = 26
            mem[_784 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _829 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _829 + 68] = mem[idx + _784 + 32]
                idx = idx + 32
                continue 
            mem[_829 + 68] = mem[_829 + 74 len 26]
            revert with memory
              from mem[64]
               len _829 + -mem[64] + 100
        mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = devaddr
        mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
        require ext_code.size(sub_3f35183bAddress)
        call sub_3f35183bAddress.0x56cb3778 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
            if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 26
                mem[_742 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _789 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _789 + 68] = mem[idx + _742 + 32]
                    idx = idx + 32
                    continue 
                mem[_789 + 68] = mem[_789 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _789 + -mem[64] + 100
            if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 26
            mem[_788 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _833 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _833 + 68] = mem[idx + _788 + 32]
                idx = idx + 32
                continue 
            mem[_833 + 68] = mem[_833 + 74 len 26]
            revert with memory
              from mem[64]
               len _833 + -mem[64] + 100
        mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_3f35183bAddress)
        call sub_3f35183bAddress.0x56cb3778 with:
             gas gas_remaining wei
            args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
        if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
            _876 = mem[64]
            mem[64] = mem[64] + 64
            mem[_876] = 26
            mem[_876 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _912 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _912 + 68] = mem[idx + _876 + 32]
                idx = idx + 32
                continue 
            mem[_912 + 68] = mem[_912 + 74 len 26]
            revert with memory
              from mem[64]
               len _912 + -mem[64] + 100
        if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _911 = mem[64]
        mem[64] = mem[64] + 64
        mem[_911] = 26
        mem[_911 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _936 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _936 + 68] = mem[idx + _911 + 32]
            idx = idx + 32
            continue 
        mem[_936 + 68] = mem[_936 + 74 len 26]
        revert with memory
          from mem[64]
           len _936 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
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
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _493 = mem[64]
        mem[64] = mem[64] + 64
        mem[_493] = 30
        mem[_493 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _493 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_509] = 26
            mem[_509 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _511 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _511 + 68] = mem[idx + _509 + 32]
                    idx = idx + 32
                    continue 
                mem[_511 + 68] = mem[_511 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _511 + -mem[64] + 100
            _531 = mem[64]
            mem[64] = mem[64] + 64
            mem[_531] = 26
            mem[_531 + 32] = 'SafeMath: division by zero'
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _597 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_597] = 26
                        mem[_597 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _610 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _610 + 68] = mem[idx + _597 + 32]
                            idx = idx + 32
                            continue 
                        mem[_610 + 68] = mem[_610 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _610 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_609] = 26
                    mem[_609 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _626 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _626 + 68] = mem[idx + _609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_626 + 68] = mem[_626 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _626 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_655] = 26
                    mem[_655 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _683 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _683 + 68] = mem[idx + _655 + 32]
                        idx = idx + 32
                        continue 
                    mem[_683 + 68] = mem[_683 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _683 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 26
                mem[_682 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _721 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _721 + 68] = mem[idx + _682 + 32]
                    idx = idx + 32
                    continue 
                mem[_721 + 68] = mem[_721 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _721 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint / 10
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not 0 / totalAllocPoint:
                    _656 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_656] = 26
                    mem[_656 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _687 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _687 + 68] = mem[idx + _656 + 32]
                        idx = idx + 32
                        continue 
                    mem[_687 + 68] = mem[_687 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _687 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _686 = mem[64]
                mem[64] = mem[64] + 64
                mem[_686] = 26
                mem[_686 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _725 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _725 + 68] = mem[idx + _686 + 32]
                    idx = idx + 32
                    continue 
                mem[_725 + 68] = mem[_725 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _725 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint
            if not 0 / totalAllocPoint:
                _772 = mem[64]
                mem[64] = mem[64] + 64
                mem[_772] = 26
                mem[_772 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _818 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _818 + 68] = mem[idx + _772 + 32]
                    idx = idx + 32
                    continue 
                mem[_818 + 68] = mem[_818 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _818 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _817 = mem[64]
            mem[64] = mem[64] + 64
            mem[_817] = 26
            mem[_817 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _860 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _860 + 68] = mem[idx + _817 + 32]
                idx = idx + 32
                continue 
            mem[_860 + 68] = mem[_860 + 74 len 26]
            revert with memory
              from mem[64]
               len _860 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _510 = mem[64]
            mem[64] = mem[64] + 64
            mem[_510] = 26
            mem[_510 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _517 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _517 + 68] = mem[idx + _510 + 32]
                    idx = idx + 32
                    continue 
                mem[_517 + 68] = mem[_517 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _517 + -mem[64] + 100
            _539 = mem[64]
            mem[64] = mem[64] + 64
            mem[_539] = 26
            mem[_539 + 32] = 'SafeMath: division by zero'
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _606 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_606] = 26
                        mem[_606 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _623 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _623 + 68] = mem[idx + _606 + 32]
                            idx = idx + 32
                            continue 
                        mem[_623 + 68] = mem[_623 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _623 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_622] = 26
                    mem[_622 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _647 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _647 + 68] = mem[idx + _622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_647 + 68] = mem[_647 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _647 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _677 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_677] = 26
                    mem[_677 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _712 + 68] = mem[idx + _677 + 32]
                        idx = idx + 32
                        continue 
                    mem[_712 + 68] = mem[_712 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _712 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _711 = mem[64]
                mem[64] = mem[64] + 64
                mem[_711] = 26
                mem[_711 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _760 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _760 + 68] = mem[idx + _711 + 32]
                    idx = idx + 32
                    continue 
                mem[_760 + 68] = mem[_760 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _760 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint / 10
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not 0 / totalAllocPoint:
                    _678 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_678] = 26
                    mem[_678 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _716 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _716 + 68] = mem[idx + _678 + 32]
                        idx = idx + 32
                        continue 
                    mem[_716 + 68] = mem[_716 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _716 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _715 = mem[64]
                mem[64] = mem[64] + 64
                mem[_715] = 26
                mem[_715 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _764 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _764 + 68] = mem[idx + _715 + 32]
                    idx = idx + 32
                    continue 
                mem[_764 + 68] = mem[_764 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _764 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint
            if not 0 / totalAllocPoint:
                _810 = mem[64]
                mem[64] = mem[64] + 64
                mem[_810] = 26
                mem[_810 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _853 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _853 + 68] = mem[idx + _810 + 32]
                    idx = idx + 32
                    continue 
                mem[_853 + 68] = mem[_853 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _853 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _852 = mem[64]
            mem[64] = mem[64] + 64
            mem[_852] = 26
            mem[_852 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _895 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _895 + 68] = mem[idx + _852 + 32]
                idx = idx + 32
                continue 
            mem[_895 + 68] = mem[_895 + 74 len 26]
            revert with memory
              from mem[64]
               len _895 + -mem[64] + 100
        if (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) / block.number - poolInfo[idx].field_512 != sub_426c2d43:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43):
            _516 = mem[64]
            mem[64] = mem[64] + 64
            mem[_516] = 26
            mem[_516 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _524 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _524 + 68] = mem[idx + _516 + 32]
                    idx = idx + 32
                    continue 
                mem[_524 + 68] = mem[_524 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _524 + -mem[64] + 100
            _544 = mem[64]
            mem[64] = mem[64] + 64
            mem[_544] = 26
            mem[_544 + 32] = 'SafeMath: division by zero'
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _619 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_619] = 26
                        mem[_619 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _644 + 68] = mem[idx + _619 + 32]
                            idx = idx + 32
                            continue 
                        mem[_644 + 68] = mem[_644 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _644 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _643 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_643] = 26
                    mem[_643 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _669 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _669 + 68] = mem[idx + _643 + 32]
                        idx = idx + 32
                        continue 
                    mem[_669 + 68] = mem[_669 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _669 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_706] = 26
                    mem[_706 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _751 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _751 + 68] = mem[idx + _706 + 32]
                        idx = idx + 32
                        continue 
                    mem[_751 + 68] = mem[_751 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _751 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _750 = mem[64]
                mem[64] = mem[64] + 64
                mem[_750] = 26
                mem[_750 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _798 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _798 + 68] = mem[idx + _750 + 32]
                    idx = idx + 32
                    continue 
                mem[_798 + 68] = mem[_798 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _798 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = 0 / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint / 10
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not 0 / totalAllocPoint:
                    _707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_707] = 26
                    mem[_707 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _755 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _755 + 68] = mem[idx + _707 + 32]
                        idx = idx + 32
                        continue 
                    mem[_755 + 68] = mem[_755 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _755 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 26
                mem[_754 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _802 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _802 + 68] = mem[idx + _754 + 32]
                    idx = idx + 32
                    continue 
                mem[_802 + 68] = mem[_802 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _802 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += 0 / totalAllocPoint
            if not 0 / totalAllocPoint:
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _888 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _888 + 68] = mem[idx + _845 + 32]
                    idx = idx + 32
                    continue 
                mem[_888 + 68] = mem[_888 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _888 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _887 = mem[64]
            mem[64] = mem[64] + 64
            mem[_887] = 26
            mem[_887 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _923 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _923 + 68] = mem[idx + _887 + 32]
                idx = idx + 32
                continue 
            mem[_923 + 68] = mem[_923 + 74 len 26]
            revert with memory
              from mem[64]
               len _923 + -mem[64] + 100
        if (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _523 = mem[64]
        mem[64] = mem[64] + 64
        mem[_523] = 26
        mem[_523 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _532 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _532 + 68] = mem[idx + _523 + 32]
                idx = idx + 32
                continue 
            mem[_532 + 68] = mem[_532 + 74 len 26]
            revert with memory
              from mem[64]
               len _532 + -mem[64] + 100
        _546 = mem[64]
        mem[64] = mem[64] + 64
        mem[_546] = 26
        mem[_546 + 32] = 'SafeMath: division by zero'
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                    _640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_640] = 26
                    mem[_640 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _666 + 68] = mem[idx + _640 + 32]
                        idx = idx + 32
                        continue 
                    mem[_666 + 68] = mem[_666 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _666 + -mem[64] + 100
                if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _665 = mem[64]
                mem[64] = mem[64] + 64
                mem[_665] = 26
                mem[_665 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _698 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _698 + 68] = mem[idx + _665 + 32]
                    idx = idx + 32
                    continue 
                mem[_698 + 68] = mem[_698 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _698 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                _745 = mem[64]
                mem[64] = mem[64] + 64
                mem[_745] = 26
                mem[_745 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _789 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _789 + 68] = mem[idx + _745 + 32]
                    idx = idx + 32
                    continue 
                mem[_789 + 68] = mem[_789 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _789 + -mem[64] + 100
            if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _788 = mem[64]
            mem[64] = mem[64] + 64
            mem[_788] = 26
            mem[_788 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _833 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _833 + 68] = mem[idx + _788 + 32]
                idx = idx + 32
                continue 
            mem[_833 + 68] = mem[_833 + 74 len 26]
            revert with memory
              from mem[64]
               len _833 + -mem[64] + 100
        mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = devaddr
        mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
        require ext_code.size(sub_3f35183bAddress)
        call sub_3f35183bAddress.0x56cb3778 with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
            if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                _746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_746] = 26
                mem[_746 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _793 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _793 + 68] = mem[idx + _746 + 32]
                    idx = idx + 32
                    continue 
                mem[_793 + 68] = mem[_793 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _793 + -mem[64] + 100
            if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _792 = mem[64]
            mem[64] = mem[64] + 64
            mem[_792] = 26
            mem[_792 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _837 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _837 + 68] = mem[idx + _792 + 32]
                idx = idx + 32
                continue 
            mem[_837 + 68] = mem[_837 + 74 len 26]
            revert with memory
              from mem[64]
               len _837 + -mem[64] + 100
        mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_3f35183bAddress)
        call sub_3f35183bAddress.0x56cb3778 with:
             gas gas_remaining wei
            args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
            revert with 0, 'SafeMath: addition overflow'
        totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
        if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
            _880 = mem[64]
            mem[64] = mem[64] + 64
            mem[_880] = 26
            mem[_880 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _916 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _916 + 68] = mem[idx + _880 + 32]
                idx = idx + 32
                continue 
            mem[_916 + 68] = mem[_916 + 74 len 26]
            revert with memory
              from mem[64]
               len _916 + -mem[64] + 100
        if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _915 = mem[64]
        mem[64] = mem[64] + 64
        mem[_915] = 26
        mem[_915 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _940 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _940 + 68] = mem[idx + _915 + 32]
            idx = idx + 32
            continue 
        mem[_940 + 68] = mem[_940 + 74 len 26]
        revert with memory
          from mem[64]
           len _940 + -mem[64] + 100
    sub_426c2d43 = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 > stor8:
        revert with 0, 'invalid fee'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
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
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _548 = mem[64]
            mem[64] = mem[64] + 64
            mem[_548] = 30
            mem[_548 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _548 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _566 = mem[64]
                mem[64] = mem[64] + 64
                mem[_566] = 26
                mem[_566 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _568 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _568 + 68] = mem[idx + _566 + 32]
                        idx = idx + 32
                        continue 
                    mem[_568 + 68] = mem[_568 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _568 + -mem[64] + 100
                _588 = mem[64]
                mem[64] = mem[64] + 64
                mem[_588] = 26
                mem[_588 + 32] = 'SafeMath: division by zero'
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                        if not 0 / totalAllocPoint:
                            _654 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_654] = 26
                            mem[_654 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _667 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _667 + 68] = mem[idx + _654 + 32]
                                idx = idx + 32
                                continue 
                            mem[_667 + 68] = mem[_667 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _667 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_666] = 26
                        mem[_666 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _683 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _683 + 68] = mem[idx + _666 + 32]
                            idx = idx + 32
                            continue 
                        mem[_683 + 68] = mem[_683 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _683 + -mem[64] + 100
                    mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_3f35183bAddress)
                    call sub_3f35183bAddress.0x56cb3778 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewardPaid += 0 / totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _712 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_712] = 26
                        mem[_712 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _740 + 68] = mem[idx + _712 + 32]
                            idx = idx + 32
                            continue 
                        mem[_740 + 68] = mem[_740 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _740 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _739 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_739] = 26
                    mem[_739 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _778 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _778 + 68] = mem[idx + _739 + 32]
                        idx = idx + 32
                        continue 
                    mem[_778 + 68] = mem[_778 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _778 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = devaddr
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint / 10
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _713 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_713] = 26
                        mem[_713 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _744 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _744 + 68] = mem[idx + _713 + 32]
                            idx = idx + 32
                            continue 
                        mem[_744 + 68] = mem[_744 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _744 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_743] = 26
                    mem[_743 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _782 + 68] = mem[idx + _743 + 32]
                        idx = idx + 32
                        continue 
                    mem[_782 + 68] = mem[_782 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _782 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 26
                    mem[_829 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _875 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _875 + 68] = mem[idx + _829 + 32]
                        idx = idx + 32
                        continue 
                    mem[_875 + 68] = mem[_875 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _875 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_874] = 26
                mem[_874 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _917 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _917 + 68] = mem[idx + _874 + 32]
                    idx = idx + 32
                    continue 
                mem[_917 + 68] = mem[_917 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _917 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_567] = 26
                mem[_567 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _574 + 68] = mem[idx + _567 + 32]
                        idx = idx + 32
                        continue 
                    mem[_574 + 68] = mem[_574 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _574 + -mem[64] + 100
                _596 = mem[64]
                mem[64] = mem[64] + 64
                mem[_596] = 26
                mem[_596 + 32] = 'SafeMath: division by zero'
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                        if not 0 / totalAllocPoint:
                            _663 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_663] = 26
                            mem[_663 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _680 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _680 + 68] = mem[idx + _663 + 32]
                                idx = idx + 32
                                continue 
                            mem[_680 + 68] = mem[_680 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _680 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _679 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_679] = 26
                        mem[_679 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _704 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _704 + 68] = mem[idx + _679 + 32]
                            idx = idx + 32
                            continue 
                        mem[_704 + 68] = mem[_704 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _704 + -mem[64] + 100
                    mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_3f35183bAddress)
                    call sub_3f35183bAddress.0x56cb3778 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewardPaid += 0 / totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_734] = 26
                        mem[_734 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _769 + 68] = mem[idx + _734 + 32]
                            idx = idx + 32
                            continue 
                        mem[_769 + 68] = mem[_769 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _769 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_768] = 26
                    mem[_768 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _817 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _817 + 68] = mem[idx + _768 + 32]
                        idx = idx + 32
                        continue 
                    mem[_817 + 68] = mem[_817 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _817 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = devaddr
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint / 10
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_735] = 26
                        mem[_735 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _773 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _773 + 68] = mem[idx + _735 + 32]
                            idx = idx + 32
                            continue 
                        mem[_773 + 68] = mem[_773 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _773 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _772 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_772] = 26
                    mem[_772 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _821 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _821 + 68] = mem[idx + _772 + 32]
                        idx = idx + 32
                        continue 
                    mem[_821 + 68] = mem[_821 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _821 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_867] = 26
                    mem[_867 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _910 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _910 + 68] = mem[idx + _867 + 32]
                        idx = idx + 32
                        continue 
                    mem[_910 + 68] = mem[_910 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _910 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _909 = mem[64]
                mem[64] = mem[64] + 64
                mem[_909] = 26
                mem[_909 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _952 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _952 + 68] = mem[idx + _909 + 32]
                    idx = idx + 32
                    continue 
                mem[_952 + 68] = mem[_952 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _952 + -mem[64] + 100
            if (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) / block.number - poolInfo[idx].field_512 != sub_426c2d43:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43):
                _573 = mem[64]
                mem[64] = mem[64] + 64
                mem[_573] = 26
                mem[_573 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _581 + 68] = mem[idx + _573 + 32]
                        idx = idx + 32
                        continue 
                    mem[_581 + 68] = mem[_581 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _581 + -mem[64] + 100
                _601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_601] = 26
                mem[_601 + 32] = 'SafeMath: division by zero'
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                        if not 0 / totalAllocPoint:
                            _676 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_676] = 26
                            mem[_676 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _701 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _701 + 68] = mem[idx + _676 + 32]
                                idx = idx + 32
                                continue 
                            mem[_701 + 68] = mem[_701 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _701 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _700 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_700] = 26
                        mem[_700 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _726 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _726 + 68] = mem[idx + _700 + 32]
                            idx = idx + 32
                            continue 
                        mem[_726 + 68] = mem[_726 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _726 + -mem[64] + 100
                    mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_3f35183bAddress)
                    call sub_3f35183bAddress.0x56cb3778 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewardPaid += 0 / totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_763] = 26
                        mem[_763 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _808 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _808 + 68] = mem[idx + _763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_808 + 68] = mem[_808 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _808 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_807] = 26
                    mem[_807 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _855 + 68] = mem[idx + _807 + 32]
                        idx = idx + 32
                        continue 
                    mem[_855 + 68] = mem[_855 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _855 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = devaddr
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint / 10
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_764] = 26
                        mem[_764 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _812 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _812 + 68] = mem[idx + _764 + 32]
                            idx = idx + 32
                            continue 
                        mem[_812 + 68] = mem[_812 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _812 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_811] = 26
                    mem[_811 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _859 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _859 + 68] = mem[idx + _811 + 32]
                        idx = idx + 32
                        continue 
                    mem[_859 + 68] = mem[_859 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _859 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _902 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_902] = 26
                    mem[_902 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _945 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _945 + 68] = mem[idx + _902 + 32]
                        idx = idx + 32
                        continue 
                    mem[_945 + 68] = mem[_945 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _945 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_944] = 26
                mem[_944 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _980 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _980 + 68] = mem[idx + _944 + 32]
                    idx = idx + 32
                    continue 
                mem[_980 + 68] = mem[_980 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _980 + -mem[64] + 100
            if (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _580 = mem[64]
            mem[64] = mem[64] + 64
            mem[_580] = 26
            mem[_580 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _589 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _589 + 68] = mem[idx + _580 + 32]
                    idx = idx + 32
                    continue 
                mem[_589 + 68] = mem[_589 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _589 + -mem[64] + 100
            _603 = mem[64]
            mem[64] = mem[64] + 64
            mem[_603] = 26
            mem[_603 + 32] = 'SafeMath: division by zero'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                        _697 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_697] = 26
                        mem[_697 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _723 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _723 + 68] = mem[idx + _697 + 32]
                            idx = idx + 32
                            continue 
                        mem[_723 + 68] = mem[_723 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _723 + -mem[64] + 100
                    if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _755 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _755 + 68] = mem[idx + _722 + 32]
                        idx = idx + 32
                        continue 
                    mem[_755 + 68] = mem[_755 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _755 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
                if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                    _802 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_802] = 26
                    mem[_802 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _846 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _846 + 68] = mem[idx + _802 + 32]
                        idx = idx + 32
                        continue 
                    mem[_846 + 68] = mem[_846 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _846 + -mem[64] + 100
                if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _890 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _890 + 68] = mem[idx + _845 + 32]
                    idx = idx + 32
                    continue 
                mem[_890 + 68] = mem[_890 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _890 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                    _803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_803] = 26
                    mem[_803 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _850 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _850 + 68] = mem[idx + _803 + 32]
                        idx = idx + 32
                        continue 
                    mem[_850 + 68] = mem[_850 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _850 + -mem[64] + 100
                if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _849 = mem[64]
                mem[64] = mem[64] + 64
                mem[_849] = 26
                mem[_849 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _894 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _894 + 68] = mem[idx + _849 + 32]
                    idx = idx + 32
                    continue 
                mem[_894 + 68] = mem[_894 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _894 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                _937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_937] = 26
                mem[_937 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _973 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _973 + 68] = mem[idx + _937 + 32]
                    idx = idx + 32
                    continue 
                mem[_973 + 68] = mem[_973 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _973 + -mem[64] + 100
            if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _972 = mem[64]
            mem[64] = mem[64] + 64
            mem[_972] = 26
            mem[_972 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _997 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _997 + 68] = mem[idx + _972 + 32]
                idx = idx + 32
                continue 
            mem[_997 + 68] = mem[_997 + 74 len 26]
            revert with memory
              from mem[64]
               len _997 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 > stor8:
        revert with 0, 'invalid fee'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
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
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _543 = mem[64]
            mem[64] = mem[64] + 64
            mem[_543] = 30
            mem[_543 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _543 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _559 = mem[64]
                mem[64] = mem[64] + 64
                mem[_559] = 26
                mem[_559 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _561 + 68] = mem[idx + _559 + 32]
                        idx = idx + 32
                        continue 
                    mem[_561 + 68] = mem[_561 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _561 + -mem[64] + 100
                _581 = mem[64]
                mem[64] = mem[64] + 64
                mem[_581] = 26
                mem[_581 + 32] = 'SafeMath: division by zero'
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                        if not 0 / totalAllocPoint:
                            _647 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_647] = 26
                            mem[_647 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _660 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _660 + 68] = mem[idx + _647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_660 + 68] = mem[_660 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _660 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_659] = 26
                        mem[_659 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _676 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _676 + 68] = mem[idx + _659 + 32]
                            idx = idx + 32
                            continue 
                        mem[_676 + 68] = mem[_676 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _676 + -mem[64] + 100
                    mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_3f35183bAddress)
                    call sub_3f35183bAddress.0x56cb3778 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewardPaid += 0 / totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _705 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_705] = 26
                        mem[_705 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _733 + 68] = mem[idx + _705 + 32]
                            idx = idx + 32
                            continue 
                        mem[_733 + 68] = mem[_733 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _733 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_732] = 26
                    mem[_732 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _771 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _771 + 68] = mem[idx + _732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_771 + 68] = mem[_771 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _771 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = devaddr
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint / 10
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _706 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_706] = 26
                        mem[_706 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _737 + 68] = mem[idx + _706 + 32]
                            idx = idx + 32
                            continue 
                        mem[_737 + 68] = mem[_737 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _737 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 26
                    mem[_736 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _775 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _775 + 68] = mem[idx + _736 + 32]
                        idx = idx + 32
                        continue 
                    mem[_775 + 68] = mem[_775 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _775 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_822] = 26
                    mem[_822 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _868 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _868 + 68] = mem[idx + _822 + 32]
                        idx = idx + 32
                        continue 
                    mem[_868 + 68] = mem[_868 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _868 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _867 = mem[64]
                mem[64] = mem[64] + 64
                mem[_867] = 26
                mem[_867 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _910 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _910 + 68] = mem[idx + _867 + 32]
                    idx = idx + 32
                    continue 
                mem[_910 + 68] = mem[_910 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _910 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_560] = 26
                mem[_560 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _567 + 68] = mem[idx + _560 + 32]
                        idx = idx + 32
                        continue 
                    mem[_567 + 68] = mem[_567 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _567 + -mem[64] + 100
                _589 = mem[64]
                mem[64] = mem[64] + 64
                mem[_589] = 26
                mem[_589 + 32] = 'SafeMath: division by zero'
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                        if not 0 / totalAllocPoint:
                            _656 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_656] = 26
                            mem[_656 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _673 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _673 + 68] = mem[idx + _656 + 32]
                                idx = idx + 32
                                continue 
                            mem[_673 + 68] = mem[_673 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _673 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _672 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_672] = 26
                        mem[_672 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _697 + 68] = mem[idx + _672 + 32]
                            idx = idx + 32
                            continue 
                        mem[_697 + 68] = mem[_697 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _697 + -mem[64] + 100
                    mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_3f35183bAddress)
                    call sub_3f35183bAddress.0x56cb3778 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewardPaid += 0 / totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _727 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_727] = 26
                        mem[_727 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _762 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _762 + 68] = mem[idx + _727 + 32]
                            idx = idx + 32
                            continue 
                        mem[_762 + 68] = mem[_762 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _762 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _761 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_761] = 26
                    mem[_761 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _810 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _810 + 68] = mem[idx + _761 + 32]
                        idx = idx + 32
                        continue 
                    mem[_810 + 68] = mem[_810 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _810 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = devaddr
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint / 10
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_728] = 26
                        mem[_728 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _766 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _766 + 68] = mem[idx + _728 + 32]
                            idx = idx + 32
                            continue 
                        mem[_766 + 68] = mem[_766 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _766 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_765] = 26
                    mem[_765 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _814 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _814 + 68] = mem[idx + _765 + 32]
                        idx = idx + 32
                        continue 
                    mem[_814 + 68] = mem[_814 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _814 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _903 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _903 + 68] = mem[idx + _860 + 32]
                        idx = idx + 32
                        continue 
                    mem[_903 + 68] = mem[_903 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _903 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _902 = mem[64]
                mem[64] = mem[64] + 64
                mem[_902] = 26
                mem[_902 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _945 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _945 + 68] = mem[idx + _902 + 32]
                    idx = idx + 32
                    continue 
                mem[_945 + 68] = mem[_945 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _945 + -mem[64] + 100
            if (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) / block.number - poolInfo[idx].field_512 != sub_426c2d43:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43):
                _566 = mem[64]
                mem[64] = mem[64] + 64
                mem[_566] = 26
                mem[_566 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _574 + 68] = mem[idx + _566 + 32]
                        idx = idx + 32
                        continue 
                    mem[_574 + 68] = mem[_574 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _574 + -mem[64] + 100
                _594 = mem[64]
                mem[64] = mem[64] + 64
                mem[_594] = 26
                mem[_594 + 32] = 'SafeMath: division by zero'
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                        if not 0 / totalAllocPoint:
                            _669 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_669] = 26
                            mem[_669 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _694 + 68] = mem[idx + _669 + 32]
                                idx = idx + 32
                                continue 
                            mem[_694 + 68] = mem[_694 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _694 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _693 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_693] = 26
                        mem[_693 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _719 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _719 + 68] = mem[idx + _693 + 32]
                            idx = idx + 32
                            continue 
                        mem[_719 + 68] = mem[_719 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _719 + -mem[64] + 100
                    mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_3f35183bAddress)
                    call sub_3f35183bAddress.0x56cb3778 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                        revert with 0, 'SafeMath: addition overflow'
                    totalRewardPaid += 0 / totalAllocPoint
                    if not 0 / totalAllocPoint:
                        _756 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_756] = 26
                        mem[_756 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _801 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _801 + 68] = mem[idx + _756 + 32]
                            idx = idx + 32
                            continue 
                        mem[_801 + 68] = mem[_801 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _801 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_800] = 26
                    mem[_800 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _848 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _848 + 68] = mem[idx + _800 + 32]
                        idx = idx + 32
                        continue 
                    mem[_848 + 68] = mem[_848 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _848 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = devaddr
                mem[mem[64] + 36] = 0 / totalAllocPoint / 10
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint / 10
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not 0 / totalAllocPoint:
                        _757 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_757] = 26
                        mem[_757 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _805 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _805 + 68] = mem[idx + _757 + 32]
                            idx = idx + 32
                            continue 
                        mem[_805 + 68] = mem[_805 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _805 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _804 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_804] = 26
                    mem[_804 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _852 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _852 + 68] = mem[idx + _804 + 32]
                        idx = idx + 32
                        continue 
                    mem[_852 + 68] = mem[_852 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _852 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += 0 / totalAllocPoint
                if not 0 / totalAllocPoint:
                    _895 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_895] = 26
                    mem[_895 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _938 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _938 + 68] = mem[idx + _895 + 32]
                        idx = idx + 32
                        continue 
                    mem[_938 + 68] = mem[_938 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _938 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_937] = 26
                mem[_937 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _973 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _973 + 68] = mem[idx + _937 + 32]
                    idx = idx + 32
                    continue 
                mem[_973 + 68] = mem[_973 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _973 + -mem[64] + 100
            if (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / (block.number * sub_426c2d43) - (poolInfo[idx].field_512 * sub_426c2d43) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _573 = mem[64]
            mem[64] = mem[64] + 64
            mem[_573] = 26
            mem[_573 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _582 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _582 + 68] = mem[idx + _573 + 32]
                    idx = idx + 32
                    continue 
                mem[_582 + 68] = mem[_582 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _582 + -mem[64] + 100
            _596 = mem[64]
            mem[64] = mem[64] + 64
            mem[_596] = 26
            mem[_596 + 32] = 'SafeMath: division by zero'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid > sub_fb5478b3:
                if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                    if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                        _690 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_690] = 26
                        mem[_690 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _716 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _716 + 68] = mem[idx + _690 + 32]
                            idx = idx + 32
                            continue 
                        mem[_716 + 68] = mem[_716 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _716 + -mem[64] + 100
                    if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_715] = 26
                    mem[_715 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _748 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _748 + 68] = mem[idx + _715 + 32]
                        idx = idx + 32
                        continue 
                    mem[_748 + 68] = mem[_748 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _748 + -mem[64] + 100
                mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_3f35183bAddress)
                call sub_3f35183bAddress.0x56cb3778 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                    revert with 0, 'SafeMath: addition overflow'
                totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
                if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                    _795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_795] = 26
                    mem[_795 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _839 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _839 + 68] = mem[idx + _795 + 32]
                        idx = idx + 32
                        continue 
                    mem[_839 + 68] = mem[_839 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _839 + -mem[64] + 100
                if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 26
                mem[_838 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _883 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _883 + 68] = mem[idx + _838 + 32]
                    idx = idx + 32
                    continue 
                mem[_883 + 68] = mem[_883 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _883 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = devaddr
            mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / 10
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid > sub_fb5478b3:
                if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                    _796 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_796] = 26
                    mem[_796 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _843 + 68] = mem[idx + _796 + 32]
                        idx = idx + 32
                        continue 
                    mem[_843 + 68] = mem[_843 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _843 + -mem[64] + 100
                if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_842] = 26
                mem[_842 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _887 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _887 + 68] = mem[idx + _842 + 32]
                    idx = idx + 32
                    continue 
                mem[_887 + 68] = mem[_887 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _887 + -mem[64] + 100
            mem[mem[64]] = 0x56cb377800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_3f35183bAddress)
            call sub_3f35183bAddress.0x56cb3778 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ((block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint) + totalRewardPaid < totalRewardPaid:
                revert with 0, 'SafeMath: addition overflow'
            totalRewardPaid += (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint
            if not (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint:
                _930 = mem[64]
                mem[64] = mem[64] + 64
                mem[_930] = 26
                mem[_930 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _966 + 68] = mem[idx + _930 + 32]
                    idx = idx + 32
                    continue 
                mem[_966 + 68] = mem[_966 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _966 + -mem[64] + 100
            if 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _965 = mem[64]
            mem[64] = mem[64] + 64
            mem[_965] = 26
            mem[_965 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_426c2d43 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_426c2d43 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _990 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _990 + 68] = mem[idx + _965 + 32]
                idx = idx + 32
                continue 
            mem[_990 + 68] = mem[_990 + 74 len 26]
            revert with memory
              from mem[64]
               len _990 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor6E15[stor9.length] = arg1
    if block.number > startBlock:
        stor6E15[stor9.length] = block.number
    else:
        stor6E15[stor9.length] = startBlock
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = arg3
}



}
