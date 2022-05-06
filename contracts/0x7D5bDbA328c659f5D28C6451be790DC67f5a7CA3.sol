contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - withdraw(uint256 arg1)
#  - harvest()
#  - beforeDeposit()
#  - pause()
#  - managerHarvest()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const INTEREST_RATE_MODE = 2

const BORROW_DEPTH_MAX = 10

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
address vaultAddress;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address wantAddress;
address outputAddress;
address nativeAddress;
address stor12;
address stor13;
address stor14;
array of struct rewards;
address dataProviderAddress;
uint32 stor17;
address lendingPoolAddress;
uint256 stor17;
address feeDistributionAddress;
address incentivesControllerAddress;
array of struct outputToNativeRoute;
uint8 harvestOnDeposit;
uint256 lastHarvest;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;

function borrowRateMax() payable {
    return borrowRateMax
}

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function minLeverage() payable {
    return minLeverage
}

function feeDistribution() payable {
    return feeDistributionAddress
}

function unirouter() payable {
    return unirouterAddress
}

function paused() payable {
    return bool(stor0)
}

function reserves() payable {
    return reserves
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function borrowDepth() payable {
    return borrowDepth
}

function lendingPool() payable {
    return address(lendingPoolAddress)
}

function keeper() payable {
    return keeperAddress
}

function incentivesController() payable {
    return incentivesControllerAddress
}

function dataProvider() payable {
    return dataProviderAddress
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function borrowRate() payable {
    return borrowRate
}

function beefyFee() payable {
    return beefyFee
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewards.length
    return rewards[arg1].field_0, rewards[arg1].field_256, rewards[arg1].field_512
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_20690a63(?) payable {
    return stor12, stor13, stor14
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1):
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function availableWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - reserves)
}

function userReserves() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    return ext_call.return_data[0], ext_call.return_data[64]
}

function userAccountData() payable {
    require ext_code.size(address(lendingPoolAddress))
    staticcall address(lendingPoolAddress).getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function balanceOfPool() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if ext_call.return_data[64] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - ext_call.return_data[64])
}

function balanceOf() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if ext_call.return_data[64] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * ext_call.return_data[0]) - ext_call.return_data[64])
}

function outputToNative() payable {
    mem[64] = (32 * outputToNativeRoute.length) + 128
    mem[96] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        mem[(32 * outputToNativeRoute.length) + 128] = 32
        mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
        idx = 0
        s = 128
        t = (32 * outputToNativeRoute.length) + 192
        while idx < outputToNativeRoute.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * outputToNativeRoute.length) + 128
           len (96 * outputToNativeRoute.length) + 64
    mem[128] = address(outputToNativeRoute.field_0)
    idx = 128
    s = 0
    while (32 * outputToNativeRoute.length) + 96 > idx:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToNativeRoute.length) + 128] = 32
    mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < outputToNativeRoute.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * outputToNativeRoute.length) + -mem[64] + 192
}

function rewardsAvailable() payable {
    mem[96] = 2
    mem[128] = stor13
    mem[160] = stor14
    mem[192] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[196] = this.address
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0xe5b53498 with:
            gas gas_remaining wei
           args address(this.address), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _24 = mem[192 len 4], address(this.address) << 64
    require mem[192 len 4], address(this.address) << 64 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], address(this.address) << 64 + 223
    _25 = mem[mem[192 len 4], address(this.address) << 64 + 192]
    require mem[mem[192 len 4], address(this.address) << 64 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], address(this.address) << 64 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], address(this.address) << 64 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], address(this.address) << 64 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], address(this.address) << 64 + 192]
    require return_data.size >= _24 + (32 * _25) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _25] = mem[_24 + 224 len 32 * _25]
    require 1 < _25
    require 0 < _25
    if mem[ceil32(return_data.size) + 256] + mem[ceil32(return_data.size) + 224] < mem[ceil32(return_data.size) + 224]:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = mem[ceil32(return_data.size) + 256] + mem[ceil32(return_data.size) + 224] / 2
    return memory
      from mem[64]
       len 32
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > borrowRateMax:
        revert with 0, '!safe'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(lendingPoolAddress))
    call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args wantAddress, ext_call.return_data[0], 2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if not ext_call.return_data[64]:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0] - (0 / arg1), this.address
    else:
        if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 100 * ext_call.return_data[64] / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0] - (100 * ext_call.return_data[64] / arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = ext_call.return_data[0]
}

