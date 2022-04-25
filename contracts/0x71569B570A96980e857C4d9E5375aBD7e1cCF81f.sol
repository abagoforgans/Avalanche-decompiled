contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_7492a94b(?)
#  - deposit(uint256 arg1, uint256 arg2, address arg3)
#
const MAXIMUM_REFERRAL_COMMISSION_RATE = 1000


address owner;
uint256 stor1;
address sub_7a972ea0Address;
address devAddress;
address feeAddress;
uint256 sub_98105e15;
uint256 sub_0db16030;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
uint16 referralCommissionRate; offset 160
address referralAddress;
mapping of uint8 stor12;

function poolLength() payable {
    return poolInfo.length
}

function sub_0db16030(?) payable {
    return sub_0db16030
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
    return feeAddress
}

function sub_7a972ea0(?) payable {
    return sub_7a972ea0Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_98105e15(?) payable {
    return sub_98105e15
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function referralCommissionRate() payable {
    return referralCommissionRate
}

function startTimestamp() payable {
    return startTimestamp
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

function setReferralAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    referralAddress = arg1
    emit SetReferralAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not feeAddress:
        revert with 0, 'nonzero feeAddress!'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not devAddress:
        revert with 0, 'nonzero devAddress!'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg3
    return (arg2 - arg1 / arg3)
}

function updateStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTimestamp <= block.timestamp:
        revert with 0, 'Farm already started'
    startTimestamp = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        poolInfo[idx].field_512 = arg1
        idx = idx + 1
        continue 
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
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x73736574526566657272616c436f6d6d697373696f6e526174653a20696e76616c696420726566657272616c20636f6d6d697373696f6e207261746520626173697320706f696e74,
                    mem[236 len 24]
    referralCommissionRate = arg1
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
}

function add(uint256 arg1, address arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x646164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor12[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTimestamp:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTimestamp
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(sub_7a972ea0Address)
        staticcall sub_7a972ea0Address.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == this.address:
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[arg1].field_256:
                    require ext_code.size(sub_7a972ea0Address)
                    staticcall sub_7a972ea0Address.totalSupply() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 10000 * 10^18:
                        if poolInfo[arg1].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_98105e15 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_98105e15
                        if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_7a972ea0Address)
                            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_7a972ea0Address)
                            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
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
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15
                            if block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 != sub_0db16030:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7a972ea0Address)
                                call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_7a972ea0Address)
                                call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
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
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030
                                if block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_7a972ea0Address)
                                call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddress, block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_7a972ea0Address)
                                call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint
                                    if 10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function sub_80f11767(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
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
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_98105e15 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_98105e15
    if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15
    if block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 != sub_0db16030:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030:
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
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030
    if block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint:
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
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint
    if 10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(sub_7a972ea0Address)
        staticcall sub_7a972ea0Address.0x8da5cb5b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != this.address:
            poolInfo[idx].field_512 = block.timestamp
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
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        require ext_code.size(sub_7a972ea0Address)
        staticcall sub_7a972ea0Address.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10000 * 10^18:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            _153 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_153 + idx + 68] = mem[_152 + idx + 32]
                idx = idx + 32
                continue 
            mem[_153 + 68] = mem[_153 + 70 len 30]
            revert with memory
              from mem[64]
               len _153 + -mem[64] + 100
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 26
        mem[_157 + 32] = 'SafeMath: division by zero'
        if sub_98105e15 <= 0:
            _161 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_161 + idx + 68] = mem[_157 + idx + 32]
                idx = idx + 32
                continue 
            mem[_161 + 68] = mem[_161 + 74 len 26]
            revert with memory
              from mem[64]
               len _161 + -mem[64] + 100
        require sub_98105e15
        if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15:
            _170 = mem[64]
            mem[64] = mem[64] + 64
            mem[_170] = 26
            mem[_170 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _174 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_174 + idx + 68] = mem[_170 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_174 + 68] = mem[_174 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _174 + -mem[64] + 100
            require totalAllocPoint
            _188 = mem[64]
            mem[64] = mem[64] + 64
            mem[_188] = 26
            mem[_188 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _213 = mem[64]
                mem[64] = mem[64] + 64
                mem[_213] = 26
                mem[_213 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _218 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_218 + idx + 68] = mem[_213 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_218 + 68] = mem[_218 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _218 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _217 = mem[64]
            mem[64] = mem[64] + 64
            mem[_217] = 26
            mem[_217 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _228 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_228 + idx + 68] = mem[_217 + idx + 32]
                idx = idx + 32
                continue 
            mem[_228 + 68] = mem[_228 + 74 len 26]
            revert with memory
              from mem[64]
               len _228 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512 / sub_98105e15
        if block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 != sub_0db16030:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030:
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 26
            mem[_173 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_178 + idx + 68] = mem[_173 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require totalAllocPoint
            _193 = mem[64]
            mem[64] = mem[64] + 64
            mem[_193] = 26
            mem[_193 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = 26
                mem[_216 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _225 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_225 + idx + 68] = mem[_216 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_225 + 68] = mem[_225 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _225 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _224 = mem[64]
            mem[64] = mem[64] + 64
            mem[_224] = 26
            mem[_224 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _238 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_238 + idx + 68] = mem[_224 + idx + 32]
                idx = idx + 32
                continue 
            mem[_238 + 68] = mem[_238 + 74 len 26]
            revert with memory
              from mem[64]
               len _238 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030
        if block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _177 = mem[64]
        mem[64] = mem[64] + 64
        mem[_177] = 26
        mem[_177 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_184 + idx + 68] = mem[_177 + idx + 32]
                idx = idx + 32
                continue 
            mem[_184 + 68] = mem[_184 + 74 len 26]
            revert with memory
              from mem[64]
               len _184 + -mem[64] + 100
        require totalAllocPoint
        _197 = mem[64]
        mem[64] = mem[64] + 64
        mem[_197] = 26
        mem[_197 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_7a972ea0Address)
        call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args devAddress, block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint
        require ext_code.size(sub_7a972ea0Address)
        call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint:
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 26
            mem[_223 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _235 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_235 + idx + 68] = mem[_223 + idx + 32]
                idx = idx + 32
                continue 
            mem[_235 + 68] = mem[_235 + 74 len 26]
            revert with memory
              from mem[64]
               len _235 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint
        if 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _234 = mem[64]
        mem[64] = mem[64] + 64
        mem[_234] = 26
        mem[_234 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _250 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_250 + idx + 68] = mem[_234 + idx + 32]
            idx = idx + 32
            continue 
        mem[_250 + 68] = mem[_250 + 74 len 26]
        revert with memory
          from mem[64]
           len _250 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(sub_7a972ea0Address)
        staticcall sub_7a972ea0Address.0x8da5cb5b with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != this.address:
            poolInfo[idx].field_512 = block.timestamp
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
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        require ext_code.size(sub_7a972ea0Address)
        staticcall sub_7a972ea0Address.totalSupply() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10000 * 10^18:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[64] = mem[64] + 64
        mem[_158] = 30
        mem[_158 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            _159 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_159 + idx + 68] = mem[_158 + idx + 32]
                idx = idx + 32
                continue 
            mem[_159 + 68] = mem[_159 + 70 len 30]
            revert with memory
              from mem[64]
               len _159 + -mem[64] + 100
        _163 = mem[64]
        mem[64] = mem[64] + 64
        mem[_163] = 26
        mem[_163 + 32] = 'SafeMath: division by zero'
        if sub_98105e15 <= 0:
            _167 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_167 + idx + 68] = mem[_163 + idx + 32]
                idx = idx + 32
                continue 
            mem[_167 + 68] = mem[_167 + 74 len 26]
            revert with memory
              from mem[64]
               len _167 + -mem[64] + 100
        require sub_98105e15
        if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15:
            _176 = mem[64]
            mem[64] = mem[64] + 64
            mem[_176] = 26
            mem[_176 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_180 + idx + 68] = mem[_176 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            require totalAllocPoint
            _194 = mem[64]
            mem[64] = mem[64] + 64
            mem[_194] = 26
            mem[_194 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_219] = 26
                mem[_219 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _224 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_224 + idx + 68] = mem[_219 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_224 + 68] = mem[_224 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _224 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = 26
            mem[_223 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _234 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_234 + idx + 68] = mem[_223 + idx + 32]
                idx = idx + 32
                continue 
            mem[_234 + 68] = mem[_234 + 74 len 26]
            revert with memory
              from mem[64]
               len _234 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512 / sub_98105e15
        if block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 != sub_0db16030:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030:
            _179 = mem[64]
            mem[64] = mem[64] + 64
            mem[_179] = 26
            mem[_179 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _184 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_184 + idx + 68] = mem[_179 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_184 + 68] = mem[_184 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _184 + -mem[64] + 100
            require totalAllocPoint
            _199 = mem[64]
            mem[64] = mem[64] + 64
            mem[_199] = 26
            mem[_199 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args devAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_7a972ea0Address)
            call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _222 = mem[64]
                mem[64] = mem[64] + 64
                mem[_222] = 26
                mem[_222 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_231 + idx + 68] = mem[_222 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_231 + 68] = mem[_231 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _231 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _230 = mem[64]
            mem[64] = mem[64] + 64
            mem[_230] = 26
            mem[_230 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _244 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_244 + idx + 68] = mem[_230 + idx + 32]
                idx = idx + 32
                continue 
            mem[_244 + 68] = mem[_244 + 74 len 26]
            revert with memory
              from mem[64]
               len _244 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030
        if block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _183 = mem[64]
        mem[64] = mem[64] + 64
        mem[_183] = 26
        mem[_183 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _190 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_190 + idx + 68] = mem[_183 + idx + 32]
                idx = idx + 32
                continue 
            mem[_190 + 68] = mem[_190 + 74 len 26]
            revert with memory
              from mem[64]
               len _190 + -mem[64] + 100
        require totalAllocPoint
        _203 = mem[64]
        mem[64] = mem[64] + 64
        mem[_203] = 26
        mem[_203 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_7a972ea0Address)
        call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args devAddress, block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint
        require ext_code.size(sub_7a972ea0Address)
        call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(this.address), block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint:
            _229 = mem[64]
            mem[64] = mem[64] + 64
            mem[_229] = 26
            mem[_229 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _241 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_241 + idx + 68] = mem[_229 + idx + 32]
                idx = idx + 32
                continue 
            mem[_241 + 68] = mem[_241 + 74 len 26]
            revert with memory
              from mem[64]
               len _241 + -mem[64] + 100
        require block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint
        if 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _240 = mem[64]
        mem[64] = mem[64] + 64
        mem[_240] = 26
        mem[_240 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[idx].field_256 / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _256 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_256 + idx + 68] = mem[_240 + idx + 32]
            idx = idx + 32
            continue 
        mem[_256 + 68] = mem[_256 + 74 len 26]
        revert with memory
          from mem[64]
           len _256 + -mem[64] + 100
    sub_0db16030 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function sub_5bbdf38e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require uint16(cd[((32 * idx) + cd[4] + 36)]) < poolInfo.length
        mem[0] = 7
        if block.timestamp > poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512:
            require ext_code.size(sub_7a972ea0Address)
            staticcall sub_7a972ea0Address.0x8da5cb5b with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) == this.address:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_0)
                staticcall poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256:
                        require ext_code.size(sub_7a972ea0Address)
                        staticcall sub_7a972ea0Address.totalSupply() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 10000 * 10^18:
                            _171 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_171] = 30
                            mem[_171 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 > block.timestamp:
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
                            _177 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_177] = 26
                            mem[_177 + 32] = 'SafeMath: division by zero'
                            if sub_98105e15 <= 0:
                                _181 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_181 + idx + 68] = mem[_177 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_181 + 68] = mem[_181 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _181 + -mem[64] + 100
                            require sub_98105e15
                            if not block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15:
                                _190 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_190] = 26
                                mem[_190 + 32] = 'SafeMath: division by zero'
                                if totalAllocPoint <= 0:
                                    _194 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_194 + idx + 68] = mem[_190 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_194 + 68] = mem[_194 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _194 + -mem[64] + 100
                                require totalAllocPoint
                                _208 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_208] = 26
                                mem[_208 + 32] = 'SafeMath: division by zero'
                                require ext_code.size(sub_7a972ea0Address)
                                call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(sub_7a972ea0Address)
                                call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    _233 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_233] = 26
                                    mem[_233 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
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
                                    require ext_call.return_data[0]
                                    if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (0 / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _237 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_237] = 26
                                    mem[_237 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0] <= 0:
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
                                    require ext_call.return_data[0]
                                    if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15
                                if block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 / block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 != sub_0db16030:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030:
                                    _193 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_193] = 26
                                    mem[_193 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _198 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_198 + idx + 68] = mem[_193 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_198 + 68] = mem[_198 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _198 + -mem[64] + 100
                                    require totalAllocPoint
                                    _213 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_213] = 26
                                    mem[_213 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_7a972ea0Address)
                                    call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(sub_7a972ea0Address)
                                    call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        _236 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_236] = 26
                                        mem[_236 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
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
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (0 / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _244 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_244] = 26
                                        mem[_244 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _258 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_258 + idx + 68] = mem[_244 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_258 + 68] = mem[_258 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _258 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030
                                    if block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 != poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _197 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_197] = 26
                                    mem[_197 + 32] = 'SafeMath: division by zero'
                                    if totalAllocPoint <= 0:
                                        _204 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_204 + idx + 68] = mem[_197 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_204 + 68] = mem[_204 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _204 + -mem[64] + 100
                                    require totalAllocPoint
                                    _217 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_217] = 26
                                    mem[_217 + 32] = 'SafeMath: division by zero'
                                    require ext_code.size(sub_7a972ea0Address)
                                    call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args devAddress, block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint
                                    require ext_code.size(sub_7a972ea0Address)
                                    call sub_7a972ea0Address.mint(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(this.address), block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint:
                                        _243 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_243] = 26
                                        mem[_243 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _255 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_255 + idx + 68] = mem[_243 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_255 + 68] = mem[_255 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _255 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (0 / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint
                                        if 10^18 * block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint / block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _254 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_254] = 26
                                        mem[_254 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0] <= 0:
                                            _270 = mem[64]
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            idx = 0
                                            while idx < 26:
                                                mem[_270 + idx + 68] = mem[_254 + idx + 32]
                                                idx = idx + 32
                                                continue 
                                            mem[_270 + 68] = mem[_270 + 74 len 26]
                                            revert with memory
                                              from mem[64]
                                               len _270 + -mem[64] + 100
                                        require ext_call.return_data[0]
                                        if poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 + (10^18 * block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_768 += 10^18 * block.timestamp - poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 / sub_98105e15 * sub_0db16030 * poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 / totalAllocPoint / ext_call.return_data[0]
            poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_512 = block.timestamp
        require idx < ('cd', 4).length
        require uint16(cd[((32 * idx) + cd[4] + 36)]) < poolInfo.length
        mem[0] = 7
        poolInfo[uint16(cd[((32 * idx) + cd[4] + 36)])].field_256 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require uint16(cd[((32 * idx) + cd[36] + 36)]) < poolInfo.length
        mem[0] = 7
        require idx < ('cd', 68).length
        poolInfo[uint16(cd[((32 * idx) + cd[36] + 36)])].field_256 = cd[((32 * idx) + cd[68] + 36)]
        idx = idx + 1
        continue 
}



}
