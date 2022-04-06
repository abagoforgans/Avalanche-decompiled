contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 500

const BURN_ADDRESS = 57005


address owner;
uint256 stor1;
address stormAddress;
address devAddress;
uint32 stor4;
address feeAddress;
uint256 stor4;
uint256 stormPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint16 referralCommissionRate; offset 160
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
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return address(feeAddress)
}

function startBlock() payable {
    return startBlock
}

function Storm() payable {
    return stormAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function StormPerBlock() payable {
    return stormPerBlock
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'non-zero'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'non-zero'
    address(feeAddress) = arg1
    emit SetFeeAddress(msg.sender, arg1);
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
    emit SetReferralCommissionRate(arg1);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
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
    emit Set(arg3, arg1, arg2);
}

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x7363616e6e6f74206368616e676520737461727420626c6f636b206966206661726d2068617320616c726561647920737461727465,
                    mem[217 len 11]
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe63616e6e6f742073657420737461727420626c6f636b20696e2074686520706173,
                    mem[198 len 30]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
    startBlock = arg1
    emit UpdateStartBlock(startBlock);
}

function add(uint256 arg1, address arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x746164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
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
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    emit Add(arg3, arg1, arg2);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if not userInfo[arg1][address(msg.sender)].field_0:
        userInfo[arg1][address(msg.sender)].field_0 = 0
        userInfo[arg1][address(msg.sender)].field_256 = 0
        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), 0
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), 0) << 256, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
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
        if 0 > userInfo[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, userInfo[arg1][address(msg.sender)].field_32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userInfo[arg1][address(msg.sender)].field_0, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 585]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        require userInfo[arg1][address(msg.sender)].field_0
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg1][address(msg.sender)].field_0 = 0
        userInfo[arg1][address(msg.sender)].field_256 = 0
        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000) >> 32
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000)) >> 32
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 664 len 22]
        else:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 553 len 64] = 0, msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000)) >> 32
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args userInfo[arg1][address(msg.sender)].field_0 - (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1024 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 585]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
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
                    require ext_code.size(stormAddress)
                    call stormAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stormAddress)
                    call stormAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        require ext_code.size(stormAddress)
                        call stormAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args 57005, 0
                    else:
                        require 0 / totalAllocPoint
                        if 20 * 0 / totalAllocPoint / 0 / totalAllocPoint != 20:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        require ext_code.size(stormAddress)
                        call stormAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args 57005, 20 * 0 / totalAllocPoint / 1000
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
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock) / block.number - poolInfo[arg1].field_512 != stormPerBlock:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(stormAddress)
                        call stormAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stormAddress)
                        call stormAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            require ext_code.size(stormAddress)
                            call stormAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, 0
                        else:
                            require 0 / totalAllocPoint
                            if 20 * 0 / totalAllocPoint / 0 / totalAllocPoint != 20:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            require ext_code.size(stormAddress)
                            call stormAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, 20 * 0 / totalAllocPoint / 1000
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
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock)
                        if (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(stormAddress)
                        call stormAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stormAddress)
                        call stormAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(stormAddress)
                            call stormAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, 0
                        else:
                            require (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 20 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 20:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            require ext_code.size(stormAddress)
                            call stormAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args 57005, 20 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingStorm(uint256 arg1, address arg2) payable {
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock) / block.number - poolInfo[arg1].field_512 != stormPerBlock:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock):
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
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock)
    if (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / (block.number * stormPerBlock) - (poolInfo[arg1].field_512 * stormPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * stormPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * stormPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
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
        _218 = mem[64]
        mem[64] = mem[64] + 64
        mem[_218] = 30
        mem[_218 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _219 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_219 + idx + 68] = mem[_218 + idx + 32]
                idx = idx + 32
                continue 
            mem[_219 + 68] = mem[_219 + 70 len 30]
            revert with memory
              from mem[64]
               len _219 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _228 = mem[64]
            mem[64] = mem[64] + 64
            mem[_228] = 26
            mem[_228 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _232 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_232 + idx + 68] = mem[_228 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_232 + 68] = mem[_232 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _232 + -mem[64] + 100
            require totalAllocPoint
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 57005
                mem[mem[64] + 36] = 0
                require ext_code.size(stormAddress)
                call stormAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_303 + idx + 68] = mem[_295 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_303 + 68] = mem[_303 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _303 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_302] = 26
                mem[_302 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _320 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_320 + idx + 68] = mem[_302 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_320 + 68] = mem[_320 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _320 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 20 * 0 / totalAllocPoint / 0 / totalAllocPoint != 20:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 26
            mem[_275 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = 20 * 0 / totalAllocPoint / 1000
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 20 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_301] = 26
                mem[_301 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_317 + idx + 68] = mem[_301 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_317 + 68] = mem[_317 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _317 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _316 = mem[64]
            mem[64] = mem[64] + 64
            mem[_316] = 26
            mem[_316 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _341 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_341 + idx + 68] = mem[_316 + idx + 32]
                idx = idx + 32
                continue 
            mem[_341 + 68] = mem[_341 + 74 len 26]
            revert with memory
              from mem[64]
               len _341 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock) / block.number - poolInfo[idx].field_512 != stormPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock):
            _231 = mem[64]
            mem[64] = mem[64] + 64
            mem[_231] = 26
            mem[_231 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_236 + idx + 68] = mem[_231 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 68] = mem[_236 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            require totalAllocPoint
            _251 = mem[64]
            mem[64] = mem[64] + 64
            mem[_251] = 26
            mem[_251 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_274] = 26
                mem[_274 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 57005
                mem[mem[64] + 36] = 0
                require ext_code.size(stormAddress)
                call stormAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0
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
                    _313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_313 + idx + 68] = mem[_300 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_313 + 68] = mem[_313 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _313 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_312] = 26
                mem[_312 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _337 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_337 + idx + 68] = mem[_312 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_337 + 68] = mem[_337 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _337 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 20 * 0 / totalAllocPoint / 0 / totalAllocPoint != 20:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 26
            mem[_279 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = 20 * 0 / totalAllocPoint / 1000
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 20 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_311] = 26
                mem[_311 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _334 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_334 + idx + 68] = mem[_311 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_334 + 68] = mem[_334 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _334 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 26
            mem[_333 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _363 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_363 + idx + 68] = mem[_333 + idx + 32]
                idx = idx + 32
                continue 
            mem[_363 + 68] = mem[_363 + 74 len 26]
            revert with memory
              from mem[64]
               len _363 + -mem[64] + 100
        require (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock)
        if (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _235 = mem[64]
        mem[64] = mem[64] + 64
        mem[_235] = 26
        mem[_235 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _242 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_242 + idx + 68] = mem[_235 + idx + 32]
                idx = idx + 32
                continue 
            mem[_242 + 68] = mem[_242 + 74 len 26]
            revert with memory
              from mem[64]
               len _242 + -mem[64] + 100
        require totalAllocPoint
        _255 = mem[64]
        mem[64] = mem[64] + 64
        mem[_255] = 26
        mem[_255 + 32] = 'SafeMath: division by zero'
        require ext_code.size(stormAddress)
        call stormAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stormAddress)
        call stormAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _278 = mem[64]
            mem[64] = mem[64] + 64
            mem[_278] = 26
            mem[_278 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = 0
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
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
                _330 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_330 + idx + 68] = mem[_310 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_330 + 68] = mem[_330 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _330 + -mem[64] + 100
            require (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _329 = mem[64]
            mem[64] = mem[64] + 64
            mem[_329] = 26
            mem[_329 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _359 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_359 + idx + 68] = mem[_329 + idx + 32]
                idx = idx + 32
                continue 
            mem[_359 + 68] = mem[_359 + 74 len 26]
            revert with memory
              from mem[64]
               len _359 + -mem[64] + 100
        require (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 20 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 20:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _282 = mem[64]
        mem[64] = mem[64] + 64
        mem[_282] = 26
        mem[_282 + 32] = 'SafeMath: division by zero'
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 57005
        mem[mem[64] + 36] = 20 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
        require ext_code.size(stormAddress)
        call stormAddress.0x40c10f19 with:
             gas gas_remaining wei
            args 57005, 20 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 26
            mem[_328 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _356 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_356 + idx + 68] = mem[_328 + idx + 32]
                idx = idx + 32
                continue 
            mem[_356 + 68] = mem[_356 + 74 len 26]
            revert with memory
              from mem[64]
               len _356 + -mem[64] + 100
        require (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _355 = mem[64]
        mem[64] = mem[64] + 64
        mem[_355] = 26
        mem[_355 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _386 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_386 + idx + 68] = mem[_355 + idx + 32]
            idx = idx + 32
            continue 
        mem[_386 + 68] = mem[_386 + 74 len 26]
        revert with memory
          from mem[64]
           len _386 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 2 * 10^17:
        revert with 0, 'Too high'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
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
        _226 = mem[64]
        mem[64] = mem[64] + 64
        mem[_226] = 30
        mem[_226 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _227 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_227 + idx + 68] = mem[_226 + idx + 32]
                idx = idx + 32
                continue 
            mem[_227 + 68] = mem[_227 + 70 len 30]
            revert with memory
              from mem[64]
               len _227 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 26
            mem[_236 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_240 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_240 + 68] = mem[_240 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _240 + -mem[64] + 100
            require totalAllocPoint
            _254 = mem[64]
            mem[64] = mem[64] + 64
            mem[_254] = 26
            mem[_254 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _279 = mem[64]
                mem[64] = mem[64] + 64
                mem[_279] = 26
                mem[_279 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 57005
                mem[mem[64] + 36] = 0
                require ext_code.size(stormAddress)
                call stormAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0
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
                    _311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_311 + idx + 68] = mem[_303 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_311 + 68] = mem[_311 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _311 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_328 + idx + 68] = mem[_310 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_328 + 68] = mem[_328 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _328 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 20 * 0 / totalAllocPoint / 0 / totalAllocPoint != 20:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 26
            mem[_283 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = 20 * 0 / totalAllocPoint / 1000
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 20 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_309] = 26
                mem[_309 + 32] = 'SafeMath: division by zero'
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
                    mem[_325 + idx + 68] = mem[_309 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_325 + 68] = mem[_325 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _325 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _324 = mem[64]
            mem[64] = mem[64] + 64
            mem[_324] = 26
            mem[_324 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _349 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_349 + idx + 68] = mem[_324 + idx + 32]
                idx = idx + 32
                continue 
            mem[_349 + 68] = mem[_349 + 74 len 26]
            revert with memory
              from mem[64]
               len _349 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock) / block.number - poolInfo[idx].field_512 != stormPerBlock:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock):
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 26
            mem[_239 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
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
            require totalAllocPoint
            _259 = mem[64]
            mem[64] = mem[64] + 64
            mem[_259] = 26
            mem[_259 + 32] = 'SafeMath: division by zero'
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_282] = 26
                mem[_282 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 57005
                mem[mem[64] + 36] = 0
                require ext_code.size(stormAddress)
                call stormAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args 57005, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _308 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_308] = 26
                    mem[_308 + 32] = 'SafeMath: division by zero'
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
                        mem[_321 + idx + 68] = mem[_308 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_321 + 68] = mem[_321 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _321 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _345 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_345 + idx + 68] = mem[_320 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_345 + 68] = mem[_345 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _345 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 20 * 0 / totalAllocPoint / 0 / totalAllocPoint != 20:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _287 = mem[64]
            mem[64] = mem[64] + 64
            mem[_287] = 26
            mem[_287 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = 20 * 0 / totalAllocPoint / 1000
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 20 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_319] = 26
                mem[_319 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _342 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_342 + idx + 68] = mem[_319 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_342 + 68] = mem[_342 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _342 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 26
            mem[_341 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _371 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_371 + idx + 68] = mem[_341 + idx + 32]
                idx = idx + 32
                continue 
            mem[_371 + 68] = mem[_371 + 74 len 26]
            revert with memory
              from mem[64]
               len _371 + -mem[64] + 100
        require (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock)
        if (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / (block.number * stormPerBlock) - (poolInfo[idx].field_512 * stormPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _243 = mem[64]
        mem[64] = mem[64] + 64
        mem[_243] = 26
        mem[_243 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _250 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_250 + idx + 68] = mem[_243 + idx + 32]
                idx = idx + 32
                continue 
            mem[_250 + 68] = mem[_250 + 74 len 26]
            revert with memory
              from mem[64]
               len _250 + -mem[64] + 100
        require totalAllocPoint
        _263 = mem[64]
        mem[64] = mem[64] + 64
        mem[_263] = 26
        mem[_263 + 32] = 'SafeMath: division by zero'
        require ext_code.size(stormAddress)
        call stormAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stormAddress)
        call stormAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _286 = mem[64]
            mem[64] = mem[64] + 64
            mem[_286] = 26
            mem[_286 + 32] = 'SafeMath: division by zero'
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 57005
            mem[mem[64] + 36] = 0
            require ext_code.size(stormAddress)
            call stormAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args 57005, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _318 = mem[64]
                mem[64] = mem[64] + 64
                mem[_318] = 26
                mem[_318 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _338 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_338 + idx + 68] = mem[_318 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_338 + 68] = mem[_338 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _338 + -mem[64] + 100
            require (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337] = 26
            mem[_337 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _367 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_367 + idx + 68] = mem[_337 + idx + 32]
                idx = idx + 32
                continue 
            mem[_367 + 68] = mem[_367 + 74 len 26]
            revert with memory
              from mem[64]
               len _367 + -mem[64] + 100
        require (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 20 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 20:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _290 = mem[64]
        mem[64] = mem[64] + 64
        mem[_290] = 26
        mem[_290 + 32] = 'SafeMath: division by zero'
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 57005
        mem[mem[64] + 36] = 20 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
        require ext_code.size(stormAddress)
        call stormAddress.0x40c10f19 with:
             gas gas_remaining wei
            args 57005, 20 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_336] = 26
            mem[_336 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _364 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_364 + idx + 68] = mem[_336 + idx + 32]
                idx = idx + 32
                continue 
            mem[_364 + 68] = mem[_364 + 74 len 26]
            revert with memory
              from mem[64]
               len _364 + -mem[64] + 100
        require (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _363 = mem[64]
        mem[64] = mem[64] + 64
        mem[_363] = 26
        mem[_363 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * (block.number * stormPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * stormPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _394 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_394 + idx + 68] = mem[_363 + idx + 32]
            idx = idx + 32
            continue 
        mem[_394 + 68] = mem[_394 + 74 len 26]
        revert with memory
          from mem[64]
           len _394 + -mem[64] + 100
    stormPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}



}