function callReward() payable {
    mem[96] = 2
    mem[128] = stor13
    mem[160] = stor14
    mem[192] = 0xe5b5349800000000000000000000000000000000000000000000000000000000
    mem[196] = this.address
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0xe5b53498 with:
            gas gas_remaining wei
           args address(this.address), Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _47 = mem[192 len 4], address(this.address) << 64
    require mem[192 len 4], address(this.address) << 64 <= test266151307()
    require return_data.size + 192 > mem[192 len 4], address(this.address) << 64 + 223
    _48 = mem[mem[192 len 4], address(this.address) << 64 + 192]
    require mem[mem[192 len 4], address(this.address) << 64 + 192] <= test266151307()
    require (32 * mem[mem[192 len 4], address(this.address) << 64 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], address(this.address) << 64 + 192]) + 224 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], address(this.address) << 64 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], address(this.address) << 64 + 192]
    require return_data.size >= _47 + (32 * _48) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _48] = mem[_47 + 224 len 32 * _48]
    require 1 < _48
    _84 = mem[ceil32(return_data.size) + 256]
    require 0 < _48
    _86 = mem[ceil32(return_data.size) + 224]
    if mem[ceil32(return_data.size) + 256] + mem[ceil32(return_data.size) + 224] < mem[ceil32(return_data.size) + 224]:
        revert with 0, 'SafeMath: addition overflow'
    if not Mask(255, 1, mem[ceil32(return_data.size) + 256] + mem[ceil32(return_data.size) + 224]):
        return 0
    _89 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _84 + _86 / 2
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = outputToNativeRoute.length
    mem[0] = 20
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < outputToNativeRoute.length:
        mem[t] = stor[s + sha3(mem[0])]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _89 + (32 * outputToNativeRoute.length) + -mem[64] + 96]
    if not ext_call.success:
        return 0
    _115 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    require mem[_115] <= test266151307()
    require _115 + return_data.size > _115 + mem[_115] + 31
    _117 = mem[_115 + mem[_115]]
    require mem[_115 + mem[_115]] <= test266151307()
    require (32 * mem[_115 + mem[_115]]) + 32 >= 0 and _115 + ceil32(return_data.size) + (32 * mem[_115 + mem[_115]]) + 32 <= test266151307()
    mem[64] = _115 + ceil32(return_data.size) + (32 * mem[_115 + mem[_115]]) + 32
    mem[_115 + ceil32(return_data.size)] = _117
    require return_data.size >= _116 + (32 * _117) + 32
    mem[_115 + ceil32(return_data.size) + 32 len 32 * _117] = mem[_115 + _116 + 32 len 32 * _117]
    require _117 - 1 < _117
    if not mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32]:
        return 0
    if 45 * mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32] / mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32] != 45:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 45 * mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32] / 1000:
        return 0
    if callFee * 45 * mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32] / 1000 / 45 * mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32] / 1000 != callFee:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[mem[64]] = callFee * 45 * mem[(32 * _117 - 1) + _115 + ceil32(return_data.size) + 32] / 1000 / 1000
    return memory
      from mem[64]
       len 32
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves:
        if ext_call.return_data[0] - reserves < minLeverage:
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_call.return_data[224] == ext_call.return_data[251 len 5]
            require ext_call.return_data[256] == bool(ext_call.return_data[256])
            if ext_call.return_data[64] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            idx = 0
            s = mem[96] - reserves
            while idx < borrowDepth:
                mem[ceil32(return_data.size) + 96] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = wantAddress
                mem[ceil32(return_data.size) + 132] = s
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args wantAddress, s, address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                if borrowRate * s / s != borrowRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if borrowRate * s / 100:
                    mem[ceil32(return_data.size) + 96] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = wantAddress
                    mem[ceil32(return_data.size) + 132] = borrowRate * s / 100
                    mem[ceil32(return_data.size) + 164] = 2
                    mem[ceil32(return_data.size) + 196] = 0
                    mem[ceil32(return_data.size) + 228] = this.address
                    require ext_code.size(address(lendingPoolAddress))
                    call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                         gas gas_remaining wei
                        args wantAddress, borrowRate * s / 100, 2, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = borrowRate * s / 100
                continue 
            if s + reserves < reserves:
                revert with 0, 'SafeMath: addition overflow'
            reserves += s
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_call.return_data[224] == ext_call.return_data[251 len 5]
            require ext_call.return_data[256] == bool(ext_call.return_data[256])
            if ext_call.return_data[64] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
}

function retireStrat() payable {
    if vaultAddress != msg.sender:
        revert with 0, '!vault'
    mem[100] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args wantAddress, this.address
    mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    s = mem[ceil32(return_data.size) + 160]
    t = mem[ceil32(return_data.size) + 96]
    u = ext_call.return_data[0]
    while u < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args wantAddress, u, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _129 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _134 = mem[_129]
        _136 = mem[_129 + 64]
        require mem[_129 + 224] == mem[_129 + 251 len 5]
        require mem[_129 + 256] == bool(mem[_129 + 256])
        if not mem[_129 + 64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > mem[_129]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_129] - (0 / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _134 - (0 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _136
            t = _134
            u = mem[_187]
            continue 
        if 100 * mem[_129 + 64] / mem[_129 + 64] != 100:
            revert with 0, 'SafeMath: multiplication overflow'
        if borrowRate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require borrowRate
        if 100 * mem[_129 + 64] / borrowRate > mem[_129]:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64] + 36] = mem[_129] - (100 * mem[_129 + 64] / borrowRate)
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, _134 - (100 * _136 / borrowRate), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        s = _136
        t = _134
        u = mem[_188]
        continue 
    if not s:
        if not t:
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _121 = mem[_117]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _121
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _121
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_132] == bool(mem[_132])
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _147 = mem[_142]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _147
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _147
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_155] == bool(mem[_155])
    else:
        mem[mem[64] + 36] = -1
        mem[mem[64] + 68] = 2
        mem[mem[64] + 100] = this.address
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args wantAddress, -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not t:
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _148 = mem[_143]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _148
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _148
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _156 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_156] == bool(mem[_156])
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            reserves = 0
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _157 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _161 = mem[_157]
            mem[mem[64] + 4] = vaultAddress
            mem[mem[64] + 36] = _161
            require ext_code.size(wantAddress)
            call wantAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args vaultAddress, _161
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_169] == bool(mem[_169])
}

