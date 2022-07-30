contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 500

const MAXIMUM_EMISSION_RATE = 10^18


address owner;
uint256 stor1;
address sub_c8e63cd2Address;
address devAddress;
address feeAddress;
uint256 sub_bf5294c8;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint8 stor10; offset 176
uint16 referralCommissionRate; offset 160
address referralAddress;
mapping of uint8 stor11;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint16 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;

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

function sub_bf5294c8(?) payable {
    return sub_bf5294c8
}

function sub_c8e63cd2(?) payable {
    return sub_c8e63cd2Address
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
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '!nonzero'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '!nonzero'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
        revert with 0, 'sOwnable: caller is not the owne'
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
    require ext_code.size(sub_c8e63cd2Address)
    staticcall sub_c8e63cd2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1000000 * 10^18:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setReferralAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7254686520526566657272616c20636f6e74726163742061646472657373206973206368616e67656420616c72656164,
                    mem[212 len 16]
    referralAddress = arg1
    stor10 = 1
    emit SetReferralAddress(msg.sender, arg1);
}

function setReferralCommissionRate(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
        revert with 0, 'sOwnable: caller is not the owne'
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
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    emit 0x6b15d9cc: poolInfo[arg1].field_0, arg2, poolInfo[arg1].field_512, arg3, msg.sender
}

