contract main {




// =====================  Runtime code  =====================


#
#  - getEmissionRatePercent(uint256 arg1)
#  - updateEmissionIfNeeded()
#  - deposit(uint256 arg1, uint256 arg2)
#
const MINIMUM_HARVEST_BP = 1000

const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_BP = 10000

const MAXIMUM_HARVEST_INTERVAL = (24 * 3600)


address owner;
uint256 stor1;
address neptuneAddress;
address busdAddress;
address busdNptLPAddress;
address burnaddr;
uint256 nptPerBlock;
uint256 maxEmissionRate;
address feeAddress;
uint256 totalLockedUpRewards;
array of struct poolInfo;
mapping of struct harvestUntil;
uint256 totalAllocPoint;
uint256 startBlock;
address feeDynamicAddress;
address harvestDynamicAddress;
address harvestTimerDynamicAddress;
uint256 topPrice;
uint256 bottomPrice;
uint256 curveRate;
uint256 lastBlockUpdate;
uint256 emissionUpdateInterval;
mapping of uint8 stor22;

function burnaddr() payable {
    return burnaddr
}

function poolLength() payable {
    return poolInfo.length
}

function lastBlockUpdate() payable {
    return lastBlockUpdate
}

function maxEmissionRate() payable {
    return maxEmissionRate
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function neptune() payable {
    return neptuneAddress
}

function busd() payable {
    return busdAddress
}

function feeAddress() payable {
    return feeAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function emissionUpdateInterval() payable {
    return emissionUpdateInterval
}

function nptPerBlock() payable {
    return nptPerBlock
}

function curveRate() payable {
    return curveRate
}

function getHarvestUntil(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return harvestUntil[arg1][address(arg2)].field_768
}

function owner() payable {
    return owner
}

function harvestDynamic() payable {
    return harvestDynamicAddress
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return harvestUntil[arg1][arg2].field_0, 
           harvestUntil[arg1][arg2].field_256,
           harvestUntil[arg1][arg2].field_512,
           harvestUntil[arg1][arg2].field_768
}

function bottomPrice() payable {
    return bottomPrice
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function feeDynamic() payable {
    return feeDynamicAddress
}

function topPrice() payable {
    return topPrice
}

function busdNptLP() payable {
    return busdNptLPAddress
}

function harvestTimerDynamic() payable {
    return harvestTimerDynamicAddress
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

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function setBusdNptLPAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    busdNptLPAddress = arg1
}

function setBUSDAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    busdAddress = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function updateEmissionParameters(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    topPrice = arg1
    bottomPrice = arg2
    emissionUpdateInterval = arg3
    curveRate = arg4
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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

function getNptPriceCents() payable {
    require ext_code.size(neptuneAddress)
    staticcall neptuneAddress.0x70a08231 with:
            gas gas_remaining wei
           args busdNptLPAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(busdAddress)
    staticcall busdAddress.0x70a08231 with:
            gas gas_remaining wei
           args busdNptLPAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if 10^14 * ext_call.return_data[0] / ext_call.return_data[0] != 10^14:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (10^14 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    harvestUntil[arg1][address(msg.sender)].field_0 = 0
    harvestUntil[arg1][address(msg.sender)].field_256 = 0
    harvestUntil[arg1][address(msg.sender)].field_512 = 0
    harvestUntil[arg1][address(msg.sender)].field_768 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
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
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(harvestUntil[arg1][address(msg.sender)].field_0, msg.sender, arg1);
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
                    require ext_code.size(neptuneAddress)
                    call neptuneAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(neptuneAddress)
                    call neptuneAddress.0x40c10f19 with:
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock) / block.number - poolInfo[arg1].field_512 != nptPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock)
                            if (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
        if block.number > poolInfo[idx].field_512:
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
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
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
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[idx].field_512
                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
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
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) / block.number - poolInfo[idx].field_512 != nptPerBlock:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
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
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock)
                                if (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnaddr, (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
        if block.number > poolInfo[idx].field_512:
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
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[100] = this.address
                        mem[132] = 0 / totalAllocPoint
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
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
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[idx].field_512
                        if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
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
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) / block.number - poolInfo[idx].field_512 != nptPerBlock:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
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
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock)
                                if (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnaddr, (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    nptPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 400:
        revert with 0, 'set: NO more than 4% fees.'
    if arg4 > 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5 > 10000:
        revert with 0, 'set: invalid harvest percent'
    if arg5 < 1000:
        revert with 0, 'set: invalid harvest percent'
    if arg6:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
            if block.number > poolInfo[idx].field_512:
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
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
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
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
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
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) / block.number - poolInfo[idx].field_512 != nptPerBlock:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args burnaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
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
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock)
                                    if (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args burnaddr, (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
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
    poolInfo[arg1].field_1536 = arg5
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor22[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0, 'add: NO more than 4% fees!'
    if arg4 > 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5 > 10000:
        revert with 0, 'set: invalid harvest percent'
    if arg5 < 1000:
        revert with 0, 'set: invalid harvest percent'
    if arg6:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
            if block.number > poolInfo[idx].field_512:
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
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[100] = this.address
                            mem[132] = 0 / totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
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
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if block.number - poolInfo[idx].field_512 / block.number - poolInfo[idx].field_512 != 1:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnaddr, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[100] = this.address
                                mem[132] = 0 / totalAllocPoint
                                require ext_code.size(neptuneAddress)
                                call neptuneAddress.0x40c10f19 with:
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
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) / block.number - poolInfo[idx].field_512 != nptPerBlock:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args burnaddr, 0 / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = 0 / totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
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
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock)
                                    if (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / (block.number * nptPerBlock) - (poolInfo[idx].field_512 * nptPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args burnaddr, (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[100] = this.address
                                    mem[132] = (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(neptuneAddress)
                                    call neptuneAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * nptPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * nptPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor22[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
    poolInfo[poolInfo.length].field_1280 = arg4
    poolInfo[poolInfo.length].field_1536 = arg5
}

function pendingNpt(uint256 arg1, address arg2) payable {
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
        if harvestUntil[arg1][address(arg2)].field_256 > harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
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
        if harvestUntil[arg1][address(arg2)].field_256 > harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((harvestUntil[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
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
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require block.number - poolInfo[arg1].field_512
    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
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
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require block.number - poolInfo[arg1].field_512
    if (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock) / block.number - poolInfo[arg1].field_512 != nptPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock):
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
            if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if harvestUntil[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not harvestUntil[arg1][address(arg2)].field_0:
            if harvestUntil[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
        require harvestUntil[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock)
    if (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
        if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if harvestUntil[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not harvestUntil[arg1][address(arg2)].field_0:
        if harvestUntil[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if -harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512 < -harvestUntil[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
    require harvestUntil[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / harvestUntil[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if harvestUntil[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if harvestUntil[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * harvestUntil[arg1][address(arg2)].field_0) + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * harvestUntil[arg1][address(arg2)].field_0) / 10^12) - harvestUntil[arg1][address(arg2)].field_256 + harvestUntil[arg1][address(arg2)].field_512)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require arg1 < poolInfo.length
    if harvestUntil[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
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
                    require ext_code.size(neptuneAddress)
                    call neptuneAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(neptuneAddress)
                    call neptuneAddress.0x40c10f19 with:
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
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if block.number - poolInfo[arg1].field_512 / block.number - poolInfo[arg1].field_512 != 1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(neptuneAddress)
                        call neptuneAddress.0x40c10f19 with:
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
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock) / block.number - poolInfo[arg1].field_512 != nptPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
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
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock)
                            if (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / (block.number * nptPerBlock) - (poolInfo[arg1].field_512 * nptPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnaddr, (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(neptuneAddress)
                            call neptuneAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * nptPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * nptPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
    require arg1 < poolInfo.length
    if not harvestUntil[arg1][address(msg.sender)].field_768:
        require ext_code.size(harvestTimerDynamicAddress)
        staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                gas gas_remaining wei
               args poolInfo[arg1].field_1280, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp + ext_call.return_data[0] < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
    if not harvestUntil[arg1][address(msg.sender)].field_0:
        if harvestUntil[arg1][address(msg.sender)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < harvestUntil[arg1][address(msg.sender)].field_768:
            if -harvestUntil[arg1][address(msg.sender)].field_256 > 0:
                if harvestUntil[arg1][address(msg.sender)].field_512 - harvestUntil[arg1][address(msg.sender)].field_256 < harvestUntil[arg1][address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                harvestUntil[arg1][address(msg.sender)].field_512 -= harvestUntil[arg1][address(msg.sender)].field_256
                emit RewardLockedUp(-harvestUntil[arg1][address(msg.sender)].field_256, msg.sender, arg1);
        else:
            if -harvestUntil[arg1][address(msg.sender)].field_256 > 0:
                if -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 < -harvestUntil[arg1][address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(harvestDynamicAddress)
                staticcall harvestDynamicAddress.0xc7643804 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1536, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                    require ext_code.size(harvestTimerDynamicAddress)
                    staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                            gas gas_remaining wei
                           args poolInfo[arg1].field_1280, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    harvestUntil[arg1][address(msg.sender)].field_512 -= harvestUntil[arg1][address(msg.sender)].field_256
                    if block.timestamp + ext_call.return_data[0] < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                    require ext_code.size(neptuneAddress)
                    staticcall neptuneAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(neptuneAddress)
                    if 0 <= ext_call.return_data[0]:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    require -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512
                    if (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(harvestTimerDynamicAddress)
                    staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                            gas gas_remaining wei
                           args poolInfo[arg1].field_1280, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 > -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    harvestUntil[arg1][address(msg.sender)].field_512 = -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 - ((-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000)
                    if block.timestamp + ext_call.return_data[0] < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                    require ext_code.size(neptuneAddress)
                    staticcall neptuneAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(neptuneAddress)
                    if (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 <= ext_call.return_data[0]:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000
                    else:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'safeNptTransfer: transfer failed'
            else:
                if harvestUntil[arg1][address(msg.sender)].field_512 > 0:
                    if -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 < -harvestUntil[arg1][address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(harvestDynamicAddress)
                    staticcall harvestDynamicAddress.0xc7643804 with:
                            gas gas_remaining wei
                           args poolInfo[arg1].field_1536, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                        require ext_code.size(harvestTimerDynamicAddress)
                        staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                                gas gas_remaining wei
                               args poolInfo[arg1].field_1280, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        harvestUntil[arg1][address(msg.sender)].field_512 -= harvestUntil[arg1][address(msg.sender)].field_256
                        if block.timestamp + ext_call.return_data[0] < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                        require ext_code.size(neptuneAddress)
                        staticcall neptuneAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(neptuneAddress)
                        if 0 <= ext_call.return_data[0]:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        require -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512
                        if (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(harvestTimerDynamicAddress)
                        staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                                gas gas_remaining wei
                               args poolInfo[arg1].field_1280, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 > -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        harvestUntil[arg1][address(msg.sender)].field_512 = -harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 - ((-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000)
                        if block.timestamp + ext_call.return_data[0] < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                        require ext_code.size(neptuneAddress)
                        staticcall neptuneAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(neptuneAddress)
                        if (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 <= ext_call.return_data[0]:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (-1 * harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000
                        else:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'safeNptTransfer: transfer failed'
    else:
        require harvestUntil[arg1][address(msg.sender)].field_0
        if harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / harvestUntil[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if harvestUntil[arg1][address(msg.sender)].field_256 > harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < harvestUntil[arg1][address(msg.sender)].field_768:
            if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 > 0:
                if harvestUntil[arg1][address(msg.sender)].field_512 + (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 < harvestUntil[arg1][address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                harvestUntil[arg1][address(msg.sender)].field_512 = harvestUntil[arg1][address(msg.sender)].field_512 + (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256
                emit RewardLockedUp(((harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256), msg.sender, arg1);
        else:
            if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 > 0:
                if harvestUntil[arg1][address(msg.sender)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(harvestDynamicAddress)
                staticcall harvestDynamicAddress.0xc7643804 with:
                        gas gas_remaining wei
                       args poolInfo[arg1].field_1536, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                    require ext_code.size(harvestTimerDynamicAddress)
                    staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                            gas gas_remaining wei
                           args poolInfo[arg1].field_1280, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 > (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    harvestUntil[arg1][address(msg.sender)].field_512 = (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512
                    if block.timestamp + ext_call.return_data[0] < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                    require ext_code.size(neptuneAddress)
                    staticcall neptuneAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(neptuneAddress)
                    if 0 <= ext_call.return_data[0]:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    require (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512
                    if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(harvestTimerDynamicAddress)
                    staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                            gas gas_remaining wei
                           args poolInfo[arg1].field_1280, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 > (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    harvestUntil[arg1][address(msg.sender)].field_512 = (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 - ((harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000)
                    if block.timestamp + ext_call.return_data[0] < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                    require ext_code.size(neptuneAddress)
                    staticcall neptuneAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(neptuneAddress)
                    if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 <= ext_call.return_data[0]:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000
                    else:
                        call neptuneAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'safeNptTransfer: transfer failed'
            else:
                if harvestUntil[arg1][address(msg.sender)].field_512 > 0:
                    if harvestUntil[arg1][address(msg.sender)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(harvestDynamicAddress)
                    staticcall harvestDynamicAddress.0xc7643804 with:
                            gas gas_remaining wei
                           args poolInfo[arg1].field_1536, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                        require ext_code.size(harvestTimerDynamicAddress)
                        staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                                gas gas_remaining wei
                               args poolInfo[arg1].field_1280, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        harvestUntil[arg1][address(msg.sender)].field_512 = (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512
                        if block.timestamp + ext_call.return_data[0] < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                        require ext_code.size(neptuneAddress)
                        staticcall neptuneAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(neptuneAddress)
                        if 0 <= ext_call.return_data[0]:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                        else:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    else:
                        require (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512
                        if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 != ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_code.size(harvestTimerDynamicAddress)
                        staticcall harvestTimerDynamicAddress.0x550b48c3 with:
                                gas gas_remaining wei
                               args poolInfo[arg1].field_1280, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 > (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        harvestUntil[arg1][address(msg.sender)].field_512 = (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - harvestUntil[arg1][address(msg.sender)].field_256 + harvestUntil[arg1][address(msg.sender)].field_512 - ((harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000)
                        if block.timestamp + ext_call.return_data[0] < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        harvestUntil[arg1][address(msg.sender)].field_768 = block.timestamp + ext_call.return_data[0]
                        require ext_code.size(neptuneAddress)
                        staticcall neptuneAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(neptuneAddress)
                        if (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000 <= ext_call.return_data[0]:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 * ext_call.return_data[0]) - (harvestUntil[arg1][address(msg.sender)].field_256 * ext_call.return_data[0]) + (harvestUntil[arg1][address(msg.sender)].field_512 * ext_call.return_data[0]) / 10000
                        else:
                            call neptuneAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'safeNptTransfer: transfer failed'
    if arg2 <= 0:
        if not harvestUntil[arg1][address(msg.sender)].field_0:
            harvestUntil[arg1][address(msg.sender)].field_256 = 0
        else:
            require harvestUntil[arg1][address(msg.sender)].field_0
            if harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / harvestUntil[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            harvestUntil[arg1][address(msg.sender)].field_256 = harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        if arg2 > harvestUntil[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        harvestUntil[arg1][address(msg.sender)].field_0 -= arg2
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not harvestUntil[arg1][address(msg.sender)].field_0:
                harvestUntil[arg1][address(msg.sender)].field_256 = 0
            else:
                require harvestUntil[arg1][address(msg.sender)].field_0
                if harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / harvestUntil[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                harvestUntil[arg1][address(msg.sender)].field_256 = harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if not harvestUntil[arg1][address(msg.sender)].field_0:
                harvestUntil[arg1][address(msg.sender)].field_256 = 0
            else:
                require harvestUntil[arg1][address(msg.sender)].field_0
                if harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / harvestUntil[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                harvestUntil[arg1][address(msg.sender)].field_256 = harvestUntil[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