function unpause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    mem[100] = this.address
    mem[132] = address(lendingPoolAddress)
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(lendingPoolAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = address(lendingPoolAddress)
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor17)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call wantAddress with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor17), uint32(stor17), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor17) == bool(0, Mask(224, 0, stor17))
            if not 0, Mask(224, 0, stor17):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = unirouterAddress
        require ext_code.size(outputAddress)
        staticcall outputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), unirouterAddress
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = unirouterAddress
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, unirouterAddress, -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call outputAddress with:
           funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, Mask(224, 0, stor17) == bool(0, Mask(224, 0, stor17))
                if not 0, Mask(224, 0, stor17):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if stor0:
                revert with 0, 'Pausable: paused'
            mem[(2 * ceil32(return_data.size)) + 428] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 428] = 32
                mem[(4 * ceil32(return_data.size)) + 460] = 30
                mem[(4 * ceil32(return_data.size)) + 492] = 'SafeMath: subtraction overflow'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 424
                   len (5 * ceil32(return_data.size)) + 100
            if not ext_call.return_data[0] - reserves:
            if ext_call.return_data[0] - reserves >= minLeverage:
                idx = 0
                s = mem[(2 * ceil32(return_data.size)) + 424] - reserves
                while idx < borrowDepth:
                    mem[(4 * ceil32(return_data.size)) + 424] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 428] = wantAddress
                    mem[(4 * ceil32(return_data.size)) + 460] = s
                    mem[(4 * ceil32(return_data.size)) + 492] = this.address
                    mem[(4 * ceil32(return_data.size)) + 524] = 0
                    require ext_code.size(address(lendingPoolAddress))
                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                         gas gas_remaining wei
                        args wantAddress, s, address(this.address), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not s:
                        idx = idx + 1
                        s = 0
                        continue 
                    if borrowRate * s / s != borrowRate:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if borrowRate * s / 100:
                        mem[(4 * ceil32(return_data.size)) + 424] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 428] = wantAddress
                        mem[(4 * ceil32(return_data.size)) + 460] = borrowRate * s / 100
                        mem[(4 * ceil32(return_data.size)) + 492] = 2
                        mem[(4 * ceil32(return_data.size)) + 524] = 0
                        mem[(4 * ceil32(return_data.size)) + 556] = this.address
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                             gas gas_remaining wei
                            args wantAddress, borrowRate * s / 100, 2, 0, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = borrowRate * s / 100
                    continue 
                if s + reserves < reserves:
                    revert with 0, 'SafeMath: addition overflow'
                reserves += s
                require ext_code.size(dataProviderAddress)
                staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args wantAddress, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 288
                require ext_call.return_data[224] == ext_call.return_data[251 len 5]
                require ext_call.return_data[256] == bool(ext_call.return_data[256])
                if ext_call.return_data[64] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
            mem[(4 * ceil32(return_data.size)) + 428] = wantAddress
            mem[(4 * ceil32(return_data.size)) + 460] = this.address
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 428 len (5 * ceil32(return_data.size)) + 64]
            mem[(4 * ceil32(return_data.size)) + 424 len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require ext_call.return_data[224] == ext_call.return_data[251 len 5]
            require ext_call.return_data[256] == bool(ext_call.return_data[256])
            if ext_call.return_data[64] > ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 428] = 32
                mem[(4 * ceil32(return_data.size)) + 460] = 30
                mem[(4 * ceil32(return_data.size)) + 492] = 'SafeMath: subtraction overflow'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 424
                   len (7 * ceil32(return_data.size)) + 100
            mem[(4 * ceil32(return_data.size)) + 428] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) - ext_call.return_data[64] >= ext_call.return_data[0]:
                emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
            mem[(8 * ceil32(return_data.size)) + 424] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 428] = 32
            mem[(8 * ceil32(return_data.size)) + 460] = 27
            mem[(8 * ceil32(return_data.size)) + 492] = 'SafeMath: addition overflow'
            revert with memory
              from (8 * ceil32(return_data.size)) + 424
               len (13 * ceil32(return_data.size)) + 100
        mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
            if not mem[(2 * ceil32(return_data.size)) + 456]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = unirouterAddress
        require ext_code.size(outputAddress)
        staticcall outputAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), unirouterAddress
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = unirouterAddress
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, unirouterAddress, -1, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
        call outputAddress with:
           funct Mask(32, 224, 0, unirouterAddress, -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, unirouterAddress, -1, 0) << 288)
        if return_data.size:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 32
                mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 430] = 32
                    mem[(4 * ceil32(return_data.size)) + 462] = 42
                    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 426
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if stor0:
                mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 430] = 32
                mem[(4 * ceil32(return_data.size)) + 462] = 16
                mem[(4 * ceil32(return_data.size)) + 494] = 0x5061757361626c653a2070617573656400000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 426
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            mem[(4 * ceil32(return_data.size)) + 430] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 30
                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeMath: subtraction overflow'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[(4 * ceil32(return_data.size)) + 426] - reserves
                    while idx < borrowDepth:
                        mem[(8 * ceil32(return_data.size)) + 426] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 430] = wantAddress
                        mem[(8 * ceil32(return_data.size)) + 462] = s
                        mem[(8 * ceil32(return_data.size)) + 494] = this.address
                        mem[(8 * ceil32(return_data.size)) + 526] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[(8 * ceil32(return_data.size)) + 426] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[(8 * ceil32(return_data.size)) + 430] = wantAddress
                            mem[(8 * ceil32(return_data.size)) + 462] = borrowRate * s / 100
                            mem[(8 * ceil32(return_data.size)) + 494] = 2
                            mem[(8 * ceil32(return_data.size)) + 526] = 0
                            mem[(8 * ceil32(return_data.size)) + 558] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
                    require ext_code.size(dataProviderAddress)
                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args wantAddress, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 288
                    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
                    require ext_call.return_data[256] == bool(ext_call.return_data[256])
                    if ext_call.return_data[64] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    mem[(8 * ceil32(return_data.size)) + 430] = wantAddress
                    mem[(8 * ceil32(return_data.size)) + 462] = this.address
                    require ext_code.size(dataProviderAddress)
                    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[(8 * ceil32(return_data.size)) + 430 len (9 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
                    mem[(8 * ceil32(return_data.size)) + 426 len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 288
                    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
                    require ext_call.return_data[256] == bool(ext_call.return_data[256])
                    if ext_call.return_data[64] > ext_call.return_data[0]:
                        mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(8 * ceil32(return_data.size)) + 430] = 32
                        mem[(8 * ceil32(return_data.size)) + 462] = 30
                        mem[(8 * ceil32(return_data.size)) + 494] = 'SafeMath: subtraction overflow'
                        revert with memory
                          from (8 * ceil32(return_data.size)) + 426
                           len (11 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(12 * ceil32(return_data.size)) + 526 len (17 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                ('ge', ('add', ('mask_shl', 255, 0, 1, ('ext_call.return_data', 0, 32)), ('mul', -1, ('ext_call.return_data', 64, 32))), ('ext_call.return_data', 0, 32))
                emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 0, stor17) == bool(0, Mask(224, 0, stor17))
            if not 0, Mask(224, 0, stor17):
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 30
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'SafeMath: subtraction overflow'
        revert with memory
          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
           len (5 * ceil32(return_data.size)) + 100
    if not ext_call.return_data[0] - reserves:
    if ext_call.return_data[0] - reserves >= minLeverage:
        idx = 0
        s = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] - reserves
        while idx < borrowDepth:
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = wantAddress
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = s
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = this.address
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args wantAddress, s, address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if borrowRate * s / s != borrowRate:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate * s / 100:
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = wantAddress
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = borrowRate * s / 100
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 2
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 525] = 0
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                     gas gas_remaining wei
                    args wantAddress, borrowRate * s / 100, 2, 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = borrowRate * s / 100
            continue 
        if s + reserves < reserves:
            revert with 0, 'SafeMath: addition overflow'
        reserves += s
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        if ext_call.return_data[64] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = wantAddress
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = this.address
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429 len (5 * ceil32(return_data.size)) + 64]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[224] == ext_call.return_data[251 len 5]
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    if ext_call.return_data[64] > ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 30
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'SafeMath: subtraction overflow'
        revert with memory
          from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
           len (7 * ceil32(return_data.size)) + 100
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] >= ext_call.return_data[0]:
        emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = 32
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = 27
    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 'SafeMath: addition overflow'
    revert with memory
      from (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425
       len (13 * ceil32(return_data.size)) + 100
}

