contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 500

const MAXIMUM_EMISSION_RATE = 10^18


address owner;
uint256 stor1;
address littlefarmerAddress;
address devAddress;
address feeAddress;
uint256 littlefarmerPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint8 stor10; offset 176
uint16 referralCommissionRate; offset 160
uint128 stor10; offset 176
address referralAddress;
mapping of uint8 stor11;

function poolLength() payable {
    return poolInfo.length
}

function referral() payable {
    return referralAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return feeAddress
}

function littlefarmer() payable {
    return littlefarmerAddress
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

function littlefarmerPerBlock() payable {
    return littlefarmerPerBlock
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function referralCommissionRate() payable {
    return referralCommissionRate
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

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '!nonzero'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, '!nonzero'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'Farm already started'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
    startBlock = arg1
    emit UpdateStartBlock(arg1, msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(littlefarmerAddress)
    staticcall littlefarmerAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 50000 * 10^18:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setReferralAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor10.field_176):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7354686520526566657272616c20636f6e74726163742061646472657373206973206368616e67656420616c72656164,
                    mem[212 len 16]
    referralAddress = arg1
    Mask(80, 0, stor10.field_176) = 1
    emit SetReferralAddress(msg.sender, arg1);
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73736574526566657272616c436f6d6d697373696f6e526174653a20696e76616c696420726566657272616c20636f6d6d697373696f6e207261746520626173697320706f696e74,
                    mem[236 len 24]
    referralCommissionRate = arg1
    emit 0x59918637: arg1, msg.sender
}

function set(uint256 arg1, uint256 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    emit 0x6b15d9cc: poolInfo[arg1].field_0, arg2, poolInfo[arg1].field_512, arg3, msg.sender
}

function add(uint256 arg1, address arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
        poolInfo[poolInfo.length].field_768 = 0
        poolInfo[poolInfo.length].field_1024 = arg3
        poolInfo[poolInfo.length].field_1280 = 0
        emit 0xa2c51573: address(arg2), arg1, block.number, arg3, msg.sender
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
        poolInfo[poolInfo.length].field_768 = 0
        poolInfo[poolInfo.length].field_1024 = arg3
        poolInfo[poolInfo.length].field_1280 = 0
        emit 0xa2c51573: address(arg2), arg1, startBlock, arg3, msg.sender
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 > poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1280 -= userInfo[arg1][address(msg.sender)].field_0
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
}

function pendingLittleFarmer(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(littlefarmerAddress)
    staticcall littlefarmerAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 50000 * 10^18:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock) / block.number - poolInfo[arg1].field_512 != littlefarmerPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1280
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock)
    if (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1280
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1280
    if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 50000 * 10^18:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(littlefarmerAddress)
                        staticcall littlefarmerAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(littlefarmerAddress)
                        if ext_call.return_data[0] <= 50000 * 10^18:
                            call littlefarmerAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(littlefarmerAddress)
                            call littlefarmerAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall littlefarmerAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 50000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                require ext_code.size(littlefarmerAddress)
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(littlefarmerAddress)
                                call littlefarmerAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        require 0 / totalAllocPoint
                        if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        require ext_code.size(littlefarmerAddress)
                        staticcall littlefarmerAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(littlefarmerAddress)
                        if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 50000 * 10^18:
                            call littlefarmerAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(littlefarmerAddress)
                            call littlefarmerAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1280
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall littlefarmerAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 50000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                require ext_code.size(littlefarmerAddress)
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 50000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(littlefarmerAddress)
                                call littlefarmerAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                else:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(littlefarmerAddress)
                            staticcall littlefarmerAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(littlefarmerAddress)
                            if ext_call.return_data[0] <= 50000 * 10^18:
                                call littlefarmerAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(littlefarmerAddress)
                                call littlefarmerAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 50000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    require ext_code.size(littlefarmerAddress)
                                    staticcall littlefarmerAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 50000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(littlefarmerAddress)
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            require 0 / totalAllocPoint
                            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(littlefarmerAddress)
                            staticcall littlefarmerAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(littlefarmerAddress)
                            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 50000 * 10^18:
                                call littlefarmerAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(littlefarmerAddress)
                                call littlefarmerAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[arg1].field_1280
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 50000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    require ext_code.size(littlefarmerAddress)
                                    staticcall littlefarmerAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 50000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(littlefarmerAddress)
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock) / block.number - poolInfo[arg1].field_512 != littlefarmerPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                require ext_code.size(littlefarmerAddress)
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(littlefarmerAddress)
                                if ext_call.return_data[0] <= 50000 * 10^18:
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(littlefarmerAddress)
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall littlefarmerAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 50000 * 10^18:
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(littlefarmerAddress)
                                        staticcall littlefarmerAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 50000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(littlefarmerAddress)
                                        call littlefarmerAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                require 0 / totalAllocPoint
                                if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(littlefarmerAddress)
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(littlefarmerAddress)
                                if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 50000 * 10^18:
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(littlefarmerAddress)
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall littlefarmerAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 50000 * 10^18:
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(littlefarmerAddress)
                                        staticcall littlefarmerAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 50000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(littlefarmerAddress)
                                        call littlefarmerAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            require (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock)
                            if (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / (block.number * littlefarmerPerBlock) - (poolInfo[arg1].field_512 * littlefarmerPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(littlefarmerAddress)
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(littlefarmerAddress)
                                if ext_call.return_data[0] <= 50000 * 10^18:
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(littlefarmerAddress)
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall littlefarmerAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 50000 * 10^18:
                                        if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(littlefarmerAddress)
                                        staticcall littlefarmerAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 50000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(littlefarmerAddress)
                                        call littlefarmerAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 105 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 105:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(littlefarmerAddress)
                                staticcall littlefarmerAddress.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] + (105 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 100) < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(littlefarmerAddress)
                                if ext_call.return_data[0] + (105 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 100) <= 50000 * 10^18:
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(littlefarmerAddress)
                                    call littlefarmerAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if poolInfo[arg1].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require poolInfo[arg1].field_1280
                                        if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall littlefarmerAddress.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 50000 * 10^18:
                                        if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(littlefarmerAddress)
                                        staticcall littlefarmerAddress.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 50000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(littlefarmerAddress)
                                        call littlefarmerAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            require (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if poolInfo[arg1].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require poolInfo[arg1].field_1280
                                            if poolInfo[arg1].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * littlefarmerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10^18:
        revert with 0, 'Too High'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_1280:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        require ext_code.size(littlefarmerAddress)
        staticcall littlefarmerAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 50000 * 10^18:
            _849 = mem[64]
            mem[64] = mem[64] + 64
            mem[_849] = 26
            mem[_849 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _850 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_850 + idx + 68] = mem[_849 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_850 + 68] = mem[_850 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _850 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_873] = 26
                mem[_873 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] <= 50000 * 10^18:
                    _921 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_921] = 26
                    mem[_921 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(littlefarmerAddress)
                    call littlefarmerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(littlefarmerAddress)
                    call littlefarmerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1102 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1102] = 26
                        mem[_1102 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280 > 0:
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1147 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1147 + idx + 68] = mem[_1102 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1147 + 68] = mem[_1147 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1147 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1146] = 26
                    mem[_1146 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1203 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1203 + idx + 68] = mem[_1146 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1203 + 68] = mem[_1203 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1203 + -mem[64] + 100
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 50000 * 10^18:
                    if not 0 / totalAllocPoint:
                        _1000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1000] = 26
                        mem[_1000 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280 > 0:
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1026 + idx + 68] = mem[_1000 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1026 + 68] = mem[_1026 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1026 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1025 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1025] = 26
                    mem[_1025 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1060 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1060 + idx + 68] = mem[_1025 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1060 + 68] = mem[_1060 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1060 + -mem[64] + 100
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _977 = mem[64]
                mem[64] = mem[64] + 64
                mem[_977] = 30
                mem[_977 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 50000 * 10^18:
                    _1001 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1001 + idx + 68] = mem[_977 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1001 + 68] = mem[_1001 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1001 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1240] = 26
                    mem[_1240 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1299 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1299 + idx + 68] = mem[_1240 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1299 + 68] = mem[_1299 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1299 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1298] = 26
                mem[_1298 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1364 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1364 + idx + 68] = mem[_1298 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1364 + 68] = mem[_1364 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1364 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _881 = mem[64]
            mem[64] = mem[64] + 64
            mem[_881] = 26
            mem[_881 + 32] = 'SafeMath: division by zero'
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 50000 * 10^18:
                _935 = mem[64]
                mem[64] = mem[64] + 64
                mem[_935] = 26
                mem[_935 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1144 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1144] = 26
                    mem[_1144 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1198 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1198 + idx + 68] = mem[_1144 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1198 + 68] = mem[_1198 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1198 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1197] = 26
                mem[_1197 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1261 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1261 + idx + 68] = mem[_1197 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1261 + 68] = mem[_1261 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1261 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 50000 * 10^18:
                if not 0 / totalAllocPoint:
                    _1021 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1021] = 26
                    mem[_1021 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1054 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1054 + idx + 68] = mem[_1021 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1054 + 68] = mem[_1054 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1054 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1053 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1053] = 26
                mem[_1053 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1095 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1095 + idx + 68] = mem[_1053 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1095 + 68] = mem[_1095 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1095 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _997 = mem[64]
            mem[64] = mem[64] + 64
            mem[_997] = 30
            mem[_997 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 50000 * 10^18:
                _1022 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1022 + idx + 68] = mem[_997 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1022 + 68] = mem[_1022 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1022 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
            require ext_code.size(littlefarmerAddress)
            call littlefarmerAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1295] = 26
                mem[_1295 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1357 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1357 + idx + 68] = mem[_1295 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1357 + 68] = mem[_1357 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1357 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1356 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1356] = 26
            mem[_1356 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1419 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1419 + idx + 68] = mem[_1356 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1419 + 68] = mem[_1419 + 74 len 26]
            revert with memory
              from mem[64]
               len _1419 + -mem[64] + 100
        _839 = mem[64]
        mem[64] = mem[64] + 64
        mem[_839] = 30
        mem[_839 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _840 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_840 + idx + 68] = mem[_839 + idx + 32]
                idx = idx + 32
                continue 
            mem[_840 + 68] = mem[_840 + 70 len 30]
            revert with memory
              from mem[64]
               len _840 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _854 = mem[64]
            mem[64] = mem[64] + 64
            mem[_854] = 26
            mem[_854 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _861 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_861 + idx + 68] = mem[_854 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_861 + 68] = mem[_861 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _861 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _889 = mem[64]
                mem[64] = mem[64] + 64
                mem[_889] = 26
                mem[_889 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] <= 50000 * 10^18:
                    _954 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_954] = 26
                    mem[_954 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(littlefarmerAddress)
                    call littlefarmerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(littlefarmerAddress)
                    call littlefarmerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1237] = 26
                        mem[_1237 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280 > 0:
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1292 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1292 + idx + 68] = mem[_1237 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1292 + 68] = mem[_1292 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1292 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1291 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1291] = 26
                    mem[_1291 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1352 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1352 + idx + 68] = mem[_1291 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1352 + 68] = mem[_1352 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1352 + -mem[64] + 100
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 50000 * 10^18:
                    if not 0 / totalAllocPoint:
                        _1079 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1079] = 26
                        mem[_1079 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280 > 0:
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1121 + idx + 68] = mem[_1079 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1121 + 68] = mem[_1121 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1121 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1120 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1120] = 26
                    mem[_1120 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1175 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1175 + idx + 68] = mem[_1120 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1175 + 68] = mem[_1175 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1175 + -mem[64] + 100
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1043] = 30
                mem[_1043 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 50000 * 10^18:
                    _1080 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1080 + idx + 68] = mem[_1043 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1080 + 68] = mem[_1080 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1080 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1386] = 26
                    mem[_1386 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1442 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1442 + idx + 68] = mem[_1386 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1442 + 68] = mem[_1442 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1442 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1441 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1441] = 26
                mem[_1441 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1504 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1504 + idx + 68] = mem[_1441 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1504 + 68] = mem[_1504 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1504 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _895 = mem[64]
            mem[64] = mem[64] + 64
            mem[_895] = 26
            mem[_895 + 32] = 'SafeMath: division by zero'
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 50000 * 10^18:
                _972 = mem[64]
                mem[64] = mem[64] + 64
                mem[_972] = 26
                mem[_972 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1289] = 26
                    mem[_1289 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1347 + idx + 68] = mem[_1289 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1347 + 68] = mem[_1347 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1347 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1346] = 26
                mem[_1346 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1413 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1413 + idx + 68] = mem[_1346 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1413 + 68] = mem[_1413 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1413 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 50000 * 10^18:
                if not 0 / totalAllocPoint:
                    _1116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1116] = 26
                    mem[_1116 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1169 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1169 + idx + 68] = mem[_1116 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1169 + 68] = mem[_1169 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1169 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1168] = 26
                mem[_1168 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1230 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1230 + idx + 68] = mem[_1168 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1230 + 68] = mem[_1230 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1230 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1076 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1076] = 30
            mem[_1076 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 50000 * 10^18:
                _1117 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1117 + idx + 68] = mem[_1076 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1117 + 68] = mem[_1117 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1117 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
            require ext_code.size(littlefarmerAddress)
            call littlefarmerAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1438 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1438] = 26
                mem[_1438 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1497 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1497 + idx + 68] = mem[_1438 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1497 + 68] = mem[_1497 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1497 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1496 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1496] = 26
            mem[_1496 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1556 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1556 + idx + 68] = mem[_1496 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1556 + 68] = mem[_1556 + 74 len 26]
            revert with memory
              from mem[64]
               len _1556 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * littlefarmerPerBlock) - (poolInfo[idx].field_512 * littlefarmerPerBlock) / block.number - poolInfo[idx].field_512 != littlefarmerPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * littlefarmerPerBlock) - (poolInfo[idx].field_512 * littlefarmerPerBlock):
            _860 = mem[64]
            mem[64] = mem[64] + 64
            mem[_860] = 26
            mem[_860 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _865 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_865 + idx + 68] = mem[_860 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_865 + 68] = mem[_865 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _865 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_894] = 26
                mem[_894 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] <= 50000 * 10^18:
                    _971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_971] = 26
                    mem[_971 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(littlefarmerAddress)
                    call littlefarmerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 20
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(littlefarmerAddress)
                    call littlefarmerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _1286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1286] = 26
                        mem[_1286 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280 > 0:
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1342 + idx + 68] = mem[_1286 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1342 + 68] = mem[_1342 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1342 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1341 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1341] = 26
                    mem[_1341 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1407 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1407 + idx + 68] = mem[_1341 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1407 + 68] = mem[_1407 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1407 + -mem[64] + 100
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 50000 * 10^18:
                    if not 0 / totalAllocPoint:
                        _1112 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1112] = 26
                        mem[_1112 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280 > 0:
                            require poolInfo[idx].field_1280
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1162 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1162 + idx + 68] = mem[_1112 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1162 + 68] = mem[_1162 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1162 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1161] = 26
                    mem[_1161 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1225 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1225 + idx + 68] = mem[_1161 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1225 + 68] = mem[_1225 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1225 + -mem[64] + 100
                require ext_code.size(littlefarmerAddress)
                staticcall littlefarmerAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _1073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1073] = 30
                mem[_1073 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] > 50000 * 10^18:
                    _1113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1113 + idx + 68] = mem[_1073 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1113 + 68] = mem[_1113 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1113 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1435 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1435] = 26
                    mem[_1435 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1489 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1489 + idx + 68] = mem[_1435 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1489 + 68] = mem[_1489 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1489 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1488 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1488] = 26
                mem[_1488 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1550 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1550 + idx + 68] = mem[_1488 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1550 + 68] = mem[_1550 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1550 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _903 = mem[64]
            mem[64] = mem[64] + 64
            mem[_903] = 26
            mem[_903 + 32] = 'SafeMath: division by zero'
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] + (105 * 0 / totalAllocPoint / 100) <= 50000 * 10^18:
                _994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_994] = 26
                mem[_994 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0 / totalAllocPoint / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _1339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1339] = 26
                    mem[_1339 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1402 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1402 + idx + 68] = mem[_1339 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1402 + 68] = mem[_1402 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1402 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1401] = 26
                mem[_1401 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1468 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1468 + idx + 68] = mem[_1401 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1468 + 68] = mem[_1468 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1468 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 50000 * 10^18:
                if not 0 / totalAllocPoint:
                    _1157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1157] = 26
                    mem[_1157 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1219 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1219 + idx + 68] = mem[_1157 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1219 + 68] = mem[_1219 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1219 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1218] = 26
                mem[_1218 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1279 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1279 + idx + 68] = mem[_1218 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1279 + 68] = mem[_1279 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1279 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1109] = 30
            mem[_1109 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 50000 * 10^18:
                _1158 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1158 + idx + 68] = mem[_1109 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1158 + 68] = mem[_1158 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1158 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
            require ext_code.size(littlefarmerAddress)
            call littlefarmerAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _1485 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1485] = 26
                mem[_1485 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1543 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1543 + idx + 68] = mem[_1485 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1543 + 68] = mem[_1543 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1543 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1542 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1542] = 26
            mem[_1542 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1592 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1592 + idx + 68] = mem[_1542 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1592 + 68] = mem[_1592 + 74 len 26]
            revert with memory
              from mem[64]
               len _1592 + -mem[64] + 100
        require (block.number * littlefarmerPerBlock) - (poolInfo[idx].field_512 * littlefarmerPerBlock)
        if (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / (block.number * littlefarmerPerBlock) - (poolInfo[idx].field_512 * littlefarmerPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _864 = mem[64]
        mem[64] = mem[64] + 64
        mem[_864] = 26
        mem[_864 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _874 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_874 + idx + 68] = mem[_864 + idx + 32]
                idx = idx + 32
                continue 
            mem[_874 + 68] = mem[_874 + 74 len 26]
            revert with memory
              from mem[64]
               len _874 + -mem[64] + 100
        require totalAllocPoint
        if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _902 = mem[64]
            mem[64] = mem[64] + 64
            mem[_902] = 26
            mem[_902 + 32] = 'SafeMath: division by zero'
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] <= 50000 * 10^18:
                _993 = mem[64]
                mem[64] = mem[64] + 64
                mem[_993] = 26
                mem[_993 + 32] = 'SafeMath: division by zero'
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 20
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(littlefarmerAddress)
                call littlefarmerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1336 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1336] = 26
                    mem[_1336 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1397 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1397 + idx + 68] = mem[_1336 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1397 + 68] = mem[_1397 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1397 + -mem[64] + 100
                require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1396] = 26
                mem[_1396 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1462 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1462 + idx + 68] = mem[_1396 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1462 + 68] = mem[_1462 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1462 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 50000 * 10^18:
                if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1153] = 26
                    mem[_1153 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280 > 0:
                        require poolInfo[idx].field_1280
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1212 + idx + 68] = mem[_1153 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1212 + 68] = mem[_1212 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1212 + -mem[64] + 100
                require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1211] = 26
                mem[_1211 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1274 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1274 + idx + 68] = mem[_1211 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1274 + 68] = mem[_1274 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1274 + -mem[64] + 100
            require ext_code.size(littlefarmerAddress)
            staticcall littlefarmerAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _1106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1106] = 30
            mem[_1106 + 32] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > 50000 * 10^18:
                _1154 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1154 + idx + 68] = mem[_1106 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1154 + 68] = mem[_1154 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1154 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
            require ext_code.size(littlefarmerAddress)
            call littlefarmerAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1482 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1482] = 26
                mem[_1482 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1535 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1535 + idx + 68] = mem[_1482 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1535 + 68] = mem[_1535 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1535 + -mem[64] + 100
            require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1534 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1534] = 26
            mem[_1534 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1586 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1586 + idx + 68] = mem[_1534 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1586 + 68] = mem[_1586 + 74 len 26]
            revert with memory
              from mem[64]
               len _1586 + -mem[64] + 100
        require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 105 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 105:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _910 = mem[64]
        mem[64] = mem[64] + 64
        mem[_910] = 26
        mem[_910 + 32] = 'SafeMath: division by zero'
        require ext_code.size(littlefarmerAddress)
        staticcall littlefarmerAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (105 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 100) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] + (105 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 100) <= 50000 * 10^18:
            _1017 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1017] = 26
            mem[_1017 + 32] = 'SafeMath: division by zero'
            require ext_code.size(littlefarmerAddress)
            call littlefarmerAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 20
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(littlefarmerAddress)
            call littlefarmerAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1394 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1394] = 26
                mem[_1394 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1457 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1457 + idx + 68] = mem[_1394 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1457 + 68] = mem[_1457 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1457 + -mem[64] + 100
            require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1456 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1456] = 26
            mem[_1456 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1518 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1518 + idx + 68] = mem[_1456 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1518 + 68] = mem[_1518 + 74 len 26]
            revert with memory
              from mem[64]
               len _1518 + -mem[64] + 100
        require ext_code.size(littlefarmerAddress)
        staticcall littlefarmerAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 50000 * 10^18:
            if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _1207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1207] = 26
                mem[_1207 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280 > 0:
                    require poolInfo[idx].field_1280
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1268 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1268 + idx + 68] = mem[_1207 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1268 + 68] = mem[_1268 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1268 + -mem[64] + 100
            require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1267 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1267] = 26
            mem[_1267 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1329 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1329 + idx + 68] = mem[_1267 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1329 + 68] = mem[_1329 + 74 len 26]
            revert with memory
              from mem[64]
               len _1329 + -mem[64] + 100
        require ext_code.size(littlefarmerAddress)
        staticcall littlefarmerAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1150 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1150] = 30
        mem[_1150 + 32] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > 50000 * 10^18:
            _1208 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1208 + idx + 68] = mem[_1150 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1208 + 68] = mem[_1208 + 70 len 30]
            revert with memory
              from mem[64]
               len _1208 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = -ext_call.return_data[0] + 50000 * 10^18
        require ext_code.size(littlefarmerAddress)
        call littlefarmerAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), -ext_call.return_data[0] + 50000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _1531 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1531] = 26
            mem[_1531 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280 > 0:
                require poolInfo[idx].field_1280
                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1579 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1579 + idx + 68] = mem[_1531 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1579 + 68] = mem[_1579 + 74 len 26]
            revert with memory
              from mem[64]
               len _1579 + -mem[64] + 100
        require (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1578 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1578] = 26
        mem[_1578 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_1280 > 0:
            require poolInfo[idx].field_1280
            if poolInfo[idx].field_768 + (10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * littlefarmerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * littlefarmerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1618 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1618 + idx + 68] = mem[_1578 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1618 + 68] = mem[_1618 + 74 len 26]
        revert with memory
          from mem[64]
           len _1618 + -mem[64] + 100
    littlefarmerPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}



}
