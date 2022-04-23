contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const blockTimestamp = block.timestamp

const MAX_SUPPLY = 7777 * 10^18

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (48 * 24 * 3600)

const MAX_POOL_FEE = 400


address owner;
uint256 stor1;
address tomatoAddress;
address devAddress;
uint256 tomatoPerSecond;
address feeAddress;
uint256 totalLockedUpRewards;
array of struct poolInfo;
mapping of struct harvestUntil;
uint256 totalAllocPoint;
uint256 startTime;
uint256 MAX_EMISSION_RATE;
uint256 EMISSION_RATE;
mapping of uint8 stor13;

function EMISSION_RATE() payable {
    return EMISSION_RATE
}

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

function tomatoPerSecond() payable {
    return tomatoPerSecond
}

function MAX_EMISSION_RATE() payable {
    return MAX_EMISSION_RATE
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function getHarvestUntil(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return harvestUntil[arg1][address(arg2)].field_768
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return harvestUntil[arg1][arg2].field_0, 
           harvestUntil[arg1][arg2].field_256,
           harvestUntil[arg1][arg2].field_512,
           harvestUntil[arg1][arg2].field_768
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function tomato() payable {
    return tomatoAddress
}

function _fallback() payable {
    revert
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return block.timestamp >= harvestUntil[arg1][address(arg2)].field_768
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'dev: wut?'
    devAddress = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
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
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(tomatoAddress)
    staticcall tomatoAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if arg2 - arg1 / arg2 - arg1 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg2 - arg1)
}

function setStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73736574537461727454696d653a206661726d20616c726561647920737461727465,
                    mem[198 len 30]
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6d736574537461727454696d653a206e65772073746172742074696d65206d757374206265206675747572652074696d,
                    mem[212 len 16]
    startTime = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        poolInfo[idx].field_512 = startTime
        mem[96] = startTime
        mem[128] = arg1
        emit StartTimeChanged(startTime, arg1);
        idx = idx + 1
        continue 
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, harvestUntil[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args harvestUntil[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, harvestUntil[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(harvestUntil[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    harvestUntil[arg1][address(msg.sender)].field_0 = 0
    harvestUntil[arg1][address(msg.sender)].field_256 = 0
    harvestUntil[arg1][address(msg.sender)].field_512 = 0
    harvestUntil[arg1][address(msg.sender)].field_768 = 0
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                require ext_code.size(tomatoAddress)
                staticcall tomatoAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(tomatoAddress)
                    call tomatoAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tomatoAddress)
                    call tomatoAddress.0x40c10f19 with:
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if poolInfo[arg1].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(tomatoAddress)
                        call tomatoAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(tomatoAddress)
                        call tomatoAddress.0x40c10f19 with:
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.timestamp - poolInfo[arg1].field_512
                        if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not block.timestamp - poolInfo[arg1].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.timestamp - poolInfo[arg1].field_512
                            if (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond) / block.timestamp - poolInfo[arg1].field_512 != tomatoPerSecond:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
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
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond)
                                if (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond) != poolInfo[arg1].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    require ext_code.size(tomatoAddress)
                    staticcall tomatoAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(tomatoAddress)
                        call tomatoAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(tomatoAddress)
                        call tomatoAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.timestamp - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.timestamp - poolInfo[idx].field_512
                                if (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) / block.timestamp - poolInfo[idx].field_512 != tomatoPerSecond:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond)
                                    if (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > MAX_EMISSION_RATE:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x64757064617465456d697373696f6e526174653a2076616c756520686967686572207468616e206d6178696d75,
                    mem[209 len 19]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.timestamp > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if poolInfo[idx].field_256:
                    require ext_code.size(tomatoAddress)
                    staticcall tomatoAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(tomatoAddress)
                        call tomatoAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(tomatoAddress)
                        call tomatoAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.timestamp - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.timestamp - poolInfo[idx].field_512
                                if (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) / block.timestamp - poolInfo[idx].field_512 != tomatoPerSecond:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond)
                                    if (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
    tomatoPerSecond = arg1
    emit UpdateEmissionRate(msg.sender, arg1);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 48 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.timestamp > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        require ext_code.size(tomatoAddress)
                        staticcall tomatoAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_512 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.timestamp - poolInfo[idx].field_512
                                if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not block.timestamp - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.timestamp - poolInfo[idx].field_512
                                    if (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) / block.timestamp - poolInfo[idx].field_512 != tomatoPerSecond:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond)
                                        if (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function addPool(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    if arg4 > 48 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.timestamp > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if poolInfo[idx].field_256:
                        require ext_code.size(tomatoAddress)
                        staticcall tomatoAddress.0x18160ddd with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(tomatoAddress)
                            call tomatoAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_512 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(tomatoAddress)
                                call tomatoAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.timestamp - poolInfo[idx].field_512
                                if block.timestamp - poolInfo[idx].field_512 / block.timestamp - poolInfo[idx].field_512 != 1:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not block.timestamp - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(tomatoAddress)
                                    call tomatoAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.timestamp - poolInfo[idx].field_512
                                    if (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) / block.timestamp - poolInfo[idx].field_512 != tomatoPerSecond:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, 0 / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = 0 / totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), 0 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond)
                                        if (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / (block.timestamp * tomatoPerSecond) - (poolInfo[idx].field_512 * tomatoPerSecond) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args devAddress, (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[100] = this.address
                                        mem[132] = (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                        require ext_code.size(tomatoAddress)
                                        call tomatoAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tomatoPerSecond * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor13[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTime:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTime
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = arg4
}

function pendingTomato(uint256 arg1, address arg2) payable {
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
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    if not ext_call.return_data[0]:
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require ext_code.size(tomatoAddress)
    staticcall tomatoAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + totalLockedUpRewards >= 7777 * 10^18:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not harvestUntil[arg1][address(arg2)].field_0:
                if harvestUntil[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
            require harvestUntil[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not harvestUntil[arg1][address(arg2)].field_0:
                if harvestUntil[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
            require harvestUntil[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require block.timestamp - poolInfo[arg1].field_512
    if block.timestamp - poolInfo[arg1].field_512 / block.timestamp - poolInfo[arg1].field_512 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not block.timestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not harvestUntil[arg1][address(arg2)].field_0:
                if harvestUntil[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
            require harvestUntil[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require block.timestamp - poolInfo[arg1].field_512
    if (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond) / block.timestamp - poolInfo[arg1].field_512 != tomatoPerSecond:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not harvestUntil[arg1][address(arg2)].field_0:
                if harvestUntil[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
            require harvestUntil[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond)
    if (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / (block.timestamp * tomatoPerSecond) - (poolInfo[arg1].field_512 * tomatoPerSecond) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not harvestUntil[arg1][address(arg2)].field_0:
        if harvestUntil[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require harvestUntil[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if harvestUntil[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * tomatoPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tomatoPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^18) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
}



}