function rebalance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if arg1 > borrowRateMax:
            revert with 0, '!rate'
        if arg2 > 10:
            revert with 0, '!depth'
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[ceil32(return_data.size) + 160]
        t = mem[ceil32(return_data.size) + 96]
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, u, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _332 = mem[_322]
            _334 = mem[_322 + 64]
            require mem[_322 + 224] == mem[_322 + 251 len 5]
            require mem[_322 + 256] == bool(mem[_322 + 256])
            if not mem[_322 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_322]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_322] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _332 - (0 / borrowRate), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _334
                t = _332
                u = mem[_503]
                continue 
            if 100 * mem[_322 + 64] / mem[_322 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_322 + 64] / borrowRate > mem[_322]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_322] - (100 * mem[_322 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _332 - (100 * _334 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _506 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _334
            t = _332
            u = mem[_506]
            continue 
        if not s:
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_303] >= minLeverage:
                    idx = 0
                    s = mem[_303]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_351] >= minLeverage:
                    idx = 0
                    s = mem[_351]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_352] >= minLeverage:
                    idx = 0
                    s = mem[_352]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_389] >= minLeverage:
                    idx = 0
                    s = mem[_389]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if arg1 > borrowRateMax:
            revert with 0, '!rate'
        if arg2 > 10:
            revert with 0, '!depth'
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[ceil32(return_data.size) + 160]
        t = mem[ceil32(return_data.size) + 96]
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, u, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _343 = mem[_324]
            _345 = mem[_324 + 64]
            require mem[_324 + 224] == mem[_324 + 251 len 5]
            require mem[_324 + 256] == bool(mem[_324 + 256])
            if not mem[_324 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_324]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_324] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _343 - (0 / borrowRate), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _345
                t = _343
                u = mem[_504]
                continue 
            if 100 * mem[_324 + 64] / mem[_324 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_324 + 64] / borrowRate > mem[_324]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_324] - (100 * mem[_324 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _343 - (100 * _345 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _508 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _345
            t = _343
            u = mem[_508]
            continue 
        if not s:
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_305] >= minLeverage:
                    idx = 0
                    s = mem[_305]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_354] >= minLeverage:
                    idx = 0
                    s = mem[_354]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
        else:
            mem[mem[64] + 36] = -1
            mem[mem[64] + 68] = 2
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not t:
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_355] >= minLeverage:
                    idx = 0
                    s = mem[_355]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
            else:
                mem[mem[64] + 36] = -1
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                borrowRate = arg1
                borrowDepth = arg2
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_390] >= minLeverage:
                    idx = 0
                    s = mem[_390]
                    while idx < borrowDepth:
                        mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = wantAddress
                        mem[mem[64] + 36] = s
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args wantAddress, s, address(this.address), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if borrowRate * s / 100:
                            mem[mem[64]] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = wantAddress
                            mem[mem[64] + 36] = borrowRate * s / 100
                            mem[mem[64] + 68] = 2
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args wantAddress, borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
    emit StratRebalance(arg1, arg2);
}

