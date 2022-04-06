contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stupidAddress;
address devaddr;
uint256 stupidPerBlock;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor9;

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

function feeAddress() payable {
    return feeAddress
}

function stupidPerBlock() payable {
    return stupidPerBlock
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function devaddr() payable {
    return devaddr
}

function stupid() payable {
    return stupidAddress
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

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (arg2 - arg1)
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    Mask(96, 0, stor0.field_160) = 0
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
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
            revert with 0, 32, 42, 0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    Mask(96, 0, stor0.field_160) = 1
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
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(stupidAddress)
                    call stupidAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stupidAddress)
                    call stupidAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(stupidAddress)
                        call stupidAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stupidAddress)
                        call stupidAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock) / block.number - poolInfo[arg1].field_512 != stupidPerBlock:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(stupidAddress)
                            call stupidAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stupidAddress)
                            call stupidAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock)
                            if (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(stupidAddress)
                            call stupidAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stupidAddress)
                            call stupidAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingStupid(uint256 arg1, address arg2) payable {
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
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
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
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock) / block.number - poolInfo[arg1].field_512 != stupidPerBlock:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock)
    if (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / (block.number * stupidPerBlock) - (poolInfo[arg1].field_512 * stupidPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * stupidPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stupidPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
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
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 30
        mem[_165 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _166 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_166 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_166 + 68] = mem[_166 + 70 len 30]
            revert with memory
              from mem[64]
               len _166 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_177] = 26
            mem[_177 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _179 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_179 + idx + 68] = mem[_177 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_179 + 68] = mem[_179 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _179 + -mem[64] + 100
            require totalAllocPoint
            _196 = mem[64]
            mem[64] = mem[64] + 64
            mem[_196] = 26
            mem[_196 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_233] = 26
                mem[_233 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_238 + idx + 68] = mem[_233 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_238 + 68] = mem[_238 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _238 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 26
            mem[_237 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_248 + idx + 68] = mem[_237 + idx + 32]
                idx = idx + 32
                continue 
            mem[_248 + 68] = mem[_248 + 74 len 26]
            revert with memory
              from mem[64]
               len _248 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _178 = mem[64]
            mem[64] = mem[64] + 64
            mem[_178] = 26
            mem[_178 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_178 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_236] = 26
                mem[_236 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _245 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_245 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_245 + 68] = mem[_245 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _245 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _244 = mem[64]
            mem[64] = mem[64] + 64
            mem[_244] = 26
            mem[_244 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _261 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_261 + idx + 68] = mem[_244 + idx + 32]
                idx = idx + 32
                continue 
            mem[_261 + 68] = mem[_261 + 74 len 26]
            revert with memory
              from mem[64]
               len _261 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) / block.number - poolInfo[idx].field_512 != stupidPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock):
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _192 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_192 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_192 + 68] = mem[_192 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _192 + -mem[64] + 100
            require totalAllocPoint
            _209 = mem[64]
            mem[64] = mem[64] + 64
            mem[_209] = 26
            mem[_209 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_243 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _277 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_277 + idx + 68] = mem[_257 + idx + 32]
                idx = idx + 32
                continue 
            mem[_277 + 68] = mem[_277 + 74 len 26]
            revert with memory
              from mem[64]
               len _277 + -mem[64] + 100
        require (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock)
        if (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _191 = mem[64]
        mem[64] = mem[64] + 64
        mem[_191] = 26
        mem[_191 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _200 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_200 + idx + 68] = mem[_191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_200 + 68] = mem[_200 + 74 len 26]
            revert with memory
              from mem[64]
               len _200 + -mem[64] + 100
        require totalAllocPoint
        _215 = mem[64]
        mem[64] = mem[64] + 64
        mem[_215] = 26
        mem[_215 + 32] = 'SafeMath: division by zero'
        require ext_code.size(stupidAddress)
        call stupidAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(stupidAddress)
        call stupidAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _256 = mem[64]
            mem[64] = mem[64] + 64
            mem[_256] = 26
            mem[_256 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _274 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_274 + idx + 68] = mem[_256 + idx + 32]
                idx = idx + 32
                continue 
            mem[_274 + 68] = mem[_274 + 74 len 26]
            revert with memory
              from mem[64]
               len _274 + -mem[64] + 100
        require (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _273 = mem[64]
        mem[64] = mem[64] + 64
        mem[_273] = 26
        mem[_273 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _292 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_292 + idx + 68] = mem[_273 + idx + 32]
            idx = idx + 32
            continue 
        mem[_292 + 68] = mem[_292 + 74 len 26]
        revert with memory
          from mem[64]
           len _292 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
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
        _171 = mem[64]
        mem[64] = mem[64] + 64
        mem[_171] = 30
        mem[_171 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _172 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_172 + idx + 68] = mem[_171 + idx + 32]
                idx = idx + 32
                continue 
            mem[_172 + 68] = mem[_172 + 70 len 30]
            revert with memory
              from mem[64]
               len _172 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _183 = mem[64]
            mem[64] = mem[64] + 64
            mem[_183] = 26
            mem[_183 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _185 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_185 + idx + 68] = mem[_183 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_185 + 68] = mem[_185 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _185 + -mem[64] + 100
            require totalAllocPoint
            _202 = mem[64]
            mem[64] = mem[64] + 64
            mem[_202] = 26
            mem[_202 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _239 = mem[64]
                mem[64] = mem[64] + 64
                mem[_239] = 26
                mem[_239 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_244 + idx + 68] = mem[_239 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_244 + 68] = mem[_244 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _244 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _243 = mem[64]
            mem[64] = mem[64] + 64
            mem[_243] = 26
            mem[_243 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_254 + idx + 68] = mem[_243 + idx + 32]
                idx = idx + 32
                continue 
            mem[_254 + 68] = mem[_254 + 74 len 26]
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.number - poolInfo[idx].field_512:
            _184 = mem[64]
            mem[64] = mem[64] + 64
            mem[_184] = 26
            mem[_184 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_191 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_191 + 68] = mem[_191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _191 + -mem[64] + 100
            require totalAllocPoint
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 26
            mem[_210 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _242 = mem[64]
                mem[64] = mem[64] + 64
                mem[_242] = 26
                mem[_242 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_251 + idx + 68] = mem[_242 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_251 + 68] = mem[_251 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _251 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _250 = mem[64]
            mem[64] = mem[64] + 64
            mem[_250] = 26
            mem[_250 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _267 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_267 + idx + 68] = mem[_250 + idx + 32]
                idx = idx + 32
                continue 
            mem[_267 + 68] = mem[_267 + 74 len 26]
            revert with memory
              from mem[64]
               len _267 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) / block.number - poolInfo[idx].field_512 != stupidPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock):
            _190 = mem[64]
            mem[64] = mem[64] + 64
            mem[_190] = 26
            mem[_190 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_198 + idx + 68] = mem[_190 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 68] = mem[_198 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            require totalAllocPoint
            _215 = mem[64]
            mem[64] = mem[64] + 64
            mem[_215] = 26
            mem[_215 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_249] = 26
                mem[_249 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _264 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_264 + idx + 68] = mem[_249 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_264 + 68] = mem[_264 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _264 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _283 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_283 + idx + 68] = mem[_263 + idx + 32]
                idx = idx + 32
                continue 
            mem[_283 + 68] = mem[_283 + 74 len 26]
            revert with memory
              from mem[64]
               len _283 + -mem[64] + 100
        require (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock)
        if (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _197 = mem[64]
        mem[64] = mem[64] + 64
        mem[_197] = 26
        mem[_197 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _206 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_206 + idx + 68] = mem[_197 + idx + 32]
                idx = idx + 32
                continue 
            mem[_206 + 68] = mem[_206 + 74 len 26]
            revert with memory
              from mem[64]
               len _206 + -mem[64] + 100
        require totalAllocPoint
        _221 = mem[64]
        mem[64] = mem[64] + 64
        mem[_221] = 26
        mem[_221 + 32] = 'SafeMath: division by zero'
        require ext_code.size(stupidAddress)
        call stupidAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(stupidAddress)
        call stupidAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _280 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_280 + idx + 68] = mem[_262 + idx + 32]
                idx = idx + 32
                continue 
            mem[_280 + 68] = mem[_280 + 74 len 26]
            revert with memory
              from mem[64]
               len _280 + -mem[64] + 100
        require (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _279 = mem[64]
        mem[64] = mem[64] + 64
        mem[_279] = 26
        mem[_279 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_298 + idx + 68] = mem[_279 + idx + 32]
            idx = idx + 32
            continue 
        mem[_298 + 68] = mem[_298 + 74 len 26]
        revert with memory
          from mem[64]
           len _298 + -mem[64] + 100
    stupidPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
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
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_213 + idx + 68] = mem[_210 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_213 + 68] = mem[_213 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _213 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_224] = 26
                mem[_224 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_226 + idx + 68] = mem[_224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_226 + 68] = mem[_226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _226 + -mem[64] + 100
                require totalAllocPoint
                _243 = mem[64]
                mem[64] = mem[64] + 64
                mem[_243] = 26
                mem[_243 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _280 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_280] = 26
                    mem[_280 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_285 + idx + 68] = mem[_280 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_285 + 68] = mem[_285 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _285 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_284] = 26
                mem[_284 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _295 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_295 + idx + 68] = mem[_284 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_295 + 68] = mem[_295 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _295 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _232 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_232 + idx + 68] = mem[_225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_232 + 68] = mem[_232 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _232 + -mem[64] + 100
                require totalAllocPoint
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_283] = 26
                    mem[_283 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_292 + idx + 68] = mem[_283 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_292 + 68] = mem[_292 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _292 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_291] = 26
                mem[_291 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_308 + idx + 68] = mem[_291 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 68] = mem[_308 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) / block.number - poolInfo[idx].field_512 != stupidPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock):
                _231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_231] = 26
                mem[_231 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _239 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_239 + idx + 68] = mem[_231 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_239 + 68] = mem[_239 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _239 + -mem[64] + 100
                require totalAllocPoint
                _256 = mem[64]
                mem[64] = mem[64] + 64
                mem[_256] = 26
                mem[_256 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_290] = 26
                    mem[_290 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_324 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_324 + 68] = mem[_324 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _324 + -mem[64] + 100
            require (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock)
            if (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_238] = 26
            mem[_238 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_247 + idx + 68] = mem[_238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_247 + 68] = mem[_247 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _247 + -mem[64] + 100
            require totalAllocPoint
            _262 = mem[64]
            mem[64] = mem[64] + 64
            mem[_262] = 26
            mem[_262 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_321 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 68] = mem[_321 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            require (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _320 = mem[64]
            mem[64] = mem[64] + 64
            mem[_320] = 26
            mem[_320 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _339 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_339 + idx + 68] = mem[_320 + idx + 32]
                idx = idx + 32
                continue 
            mem[_339 + 68] = mem[_339 + 74 len 26]
            revert with memory
              from mem[64]
               len _339 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 9
    if stor9[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
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
            _232 = mem[64]
            mem[64] = mem[64] + 64
            mem[_232] = 30
            mem[_232 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _233 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_233 + idx + 68] = mem[_232 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_233 + 68] = mem[_233 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _233 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_244] = 26
                mem[_244 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _246 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_246 + idx + 68] = mem[_244 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_246 + 68] = mem[_246 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _246 + -mem[64] + 100
                require totalAllocPoint
                _263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_263] = 26
                mem[_263 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_300] = 26
                    mem[_300 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_300 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _315 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_315 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_315 + 68] = mem[_315 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _315 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.number - poolInfo[idx].field_512:
                _245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_245] = 26
                mem[_245 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_252 + idx + 68] = mem[_245 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_252 + 68] = mem[_252 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _252 + -mem[64] + 100
                require totalAllocPoint
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_303] = 26
                    mem[_303 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_312 + idx + 68] = mem[_303 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_312 + 68] = mem[_312 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _312 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_311] = 26
                mem[_311 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_328 + idx + 68] = mem[_311 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_328 + 68] = mem[_328 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _328 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) / block.number - poolInfo[idx].field_512 != stupidPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock):
                _251 = mem[64]
                mem[64] = mem[64] + 64
                mem[_251] = 26
                mem[_251 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _259 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_259 + idx + 68] = mem[_251 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_259 + 68] = mem[_259 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _259 + -mem[64] + 100
                require totalAllocPoint
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(stupidAddress)
                call stupidAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _310 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_310] = 26
                    mem[_310 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _325 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_325 + idx + 68] = mem[_310 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_325 + 68] = mem[_325 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _325 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_344 + idx + 68] = mem[_324 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_344 + 68] = mem[_344 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _344 + -mem[64] + 100
            require (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock)
            if (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / (block.number * stupidPerBlock) - (poolInfo[idx].field_512 * stupidPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_258] = 26
            mem[_258 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _267 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_267 + idx + 68] = mem[_258 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_267 + 68] = mem[_267 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _267 + -mem[64] + 100
            require totalAllocPoint
            _282 = mem[64]
            mem[64] = mem[64] + 64
            mem[_282] = 26
            mem[_282 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(stupidAddress)
            call stupidAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_323] = 26
                mem[_323 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_341 + idx + 68] = mem[_323 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_341 + 68] = mem[_341 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _341 + -mem[64] + 100
            require (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _340 = mem[64]
            mem[64] = mem[64] + 64
            mem[_340] = 26
            mem[_340 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * stupidPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stupidPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _359 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_359 + idx + 68] = mem[_340 + idx + 32]
                idx = idx + 32
                continue 
            mem[_359 + 68] = mem[_359 + 74 len 26]
            revert with memory
              from mem[64]
               len _359 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor9[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
}



}