function add(uint256 arg1, address arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
        storF652[stor6.length] = 0
        storF652[stor6.length] = arg3
        storF652[stor6.length] = 0
        emit 0xa2c51573: address(arg2), arg1, block.number, arg3, msg.sender
    else:
        storF652[stor6.length] = startBlock
        storF652[stor6.length] = 0
        storF652[stor6.length] = arg3
        storF652[stor6.length] = 0
        emit 0xa2c51573: address(arg2), arg1, startBlock, arg3, msg.sender
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_0
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[388 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x795361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function sub_c80ff242(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if totalAllocPoint <= 0:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(sub_c8e63cd2Address)
    staticcall sub_c8e63cd2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 1000000 * 10^18:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8) / block.number - poolInfo[arg1].field_512 != sub_bf5294c8:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                require ext_code.size(sub_c8e63cd2Address)
                staticcall sub_c8e63cd2Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 1000000 * 10^18:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_c8e63cd2Address)
                        if ext_call.return_data[0] <= 1000000 * 10^18:
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1000000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 1000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(sub_c8e63cd2Address)
                        if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1000000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] > 1000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                else:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_c8e63cd2Address)
                            if ext_call.return_data[0] <= 1000000 * 10^18:
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(sub_c8e63cd2Address)
                            if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 'SafeMath: division by zero'
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        if (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8) / block.number - poolInfo[arg1].field_512 != sub_bf5294c8:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_c8e63cd2Address)
                                if ext_call.return_data[0] <= 1000000 * 10^18:
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 1000000 * 10^18:
                                        if not 0 / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(sub_c8e63cd2Address)
                                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 1000000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c8e63cd2Address)
                                        call sub_c8e63cd2Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_c8e63cd2Address)
                                if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 1000000 * 10^18:
                                        if not 0 / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(sub_c8e63cd2Address)
                                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 1000000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c8e63cd2Address)
                                        call sub_c8e63cd2Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            if (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / (block.number * sub_bf5294c8) - (poolInfo[arg1].field_512 * sub_bf5294c8) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_c8e63cd2Address)
                                if ext_call.return_data[0] <= 1000000 * 10^18:
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 1000000 * 10^18:
                                        if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(sub_c8e63cd2Address)
                                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 1000000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c8e63cd2Address)
                                        call sub_c8e63cd2Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                if 105 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 105:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if (105 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require ext_code.size(sub_c8e63cd2Address)
                                if (105 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / 20
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args this.address, (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not poolInfo[arg1].field_1280:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                else:
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] >= 1000000 * 10^18:
                                        if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                                    else:
                                        require ext_code.size(sub_c8e63cd2Address)
                                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] > 1000000 * 10^18:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require ext_code.size(sub_c8e63cd2Address)
                                        call sub_c8e63cd2Address.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                        else:
                                            if 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not poolInfo[arg1].field_1280:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_bf5294c8 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
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
        require ext_code.size(sub_c8e63cd2Address)
        staticcall sub_c8e63cd2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 1000000 * 10^18:
            _1047 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1047] = 26
            mem[_1047 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1047 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1080] = 26
                    mem[_1080 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 1000000 * 10^18:
                        _1137 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1137] = 26
                        mem[_1137 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1345 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1345] = 26
                            mem[_1345 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1345 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1400 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1400] = 26
                            mem[_1400 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1400 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 1000000 * 10^18:
                            if not 0 / totalAllocPoint:
                                _1199 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1199] = 26
                                mem[_1199 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1199 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1223] = 26
                                mem[_1223 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1223 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1190] = 30
                            mem[_1190 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 1000000 * 10^18:
                                _1213 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1213 + 68] = mem[idx + _1190 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1213 + 68] = mem[_1213 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1213 + -mem[64] + 100
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1464 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1464] = 26
                                mem[_1464 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1464 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1537 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1537] = 26
                                mem[_1537 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1537 + 32]
                                    idx = idx + 32
                                    continue 
                else:
                    if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1092 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1092] = 26
                    mem[_1092 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                        _1151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1151] = 26
                        mem[_1151 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1397] = 26
                            mem[_1397 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1397 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1460 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1460] = 26
                            mem[_1460 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1460 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 1000000 * 10^18:
                            if not 0 / totalAllocPoint:
                                _1220 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1220] = 26
                                mem[_1220 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1220 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1247 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1247] = 26
                                mem[_1247 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
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
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1212 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1212] = 30
                            mem[_1212 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 1000000 * 10^18:
                                _1236 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1236 + 68] = mem[idx + _1212 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1236 + 68] = mem[_1236 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1236 + -mem[64] + 100
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1531 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1531] = 26
                                mem[_1531 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1531 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1606 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1606] = 26
                                mem[_1606 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1606 + 32]
                                    idx = idx + 32
                                    continue 
        else:
            _1039 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1039] = 30
            mem[_1039 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _1040 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1040 + 68] = mem[idx + _1039 + 32]
                    idx = idx + 32
                    continue 
                mem[_1040 + 68] = mem[_1040 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1040 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _1058 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1058] = 26
                mem[_1058 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1058 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1105 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1105] = 26
                        mem[_1105 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 1000000 * 10^18:
                            _1178 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1178] = 26
                            mem[_1178 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1530 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1530] = 26
                                mem[_1530 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1530 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1602 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1602] = 26
                                mem[_1602 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1602 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1000000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    _1283 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1283] = 26
                                    mem[_1283 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1283 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1333 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1333] = 26
                                    mem[_1333 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1333 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _1269 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1269] = 30
                                mem[_1269 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > 1000000 * 10^18:
                                    _1309 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1309 + 68] = mem[idx + _1269 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1309 + 68] = mem[_1309 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1309 + -mem[64] + 100
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1676] = 26
                                    mem[_1676 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1676 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1749 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1749] = 26
                                    mem[_1749 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1749 + 32]
                                        idx = idx + 32
                                        continue 
                    else:
                        if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1111 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1111] = 26
                        mem[_1111 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                            _1194 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1194] = 26
                            mem[_1194 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1599 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1599] = 26
                                mem[_1599 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1599 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1672 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1672] = 26
                                mem[_1672 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1672 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1000000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    _1330 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1330] = 26
                                    mem[_1330 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1330 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1380 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1380] = 26
                                    mem[_1380 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1380 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _1308 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1308] = 30
                                mem[_1308 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > 1000000 * 10^18:
                                    _1356 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1356 + 68] = mem[idx + _1308 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1356 + 68] = mem[_1356 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1356 + -mem[64] + 100
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1743 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1743] = 26
                                    mem[_1743 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1743 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1814 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1814] = 26
                                    mem[_1814 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1814 + 32]
                                        idx = idx + 32
                                        continue 
            else:
                if (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8) / block.number - poolInfo[idx].field_512 != sub_bf5294c8:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8):
                    _1064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1064] = 26
                    mem[_1064 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1064 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _1110 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1110] = 26
                            mem[_1110 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 1000000 * 10^18:
                                _1193 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1193] = 26
                                mem[_1193 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1594 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1594] = 26
                                    mem[_1594 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1594 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1666 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1666] = 26
                                    mem[_1666 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1666 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        _1327 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1327] = 26
                                        mem[_1327 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1327 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1376 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1376] = 26
                                        mem[_1376 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1376 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1305 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1305] = 30
                                    mem[_1305 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1353 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1353 + 68] = mem[idx + _1305 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1353 + 68] = mem[_1353 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1353 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1737 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1737] = 26
                                        mem[_1737 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1737 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1806 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1806] = 26
                                        mem[_1806 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1806 + 32]
                                            idx = idx + 32
                                            continue 
                        else:
                            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1119 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1119] = 26
                            mem[_1119 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                _1217 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1217] = 26
                                mem[_1217 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1663 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1663] = 26
                                    mem[_1663 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1663 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1733 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1733] = 26
                                    mem[_1733 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1733 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        _1373 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1373] = 26
                                        mem[_1373 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1373 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1432 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1432] = 26
                                        mem[_1432 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1432 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1352 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1352] = 30
                                    mem[_1352 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1410 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1410 + 68] = mem[idx + _1352 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1410 + 68] = mem[_1410 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1410 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1800 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1800] = 26
                                        mem[_1800 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1800 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1873 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1873] = 26
                                        mem[_1873 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1873 + 32]
                                            idx = idx + 32
                                            continue 
                else:
                    if (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 26
                    mem[_1069 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1069 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                            _1118 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1118] = 26
                            mem[_1118 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 1000000 * 10^18:
                                _1216 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1216] = 26
                                mem[_1216 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1658 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1658] = 26
                                    mem[_1658 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1658 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1727 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1727] = 26
                                    mem[_1727 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1727 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1370 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1370] = 26
                                        mem[_1370 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1370 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1428 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1428] = 26
                                        mem[_1428 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1428 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1349 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1349] = 30
                                    mem[_1349 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1407 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1407 + 68] = mem[idx + _1349 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1407 + 68] = mem[_1407 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1407 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1794 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1794] = 26
                                        mem[_1794 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1794 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1865 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1865] = 26
                                        mem[_1865 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1865 + 32]
                                            idx = idx + 32
                                            continue 
                        else:
                            if 105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 105:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1124 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1124] = 26
                            mem[_1124 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                _1241 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1241] = 26
                                mem[_1241 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1724 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1724] = 26
                                    mem[_1724 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1724 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1790 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1790] = 26
                                    mem[_1790 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1790 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1425 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1425] = 26
                                        mem[_1425 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1425 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1496 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1496] = 26
                                        mem[_1496 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1496 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1406 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1406] = 30
                                    mem[_1406 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1470 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1470 + 68] = mem[idx + _1406 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1470 + 68] = mem[_1470 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1470 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1859 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1859] = 26
                                        mem[_1859 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1859 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1929 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1929] = 26
                                        mem[_1929 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1929 + 32]
                                            idx = idx + 32
                                            continue 
        revert with 0, 'SafeMath: division by zero'
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
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
        require ext_code.size(sub_c8e63cd2Address)
        staticcall sub_c8e63cd2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 1000000 * 10^18:
            _1057 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1057] = 26
            mem[_1057 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1057 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1090 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1090] = 26
                    mem[_1090 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] <= 1000000 * 10^18:
                        _1147 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1147] = 26
                        mem[_1147 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1355 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1355] = 26
                            mem[_1355 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1355 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1410 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1410] = 26
                            mem[_1410 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1410 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 1000000 * 10^18:
                            if not 0 / totalAllocPoint:
                                _1209 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1209] = 26
                                mem[_1209 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1209 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1233 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1233] = 26
                                mem[_1233 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1233 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1200 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1200] = 30
                            mem[_1200 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 1000000 * 10^18:
                                _1223 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1223 + 68] = mem[idx + _1200 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1223 + 68] = mem[_1223 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1223 + -mem[64] + 100
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1474 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1474] = 26
                                mem[_1474 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1474 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1547 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1547] = 26
                                mem[_1547 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1547 + 32]
                                    idx = idx + 32
                                    continue 
                else:
                    if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1102 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1102] = 26
                    mem[_1102 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_c8e63cd2Address)
                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                        _1161 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1161] = 26
                        mem[_1161 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 20
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(sub_c8e63cd2Address)
                        call sub_c8e63cd2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _1407 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1407] = 26
                            mem[_1407 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1407 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1470 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1470] = 26
                            mem[_1470 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1470 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= 1000000 * 10^18:
                            if not 0 / totalAllocPoint:
                                _1230 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1230] = 26
                                mem[_1230 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1230 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1257 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1257] = 26
                                mem[_1257 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1257 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _1222 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1222] = 30
                            mem[_1222 + 32] = 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] > 1000000 * 10^18:
                                _1246 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1246 + 68] = mem[idx + _1222 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1246 + 68] = mem[_1246 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1246 + -mem[64] + 100
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1541 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1541] = 26
                                mem[_1541 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1541 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1616 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1616] = 26
                                mem[_1616 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1616 + 32]
                                    idx = idx + 32
                                    continue 
        else:
            _1049 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1049] = 30
            mem[_1049 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _1050 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1050 + 68] = mem[idx + _1049 + 32]
                    idx = idx + 32
                    continue 
                mem[_1050 + 68] = mem[_1050 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1050 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _1068 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1068] = 26
                mem[_1068 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1068 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1115 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1115] = 26
                        mem[_1115 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 1000000 * 10^18:
                            _1188 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1188] = 26
                            mem[_1188 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1540 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1540] = 26
                                mem[_1540 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1540 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1612 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1612] = 26
                                mem[_1612 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1612 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1000000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    _1293 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1293] = 26
                                    mem[_1293 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1293 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1343 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1343] = 26
                                    mem[_1343 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1343 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _1279 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1279] = 30
                                mem[_1279 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > 1000000 * 10^18:
                                    _1319 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1319 + 68] = mem[idx + _1279 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1319 + 68] = mem[_1319 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1319 + -mem[64] + 100
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1686 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1686] = 26
                                    mem[_1686 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1686 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1759 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1759] = 26
                                    mem[_1759 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1759 + 32]
                                        idx = idx + 32
                                        continue 
                    else:
                        if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1121 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1121] = 26
                        mem[_1121 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(sub_c8e63cd2Address)
                        staticcall sub_c8e63cd2Address.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                            _1204 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1204] = 26
                            mem[_1204 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 20
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(sub_c8e63cd2Address)
                            call sub_c8e63cd2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                _1609 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1609] = 26
                                mem[_1609 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1609 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1682 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1682] = 26
                                mem[_1682 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    poolInfo[idx].field_512 = block.number
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1682 + 32]
                                    idx = idx + 32
                                    continue 
                        else:
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= 1000000 * 10^18:
                                if not 0 / totalAllocPoint:
                                    _1340 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1340] = 26
                                    mem[_1340 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1340 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1390 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1390] = 26
                                    mem[_1390 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1390 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                _1318 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1318] = 30
                                mem[_1318 + 32] = 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] > 1000000 * 10^18:
                                    _1366 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1366 + 68] = mem[idx + _1318 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1366 + 68] = mem[_1366 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1366 + -mem[64] + 100
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1753 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1753] = 26
                                    mem[_1753 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1753 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1824 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1824] = 26
                                    mem[_1824 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1824 + 32]
                                        idx = idx + 32
                                        continue 
            else:
                if (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8) / block.number - poolInfo[idx].field_512 != sub_bf5294c8:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8):
                    _1074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1074] = 26
                    mem[_1074 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1074 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _1120 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1120] = 26
                            mem[_1120 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 1000000 * 10^18:
                                _1203 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1203] = 26
                                mem[_1203 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1604 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1604] = 26
                                    mem[_1604 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1604 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1676 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1676] = 26
                                    mem[_1676 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1676 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        _1337 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1337] = 26
                                        mem[_1337 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1337 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1386 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1386] = 26
                                        mem[_1386 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1386 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1315 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1315] = 30
                                    mem[_1315 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1363 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1363 + 68] = mem[idx + _1315 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1363 + 68] = mem[_1363 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1363 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1747 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1747] = 26
                                        mem[_1747 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1747 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1816 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1816] = 26
                                        mem[_1816 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1816 + 32]
                                            idx = idx + 32
                                            continue 
                        else:
                            if 105 * 0 / totalAllocPoint / 0 / totalAllocPoint != 105:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1129 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1129] = 26
                            mem[_1129 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (105 * 0 / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                _1227 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1227] = 26
                                mem[_1227 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _1673 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1673] = 26
                                    mem[_1673 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1673 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1743 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1743] = 26
                                    mem[_1743 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1743 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not 0 / totalAllocPoint:
                                        _1383 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1383] = 26
                                        mem[_1383 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1383 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1442 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1442] = 26
                                        mem[_1442 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1442 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1362 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1362] = 30
                                    mem[_1362 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1420 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1420 + 68] = mem[idx + _1362 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1420 + 68] = mem[_1420 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1420 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _1810 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1810] = 26
                                        mem[_1810 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1810 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1883 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1883] = 26
                                        mem[_1883 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1883 + 32]
                                            idx = idx + 32
                                            continue 
                else:
                    if (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / (block.number * sub_bf5294c8) - (poolInfo[idx].field_512 * sub_bf5294c8) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1079] = 26
                    mem[_1079 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1079 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                            _1128 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1128] = 26
                            mem[_1128 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 1000000 * 10^18:
                                _1226 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1226] = 26
                                mem[_1226 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1668 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1668] = 26
                                    mem[_1668 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1668 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1737 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1737] = 26
                                    mem[_1737 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1737 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1380 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1380] = 26
                                        mem[_1380 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1380 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1438 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1438] = 26
                                        mem[_1438 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1438 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1359 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1359] = 30
                                    mem[_1359 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1417 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1417 + 68] = mem[idx + _1359 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1417 + 68] = mem[_1417 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1417 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1804 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1804] = 26
                                        mem[_1804 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1804 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1875 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1875] = 26
                                        mem[_1875 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1875 + 32]
                                            idx = idx + 32
                                            continue 
                        else:
                            if 105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 105:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1134 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1134] = 26
                            mem[_1134 + 32] = 'SafeMath: division by zero'
                            require ext_code.size(sub_c8e63cd2Address)
                            staticcall sub_c8e63cd2Address.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if (105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100) + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (105 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 100) + ext_call.return_data[0] <= 1000000 * 10^18:
                                _1251 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1251] = 26
                                mem[_1251 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / 20
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(sub_c8e63cd2Address)
                                call sub_c8e63cd2Address.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args this.address, (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                    _1734 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1734] = 26
                                    mem[_1734 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1734 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1800 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1800] = 26
                                    mem[_1800 + 32] = 'SafeMath: division by zero'
                                    if poolInfo[idx].field_1280:
                                        if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1800 + 32]
                                        idx = idx + 32
                                        continue 
                            else:
                                require ext_code.size(sub_c8e63cd2Address)
                                staticcall sub_c8e63cd2Address.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= 1000000 * 10^18:
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1435 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1435] = 26
                                        mem[_1435 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1435 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1506 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1506] = 26
                                        mem[_1506 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1506 + 32]
                                            idx = idx + 32
                                            continue 
                                else:
                                    require ext_code.size(sub_c8e63cd2Address)
                                    staticcall sub_c8e63cd2Address.0x18160ddd with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    _1416 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1416] = 30
                                    mem[_1416 + 32] = 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] > 1000000 * 10^18:
                                        _1480 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1480 + 68] = mem[idx + _1416 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1480 + 68] = mem[_1480 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1480 + -mem[64] + 100
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = -ext_call.return_data[0] + 1000000 * 10^18
                                    require ext_code.size(sub_c8e63cd2Address)
                                    call sub_c8e63cd2Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), -ext_call.return_data[0] + 1000000 * 10^18
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint:
                                        _1869 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1869] = 26
                                        mem[_1869 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1869 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1939 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1939] = 26
                                        mem[_1939 + 32] = 'SafeMath: division by zero'
                                        if poolInfo[idx].field_1280:
                                            if (10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_bf5294c8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_bf5294c8 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1939 + 32]
                                            idx = idx + 32
                                            continue 
        revert with 0, 'SafeMath: division by zero'
    sub_bf5294c8 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}



}