function panic() payable {
    if msg.sender == owner:
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[ceil32(return_data.size) + 160]
        t = mem[ceil32(return_data.size) + 96]
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, u, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9331 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _9340 = mem[_9331]
            _9342 = mem[_9331 + 64]
            require mem[_9331 + 224] == mem[_9331 + 251 len 5]
            require mem[_9331 + 256] == bool(mem[_9331 + 256])
            if not mem[_9331 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_9331]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_9331] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _9340 - (0 / borrowRate), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9670 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _9342
                t = _9340
                u = mem[_9670]
                continue 
            if 100 * mem[_9331 + 64] / mem[_9331 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_9331 + 64] / borrowRate > mem[_9331]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_9331] - (100 * mem[_9331 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _9340 - (100 * _9342 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9696 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _9342
            t = _9340
            u = mem[_9696]
            continue 
        if not s:
            if not t:
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9383 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9399 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9383 + 100] = 32
                    mem[_9383 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9473 = mem[_9399]
                    mem[_9383 + 164 len ceil32(mem[_9399])] = mem[_9399 + 32 len ceil32(mem[_9399])]
                    if ceil32(_9473) > _9473:
                        mem[_9383 + _9473 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9383 + 168 len _9473 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9383 + 200] = unirouterAddress
                        mem[_9383 + 232] = 0
                        mem[_9383 + 164] = 68
                        mem[_9383 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9383 + 264] = 32
                        mem[_9383 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9383 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9383 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9383 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9383 + 360] == bool(mem[_9383 + 360])
                                if not mem[_9383 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9383 + 164] = return_data.size
                        mem[_9383 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9383 + 196] == bool(mem[_9383 + 196])
                            if not mem[_9383 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9383 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9383 + ceil32(return_data.size) + 233] = 0
                        mem[_9383 + ceil32(return_data.size) + 165] = 68
                        mem[_9383 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9383 + ceil32(return_data.size) + 265] = 32
                        mem[_9383 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9383 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9383 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9383 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9383 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9383 + ceil32(return_data.size) + 361] == bool(mem[_9383 + ceil32(return_data.size) + 361])
                                if not mem[_9383 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9383 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9389 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9412 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9389 + 100] = 32
                    mem[_9389 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9494 = mem[_9412]
                    mem[_9389 + 164 len ceil32(mem[_9412])] = mem[_9412 + 32 len ceil32(mem[_9412])]
                    if ceil32(_9494) > _9494:
                        mem[_9389 + _9494 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9389 + 168 len _9494 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9389 + 200] = unirouterAddress
                        mem[_9389 + 232] = 0
                        mem[_9389 + 164] = 68
                        mem[_9389 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9389 + 264] = 32
                        mem[_9389 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9389 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9389 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9389 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9389 + 360] == bool(mem[_9389 + 360])
                                if not mem[_9389 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9389 + 164] = return_data.size
                        mem[_9389 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9389 + 196] == bool(mem[_9389 + 196])
                            if not mem[_9389 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9389 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9389 + ceil32(return_data.size) + 233] = 0
                        mem[_9389 + ceil32(return_data.size) + 165] = 68
                        mem[_9389 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9389 + ceil32(return_data.size) + 265] = 32
                        mem[_9389 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9389 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9389 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9389 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9389 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9389 + ceil32(return_data.size) + 361] == bool(mem[_9389 + ceil32(return_data.size) + 361])
                                if not mem[_9389 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9389 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9448 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9476 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9448 + 100] = 32
                    mem[_9448 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9580 = mem[_9476]
                    mem[_9448 + 164 len ceil32(mem[_9476])] = mem[_9476 + 32 len ceil32(mem[_9476])]
                    if ceil32(_9580) > _9580:
                        mem[_9448 + _9580 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9448 + 168 len _9580 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9448 + 200] = unirouterAddress
                        mem[_9448 + 232] = 0
                        mem[_9448 + 164] = 68
                        mem[_9448 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9448 + 264] = 32
                        mem[_9448 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9448 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9448 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9448 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9448 + 360] == bool(mem[_9448 + 360])
                                if not mem[_9448 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9448 + 164] = return_data.size
                        mem[_9448 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9448 + 196] == bool(mem[_9448 + 196])
                            if not mem[_9448 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9448 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9448 + ceil32(return_data.size) + 233] = 0
                        mem[_9448 + ceil32(return_data.size) + 165] = 68
                        mem[_9448 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9448 + ceil32(return_data.size) + 265] = 32
                        mem[_9448 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9448 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9448 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9448 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9448 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9448 + ceil32(return_data.size) + 361] == bool(mem[_9448 + ceil32(return_data.size) + 361])
                                if not mem[_9448 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9448 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9460 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9496 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9460 + 100] = 32
                    mem[_9460 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9605 = mem[_9496]
                    mem[_9460 + 164 len ceil32(mem[_9496])] = mem[_9496 + 32 len ceil32(mem[_9496])]
                    if ceil32(_9605) > _9605:
                        mem[_9460 + _9605 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9460 + 168 len _9605 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9460 + 200] = unirouterAddress
                        mem[_9460 + 232] = 0
                        mem[_9460 + 164] = 68
                        mem[_9460 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9460 + 264] = 32
                        mem[_9460 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9460 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9460 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9460 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9460 + 360] == bool(mem[_9460 + 360])
                                if not mem[_9460 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9460 + 164] = return_data.size
                        mem[_9460 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9460 + 196] == bool(mem[_9460 + 196])
                            if not mem[_9460 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9460 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9460 + ceil32(return_data.size) + 233] = 0
                        mem[_9460 + ceil32(return_data.size) + 165] = 68
                        mem[_9460 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9460 + ceil32(return_data.size) + 265] = 32
                        mem[_9460 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9460 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9460 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9460 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9460 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9460 + ceil32(return_data.size) + 361] == bool(mem[_9460 + ceil32(return_data.size) + 361])
                                if not mem[_9460 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9460 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not t:
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9449 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9478 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9449 + 100] = 32
                    mem[_9449 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9583 = mem[_9478]
                    mem[_9449 + 164 len ceil32(mem[_9478])] = mem[_9478 + 32 len ceil32(mem[_9478])]
                    if ceil32(_9583) > _9583:
                        mem[_9449 + _9583 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9449 + 168 len _9583 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9449 + 200] = unirouterAddress
                        mem[_9449 + 232] = 0
                        mem[_9449 + 164] = 68
                        mem[_9449 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9449 + 264] = 32
                        mem[_9449 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9449 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9449 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9449 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9449 + 360] == bool(mem[_9449 + 360])
                                if not mem[_9449 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9449 + 164] = return_data.size
                        mem[_9449 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9449 + 196] == bool(mem[_9449 + 196])
                            if not mem[_9449 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9449 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9449 + ceil32(return_data.size) + 233] = 0
                        mem[_9449 + ceil32(return_data.size) + 165] = 68
                        mem[_9449 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9449 + ceil32(return_data.size) + 265] = 32
                        mem[_9449 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9449 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9449 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9449 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9449 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9449 + ceil32(return_data.size) + 361] == bool(mem[_9449 + ceil32(return_data.size) + 361])
                                if not mem[_9449 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9449 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9461 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9499 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9461 + 100] = 32
                    mem[_9461 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9607 = mem[_9499]
                    mem[_9461 + 164 len ceil32(mem[_9499])] = mem[_9499 + 32 len ceil32(mem[_9499])]
                    if ceil32(_9607) > _9607:
                        mem[_9461 + _9607 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9461 + 168 len _9607 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9461 + 200] = unirouterAddress
                        mem[_9461 + 232] = 0
                        mem[_9461 + 164] = 68
                        mem[_9461 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9461 + 264] = 32
                        mem[_9461 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9461 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9461 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9461 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9461 + 360] == bool(mem[_9461 + 360])
                                if not mem[_9461 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9461 + 164] = return_data.size
                        mem[_9461 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9461 + 196] == bool(mem[_9461 + 196])
                            if not mem[_9461 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9461 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9461 + ceil32(return_data.size) + 233] = 0
                        mem[_9461 + ceil32(return_data.size) + 165] = 68
                        mem[_9461 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9461 + ceil32(return_data.size) + 265] = 32
                        mem[_9461 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9461 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9461 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9461 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9461 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9461 + ceil32(return_data.size) + 361] == bool(mem[_9461 + ceil32(return_data.size) + 361])
                                if not mem[_9461 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9461 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9548 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9586 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9548 + 100] = 32
                    mem[_9548 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9763 = mem[_9586]
                    mem[_9548 + 164 len ceil32(mem[_9586])] = mem[_9586 + 32 len ceil32(mem[_9586])]
                    if ceil32(_9763) > _9763:
                        mem[_9548 + _9763 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9548 + 168 len _9763 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9548 + 200] = unirouterAddress
                        mem[_9548 + 232] = 0
                        mem[_9548 + 164] = 68
                        mem[_9548 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9548 + 264] = 32
                        mem[_9548 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9548 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9548 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9548 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9548 + 360] == bool(mem[_9548 + 360])
                                if not mem[_9548 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9548 + 164] = return_data.size
                        mem[_9548 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9548 + 196] == bool(mem[_9548 + 196])
                            if not mem[_9548 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9548 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9548 + ceil32(return_data.size) + 233] = 0
                        mem[_9548 + ceil32(return_data.size) + 165] = 68
                        mem[_9548 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9548 + ceil32(return_data.size) + 265] = 32
                        mem[_9548 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9548 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9548 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9548 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9548 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9548 + ceil32(return_data.size) + 361] == bool(mem[_9548 + ceil32(return_data.size) + 361])
                                if not mem[_9548 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9548 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9564 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9609 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9564 + 100] = 32
                    mem[_9564 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9796 = mem[_9609]
                    mem[_9564 + 164 len ceil32(mem[_9609])] = mem[_9609 + 32 len ceil32(mem[_9609])]
                    if ceil32(_9796) > _9796:
                        mem[_9564 + _9796 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9564 + 168 len _9796 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9564 + 200] = unirouterAddress
                        mem[_9564 + 232] = 0
                        mem[_9564 + 164] = 68
                        mem[_9564 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9564 + 264] = 32
                        mem[_9564 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9564 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9564 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9564 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9564 + 360] == bool(mem[_9564 + 360])
                                if not mem[_9564 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9564 + 164] = return_data.size
                        mem[_9564 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9564 + 196] == bool(mem[_9564 + 196])
                            if not mem[_9564 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9564 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9564 + ceil32(return_data.size) + 233] = 0
                        mem[_9564 + ceil32(return_data.size) + 165] = 68
                        mem[_9564 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9564 + ceil32(return_data.size) + 265] = 32
                        mem[_9564 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9564 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9564 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9564 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9564 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9564 + ceil32(return_data.size) + 361] == bool(mem[_9564 + ceil32(return_data.size) + 361])
                                if not mem[_9564 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9564 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        mem[100] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args wantAddress, this.address
        mem[ceil32(return_data.size) + 96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 288
        require ext_call.return_data[224] == ext_call.return_data[251 len 5]
        require ext_call.return_data[256] == bool(ext_call.return_data[256])
        s = mem[ceil32(return_data.size) + 160]
        t = mem[ceil32(return_data.size) + 96]
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, u, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args wantAddress, this.address
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9334 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _9351 = mem[_9334]
            _9353 = mem[_9334 + 64]
            require mem[_9334 + 224] == mem[_9334 + 251 len 5]
            require mem[_9334 + 256] == bool(mem[_9334 + 256])
            if not mem[_9334 + 64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > mem[_9334]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[mem[64] + 36] = mem[_9334] - (0 / borrowRate)
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, _9351 - (0 / borrowRate), this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                s = _9353
                t = _9351
                u = mem[_9686]
                continue 
            if 100 * mem[_9334 + 64] / mem[_9334 + 64] != 100:
                revert with 0, 'SafeMath: multiplication overflow'
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * mem[_9334 + 64] / borrowRate > mem[_9334]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 36] = mem[_9334] - (100 * mem[_9334 + 64] / borrowRate)
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, _9351 - (100 * _9353 / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9706 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            s = _9353
            t = _9351
            u = mem[_9706]
            continue 
        if not s:
            if not t:
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9386 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9405 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9386 + 100] = 32
                    mem[_9386 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9483 = mem[_9405]
                    mem[_9386 + 164 len ceil32(mem[_9405])] = mem[_9405 + 32 len ceil32(mem[_9405])]
                    if ceil32(_9483) > _9483:
                        mem[_9386 + _9483 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9386 + 168 len _9483 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9386 + 200] = unirouterAddress
                        mem[_9386 + 232] = 0
                        mem[_9386 + 164] = 68
                        mem[_9386 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9386 + 264] = 32
                        mem[_9386 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9386 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9386 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9386 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9386 + 360] == bool(mem[_9386 + 360])
                                if not mem[_9386 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9386 + 164] = return_data.size
                        mem[_9386 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9386 + 196] == bool(mem[_9386 + 196])
                            if not mem[_9386 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9386 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9386 + ceil32(return_data.size) + 233] = 0
                        mem[_9386 + ceil32(return_data.size) + 165] = 68
                        mem[_9386 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9386 + ceil32(return_data.size) + 265] = 32
                        mem[_9386 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9386 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9386 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9386 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9386 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9386 + ceil32(return_data.size) + 361] == bool(mem[_9386 + ceil32(return_data.size) + 361])
                                if not mem[_9386 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9386 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9394 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9418 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9394 + 100] = 32
                    mem[_9394 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9505 = mem[_9418]
                    mem[_9394 + 164 len ceil32(mem[_9418])] = mem[_9418 + 32 len ceil32(mem[_9418])]
                    if ceil32(_9505) > _9505:
                        mem[_9394 + _9505 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9394 + 168 len _9505 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9394 + 200] = unirouterAddress
                        mem[_9394 + 232] = 0
                        mem[_9394 + 164] = 68
                        mem[_9394 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9394 + 264] = 32
                        mem[_9394 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9394 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9394 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9394 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9394 + 360] == bool(mem[_9394 + 360])
                                if not mem[_9394 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9394 + 164] = return_data.size
                        mem[_9394 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9394 + 196] == bool(mem[_9394 + 196])
                            if not mem[_9394 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9394 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9394 + ceil32(return_data.size) + 233] = 0
                        mem[_9394 + ceil32(return_data.size) + 165] = 68
                        mem[_9394 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9394 + ceil32(return_data.size) + 265] = 32
                        mem[_9394 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9394 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9394 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9394 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9394 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9394 + ceil32(return_data.size) + 361] == bool(mem[_9394 + ceil32(return_data.size) + 361])
                                if not mem[_9394 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9394 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9453 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9486 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9453 + 100] = 32
                    mem[_9453 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9593 = mem[_9486]
                    mem[_9453 + 164 len ceil32(mem[_9486])] = mem[_9486 + 32 len ceil32(mem[_9486])]
                    if ceil32(_9593) > _9593:
                        mem[_9453 + _9593 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9453 + 168 len _9593 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9453 + 200] = unirouterAddress
                        mem[_9453 + 232] = 0
                        mem[_9453 + 164] = 68
                        mem[_9453 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9453 + 264] = 32
                        mem[_9453 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9453 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9453 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9453 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9453 + 360] == bool(mem[_9453 + 360])
                                if not mem[_9453 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9453 + 164] = return_data.size
                        mem[_9453 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9453 + 196] == bool(mem[_9453 + 196])
                            if not mem[_9453 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9453 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9453 + ceil32(return_data.size) + 233] = 0
                        mem[_9453 + ceil32(return_data.size) + 165] = 68
                        mem[_9453 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9453 + ceil32(return_data.size) + 265] = 32
                        mem[_9453 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9453 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9453 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9453 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9453 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9453 + ceil32(return_data.size) + 361] == bool(mem[_9453 + ceil32(return_data.size) + 361])
                                if not mem[_9453 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9453 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9468 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9507 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9468 + 100] = 32
                    mem[_9468 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9614 = mem[_9507]
                    mem[_9468 + 164 len ceil32(mem[_9507])] = mem[_9507 + 32 len ceil32(mem[_9507])]
                    if ceil32(_9614) > _9614:
                        mem[_9468 + _9614 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9468 + 168 len _9614 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9468 + 200] = unirouterAddress
                        mem[_9468 + 232] = 0
                        mem[_9468 + 164] = 68
                        mem[_9468 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9468 + 264] = 32
                        mem[_9468 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9468 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9468 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9468 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9468 + 360] == bool(mem[_9468 + 360])
                                if not mem[_9468 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9468 + 164] = return_data.size
                        mem[_9468 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9468 + 196] == bool(mem[_9468 + 196])
                            if not mem[_9468 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9468 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9468 + ceil32(return_data.size) + 233] = 0
                        mem[_9468 + ceil32(return_data.size) + 165] = 68
                        mem[_9468 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9468 + ceil32(return_data.size) + 265] = 32
                        mem[_9468 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9468 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9468 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9468 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9468 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9468 + ceil32(return_data.size) + 361] == bool(mem[_9468 + ceil32(return_data.size) + 361])
                                if not mem[_9468 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9468 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            mem[mem[64] + 100] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not t:
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9454 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9488 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9454 + 100] = 32
                    mem[_9454 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9596 = mem[_9488]
                    mem[_9454 + 164 len ceil32(mem[_9488])] = mem[_9488 + 32 len ceil32(mem[_9488])]
                    if ceil32(_9596) > _9596:
                        mem[_9454 + _9596 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9454 + 168 len _9596 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9454 + 200] = unirouterAddress
                        mem[_9454 + 232] = 0
                        mem[_9454 + 164] = 68
                        mem[_9454 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9454 + 264] = 32
                        mem[_9454 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9454 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9454 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9454 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9454 + 360] == bool(mem[_9454 + 360])
                                if not mem[_9454 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9454 + 164] = return_data.size
                        mem[_9454 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9454 + 196] == bool(mem[_9454 + 196])
                            if not mem[_9454 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9454 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9454 + ceil32(return_data.size) + 233] = 0
                        mem[_9454 + ceil32(return_data.size) + 165] = 68
                        mem[_9454 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9454 + ceil32(return_data.size) + 265] = 32
                        mem[_9454 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9454 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9454 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9454 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9454 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9454 + ceil32(return_data.size) + 361] == bool(mem[_9454 + ceil32(return_data.size) + 361])
                                if not mem[_9454 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9454 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9469 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9510 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9469 + 100] = 32
                    mem[_9469 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9616 = mem[_9510]
                    mem[_9469 + 164 len ceil32(mem[_9510])] = mem[_9510 + 32 len ceil32(mem[_9510])]
                    if ceil32(_9616) > _9616:
                        mem[_9469 + _9616 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9469 + 168 len _9616 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9469 + 200] = unirouterAddress
                        mem[_9469 + 232] = 0
                        mem[_9469 + 164] = 68
                        mem[_9469 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9469 + 264] = 32
                        mem[_9469 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9469 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9469 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9469 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9469 + 360] == bool(mem[_9469 + 360])
                                if not mem[_9469 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9469 + 164] = return_data.size
                        mem[_9469 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9469 + 196] == bool(mem[_9469 + 196])
                            if not mem[_9469 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9469 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9469 + ceil32(return_data.size) + 233] = 0
                        mem[_9469 + ceil32(return_data.size) + 165] = 68
                        mem[_9469 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9469 + ceil32(return_data.size) + 265] = 32
                        mem[_9469 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9469 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9469 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9469 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9469 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9469 + ceil32(return_data.size) + 361] == bool(mem[_9469 + ceil32(return_data.size) + 361])
                                if not mem[_9469 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9469 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                reserves = 0
                if msg.sender == owner:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9553 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9599 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9553 + 100] = 32
                    mem[_9553 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9782 = mem[_9599]
                    mem[_9553 + 164 len ceil32(mem[_9599])] = mem[_9599 + 32 len ceil32(mem[_9599])]
                    if ceil32(_9782) > _9782:
                        mem[_9553 + _9782 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9553 + 168 len _9782 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9553 + 200] = unirouterAddress
                        mem[_9553 + 232] = 0
                        mem[_9553 + 164] = 68
                        mem[_9553 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9553 + 264] = 32
                        mem[_9553 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9553 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9553 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9553 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9553 + 360] == bool(mem[_9553 + 360])
                                if not mem[_9553 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9553 + 164] = return_data.size
                        mem[_9553 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9553 + 196] == bool(mem[_9553 + 196])
                            if not mem[_9553 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9553 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9553 + ceil32(return_data.size) + 233] = 0
                        mem[_9553 + ceil32(return_data.size) + 165] = 68
                        mem[_9553 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9553 + ceil32(return_data.size) + 265] = 32
                        mem[_9553 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9553 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9553 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9553 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9553 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9553 + ceil32(return_data.size) + 361] == bool(mem[_9553 + ceil32(return_data.size) + 361])
                                if not mem[_9553 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9553 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    if keeperAddress != msg.sender:
                        revert with 0, '!manager'
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    stor0 = 1
                    emit Paused(msg.sender);
                    _9575 = mem[64]
                    mem[mem[64] + 36] = address(lendingPoolAddress)
                    mem[mem[64] + 68] = 0
                    _9618 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
                    mem[64] = mem[64] + 164
                    mem[_9575 + 100] = 32
                    mem[_9575 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    _9808 = mem[_9618]
                    mem[_9575 + 164 len ceil32(mem[_9618])] = mem[_9618 + 32 len ceil32(mem[_9618])]
                    if ceil32(_9808) > _9808:
                        mem[_9575 + _9808 + 164] = 0
                    call wantAddress with:
                         gas gas_remaining wei
                        args mem[_9575 + 168 len _9808 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9575 + 200] = unirouterAddress
                        mem[_9575 + 232] = 0
                        mem[_9575 + 164] = 68
                        mem[_9575 + 196 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9575 + 264] = 32
                        mem[_9575 + 296] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9575 + 328 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9575 + 396] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9575 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9575 + 360] == bool(mem[_9575 + 360])
                                if not mem[_9575 + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_9575 + 164] = return_data.size
                        mem[_9575 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_9575 + 196] == bool(mem[_9575 + 196])
                            if not mem[_9575 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_9575 + ceil32(return_data.size) + 201] = unirouterAddress
                        mem[_9575 + ceil32(return_data.size) + 233] = 0
                        mem[_9575 + ceil32(return_data.size) + 165] = 68
                        mem[_9575 + ceil32(return_data.size) + 197 len 4] = approve(address arg1, uint256 arg2)
                        mem[_9575 + ceil32(return_data.size) + 265] = 32
                        mem[_9575 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(outputAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[_9575 + ceil32(return_data.size) + 329 len 96] = 0, unirouterAddress, 0, 0
                        mem[_9575 + ceil32(return_data.size) + 397] = 0
                        call outputAddress with:
                           funct Mask(32, 224, 0, unirouterAddress, 0, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, 0, unirouterAddress, 0, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_9575 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[_9575 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_9575 + ceil32(return_data.size) + 361] == bool(mem[_9575 + ceil32(return_data.size) + 361])
                                if not mem[_9575 + ceil32(return_data.size) + 361]:
                                    revert with 0, 
                                                'SafeERC20: ERC20 operation did not succeed',
                                                mem[_9575 + (2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
