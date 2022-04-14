contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address kinsAddress;
address devaddr;
address ilpAddress;
address farmVaultAddress;
address feeAddress;
uint256 kinsPerBlock;
uint256 nextUpdateBlock;
uint256 BONUS_MULTIPLIER;
uint256 totalRewarded;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726059;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726060;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726061;
array of address stor89717814153306320011181716697424560163256864414616650038987186496166826726062;
array of struct stor89717814153306320011181716697424560163256864414616650038987186496166826726063;

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
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792,
           bool(poolInfo[arg1].field_1952)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function farmVault() payable {
    return farmVaultAddress
}

function ilp() payable {
    return ilpAddress
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function totalRewarded() payable {
    return totalRewarded
}

function nextUpdateBlock() payable {
    return nextUpdateBlock
}

function kinsPerBlock() payable {
    return kinsPerBlock
}

function kins() payable {
    return kinsAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setstartblock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function getDaysSinceDeposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        return 0
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return (block.timestamp - userInfo[arg1][address(arg2)].field_512 / 24 * 3600)
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    BONUS_MULTIPLIER = arg1
}

function setFarmVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    farmVaultAddress = arg1
    return 1
}

function setImpermanentLossProtection(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    ilpAddress = arg1
    return 0
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
    feeAddress = arg1
    emit 0x6dda798b: arg1
    return 1
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
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUserInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp < userInfo[arg1][address(arg2)].field_512:
        return userInfo[arg1][address(arg2)].field_0, 
               userInfo[arg1][address(arg2)].field_256,
               0,
               userInfo[arg1][address(arg2)].field_768
    if userInfo[arg1][address(arg2)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    return userInfo[arg1][address(arg2)].field_0, 
           userInfo[arg1][address(arg2)].field_256,
           block.timestamp - userInfo[arg1][address(arg2)].field_512 / 24 * 3600,
           userInfo[arg1][address(arg2)].field_768
}

function updateReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if farmVaultAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x774f6e6c79204661726d5661756c74206f72204465762063616e20646f20746869,
                        mem[197 len 31]
    kinsPerBlock = arg1 / 24 * 3600
    if block.number + (24 * 3600) < block.number:
        revert with 0, 'SafeMath: addition overflow'
    nextUpdateBlock = block.number + (24 * 3600)
    if arg1 + totalRewarded < totalRewarded:
        revert with 0, 'SafeMath: addition overflow'
    totalRewarded += arg1
}

function checkForIL(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(ilpAddress)
    staticcall ilpAddress.getKinsPrice(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(ilpAddress)
    staticcall ilpAddress.getDepositValue(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args userInfo[arg1][address(arg2)].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= userInfo[arg1][address(arg2)].field_768:
        return 0
    if ext_call.return_data[0] > userInfo[arg1][address(arg2)].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (userInfo[arg1][address(arg2)].field_768 - ext_call.return_data[0] / ext_call.return_data[0])
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
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
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_0
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function pendingkins(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_768:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.number < nextUpdateBlock:
        if poolInfo[arg1].field_768 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_768:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[arg1].field_768 != BONUS_MULTIPLIER:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_1280:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_768 > nextUpdateBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not nextUpdateBlock - poolInfo[arg1].field_768:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[arg1].field_768 != BONUS_MULTIPLIER:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero'
            if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero'
        if (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) + poolInfo[arg1].field_1024:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    if nextUpdateBlock > block.number:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
            if block.number <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1280:
                poolInfo[idx].field_768 = block.number
                idx = idx + 1
                continue 
            if block.number < nextUpdateBlock:
                _282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_282] = 30
                mem[_282 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _282 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_768:
                    _314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_314] = 26
                    mem[_314 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _317 + 68] = mem[idx + _314 + 32]
                            idx = idx + 32
                            continue 
                        mem[_317 + 68] = mem[_317 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _317 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_382] = 26
                        mem[_382 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _394 + 68] = mem[idx + _382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_394 + 68] = mem[_394 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _394 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _411 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _411 + 68] = mem[idx + _393 + 32]
                        idx = idx + 32
                        continue 
                    mem[_411 + 68] = mem[_411 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _411 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                    _316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_316] = 26
                    mem[_316 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _329 + 68] = mem[idx + _316 + 32]
                            idx = idx + 32
                            continue 
                        mem[_329 + 68] = mem[_329 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _329 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_392] = 26
                        mem[_392 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _408 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _408 + 68] = mem[idx + _392 + 32]
                            idx = idx + 32
                            continue 
                        mem[_408 + 68] = mem[_408 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _408 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _407 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_407] = 26
                    mem[_407 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _437 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _437 + 68] = mem[idx + _407 + 32]
                        idx = idx + 32
                        continue 
                    mem[_437 + 68] = mem[_437 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _437 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                    _328 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_328] = 26
                    mem[_328 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _343 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _343 + 68] = mem[idx + _328 + 32]
                            idx = idx + 32
                            continue 
                        mem[_343 + 68] = mem[_343 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _343 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _406 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_406] = 26
                        mem[_406 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _434 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _434 + 68] = mem[idx + _406 + 32]
                            idx = idx + 32
                            continue 
                        mem[_434 + 68] = mem[_434 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _434 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _433 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_433] = 26
                    mem[_433 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _466 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _466 + 68] = mem[idx + _433 + 32]
                        idx = idx + 32
                        continue 
                    mem[_466 + 68] = mem[_466 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _466 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 26
                mem[_342 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _358 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _358 + 68] = mem[idx + _342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_358 + 68] = mem[_358 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _358 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_432] = 26
                    mem[_432 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _463 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _463 + 68] = mem[idx + _432 + 32]
                        idx = idx + 32
                        continue 
                    mem[_463 + 68] = mem[_463 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _463 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _462 = mem[64]
                mem[64] = mem[64] + 64
                mem[_462] = 26
                mem[_462 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _496 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _496 + 68] = mem[idx + _462 + 32]
                    idx = idx + 32
                    continue 
                mem[_496 + 68] = mem[_496 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _496 + -mem[64] + 100
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 30
            mem[_283 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > nextUpdateBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _283 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not nextUpdateBlock - poolInfo[idx].field_768:
                _315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_315] = 26
                mem[_315 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _321 + 68] = mem[idx + _315 + 32]
                        idx = idx + 32
                        continue 
                    mem[_321 + 68] = mem[_321 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _321 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _385 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_385] = 26
                    mem[_385 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _399 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _399 + 68] = mem[idx + _385 + 32]
                        idx = idx + 32
                        continue 
                    mem[_399 + 68] = mem[_399 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _399 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _398 = mem[64]
                mem[64] = mem[64] + 64
                mem[_398] = 26
                mem[_398 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    idx = idx + 1
                    continue 
                _420 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _420 + 68] = mem[idx + _398 + 32]
                    idx = idx + 32
                    continue 
                mem[_420 + 68] = mem[_420 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _420 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _334 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _334 + 68] = mem[idx + _320 + 32]
                        idx = idx + 32
                        continue 
                    mem[_334 + 68] = mem[_334 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _334 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_397] = 26
                    mem[_397 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _417 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _417 + 68] = mem[idx + _397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_417 + 68] = mem[_417 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _417 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _416 = mem[64]
                mem[64] = mem[64] + 64
                mem[_416] = 26
                mem[_416 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    idx = idx + 1
                    continue 
                _448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _448 + 68] = mem[idx + _416 + 32]
                    idx = idx + 32
                    continue 
                mem[_448 + 68] = mem[_448 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _448 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                _333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_333] = 26
                mem[_333 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _349 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _349 + 68] = mem[idx + _333 + 32]
                        idx = idx + 32
                        continue 
                    mem[_349 + 68] = mem[_349 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _349 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_415] = 26
                    mem[_415 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _445 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _445 + 68] = mem[idx + _415 + 32]
                        idx = idx + 32
                        continue 
                    mem[_445 + 68] = mem[_445 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _445 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_444] = 26
                mem[_444 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    idx = idx + 1
                    continue 
                _479 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _479 + 68] = mem[idx + _444 + 32]
                    idx = idx + 32
                    continue 
                mem[_479 + 68] = mem[_479 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _479 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 26
            mem[_348 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _363 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _363 + 68] = mem[idx + _348 + 32]
                    idx = idx + 32
                    continue 
                mem[_363 + 68] = mem[_363 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _363 + -mem[64] + 100
            if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _443 = mem[64]
                mem[64] = mem[64] + 64
                mem[_443] = 26
                mem[_443 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    idx = idx + 1
                    continue 
                _476 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _476 + 68] = mem[idx + _443 + 32]
                    idx = idx + 32
                    continue 
                mem[_476 + 68] = mem[_476 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _476 + -mem[64] + 100
            if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _475 = mem[64]
            mem[64] = mem[64] + 64
            mem[_475] = 26
            mem[_475 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = nextUpdateBlock
                idx = idx + 1
                continue 
            _507 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _507 + 68] = mem[idx + _475 + 32]
                idx = idx + 32
                continue 
            mem[_507 + 68] = mem[_507 + 74 len 26]
            revert with memory
              from mem[64]
               len _507 + -mem[64] + 100
    else:
        require ext_code.size(farmVaultAddress)
        call farmVaultAddress.sendfarm() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function massUpdatePoolsFarmV() payable {
    mem[64] = 96
    if msg.sender == farmVaultAddress:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
            if block.number <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1280:
                poolInfo[idx].field_768 = block.number
                idx = idx + 1
                continue 
            if block.number < nextUpdateBlock:
                _559 = mem[64]
                mem[64] = mem[64] + 64
                mem[_559] = 30
                mem[_559 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _559 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_768:
                    _623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_623] = 26
                    mem[_623 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _628 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _628 + 68] = mem[idx + _623 + 32]
                            idx = idx + 32
                            continue 
                        mem[_628 + 68] = mem[_628 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _628 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _757 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_757] = 26
                        mem[_757 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _781 + 68] = mem[idx + _757 + 32]
                            idx = idx + 32
                            continue 
                        mem[_781 + 68] = mem[_781 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _781 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_780] = 26
                    mem[_780 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _812 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _812 + 68] = mem[idx + _780 + 32]
                        idx = idx + 32
                        continue 
                    mem[_812 + 68] = mem[_812 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _812 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                    _627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_627] = 26
                    mem[_627 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _652 + 68] = mem[idx + _627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_652 + 68] = mem[_652 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _652 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_779] = 26
                        mem[_779 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _809 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _809 + 68] = mem[idx + _779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_809 + 68] = mem[_809 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _809 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _808 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_808] = 26
                    mem[_808 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _864 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _864 + 68] = mem[idx + _808 + 32]
                        idx = idx + 32
                        continue 
                    mem[_864 + 68] = mem[_864 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _864 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                    _651 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_651] = 26
                    mem[_651 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _680 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _680 + 68] = mem[idx + _651 + 32]
                            idx = idx + 32
                            continue 
                        mem[_680 + 68] = mem[_680 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _680 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_807] = 26
                        mem[_807 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _861 + 68] = mem[idx + _807 + 32]
                            idx = idx + 32
                            continue 
                        mem[_861 + 68] = mem[_861 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _861 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_860] = 26
                    mem[_860 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _923 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _923 + 68] = mem[idx + _860 + 32]
                        idx = idx + 32
                        continue 
                    mem[_923 + 68] = mem[_923 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _923 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_679] = 26
                mem[_679 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _711 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _711 + 68] = mem[idx + _679 + 32]
                        idx = idx + 32
                        continue 
                    mem[_711 + 68] = mem[_711 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _711 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_859] = 26
                    mem[_859 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _920 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _920 + 68] = mem[idx + _859 + 32]
                        idx = idx + 32
                        continue 
                    mem[_920 + 68] = mem[_920 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _920 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _919 = mem[64]
                mem[64] = mem[64] + 64
                mem[_919] = 26
                mem[_919 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _987 + 68] = mem[idx + _919 + 32]
                    idx = idx + 32
                    continue 
                mem[_987 + 68] = mem[_987 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _987 + -mem[64] + 100
            _560 = mem[64]
            mem[64] = mem[64] + 64
            mem[_560] = 30
            mem[_560 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > nextUpdateBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _560 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not nextUpdateBlock - poolInfo[idx].field_768:
                _624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_624] = 26
                mem[_624 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _632 + 68] = mem[idx + _624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_632 + 68] = mem[_632 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _632 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_760] = 26
                    mem[_760 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _786 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _786 + 68] = mem[idx + _760 + 32]
                        idx = idx + 32
                        continue 
                    mem[_786 + 68] = mem[_786 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _786 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_785] = 26
                mem[_785 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _821 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _821 + 68] = mem[idx + _785 + 32]
                    idx = idx + 32
                    continue 
                mem[_821 + 68] = mem[_821 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _821 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                _631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_631] = 26
                mem[_631 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _657 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _657 + 68] = mem[idx + _631 + 32]
                        idx = idx + 32
                        continue 
                    mem[_657 + 68] = mem[_657 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _657 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_784] = 26
                    mem[_784 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _818 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _818 + 68] = mem[idx + _784 + 32]
                        idx = idx + 32
                        continue 
                    mem[_818 + 68] = mem[_818 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _818 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _817 = mem[64]
                mem[64] = mem[64] + 64
                mem[_817] = 26
                mem[_817 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _875 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _875 + 68] = mem[idx + _817 + 32]
                    idx = idx + 32
                    continue 
                mem[_875 + 68] = mem[_875 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _875 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                _656 = mem[64]
                mem[64] = mem[64] + 64
                mem[_656] = 26
                mem[_656 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _686 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _686 + 68] = mem[idx + _656 + 32]
                        idx = idx + 32
                        continue 
                    mem[_686 + 68] = mem[_686 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _686 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_816] = 26
                    mem[_816 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _872 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _872 + 68] = mem[idx + _816 + 32]
                        idx = idx + 32
                        continue 
                    mem[_872 + 68] = mem[_872 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _872 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _871 = mem[64]
                mem[64] = mem[64] + 64
                mem[_871] = 26
                mem[_871 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _936 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _936 + 68] = mem[idx + _871 + 32]
                    idx = idx + 32
                    continue 
                mem[_936 + 68] = mem[_936 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _936 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _685 = mem[64]
            mem[64] = mem[64] + 64
            mem[_685] = 26
            mem[_685 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _716 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _716 + 68] = mem[idx + _685 + 32]
                    idx = idx + 32
                    continue 
                mem[_716 + 68] = mem[_716 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _716 + -mem[64] + 100
            if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _870 = mem[64]
                mem[64] = mem[64] + 64
                mem[_870] = 26
                mem[_870 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _933 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _933 + 68] = mem[idx + _870 + 32]
                    idx = idx + 32
                    continue 
                mem[_933 + 68] = mem[_933 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _933 + -mem[64] + 100
            if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_932] = 26
            mem[_932 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = nextUpdateBlock
                poolInfo[idx].field_768 = block.number
                idx = idx + 1
                continue 
            _998 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _998 + 68] = mem[idx + _932 + 32]
                idx = idx + 32
                continue 
            mem[_998 + 68] = mem[_998 + 74 len 26]
            revert with memory
              from mem[64]
               len _998 + -mem[64] + 100
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x774f6e6c79204661726d5661756c74206f72204465762063616e20646f20746869,
                        mem[197 len 31]
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
            if block.number <= poolInfo[idx].field_768:
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1280:
                poolInfo[idx].field_768 = block.number
                idx = idx + 1
                continue 
            if block.number < nextUpdateBlock:
                _561 = mem[64]
                mem[64] = mem[64] + 64
                mem[_561] = 30
                mem[_561 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_768 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _561 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_768:
                    _625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_625] = 26
                    mem[_625 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _636 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _636 + 68] = mem[idx + _625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_636 + 68] = mem[_636 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _636 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_763] = 26
                        mem[_763 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _791 + 68] = mem[idx + _763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_791 + 68] = mem[_791 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _791 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _790 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_790] = 26
                    mem[_790 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _830 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _830 + 68] = mem[idx + _790 + 32]
                        idx = idx + 32
                        continue 
                    mem[_830 + 68] = mem[_830 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _830 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                    _635 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_635] = 26
                    mem[_635 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _662 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _662 + 68] = mem[idx + _635 + 32]
                            idx = idx + 32
                            continue 
                        mem[_662 + 68] = mem[_662 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _662 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _789 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_789] = 26
                        mem[_789 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _827 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _827 + 68] = mem[idx + _789 + 32]
                            idx = idx + 32
                            continue 
                        mem[_827 + 68] = mem[_827 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _827 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_826] = 26
                    mem[_826 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _886 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _886 + 68] = mem[idx + _826 + 32]
                        idx = idx + 32
                        continue 
                    mem[_886 + 68] = mem[_886 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _886 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                    _661 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_661] = 26
                    mem[_661 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _692 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _692 + 68] = mem[idx + _661 + 32]
                            idx = idx + 32
                            continue 
                        mem[_692 + 68] = mem[_692 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _692 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_825] = 26
                        mem[_825 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _883 + 68] = mem[idx + _825 + 32]
                            idx = idx + 32
                            continue 
                        mem[_883 + 68] = mem[_883 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _883 + -mem[64] + 100
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_882] = 26
                    mem[_882 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _949 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _949 + 68] = mem[idx + _882 + 32]
                        idx = idx + 32
                        continue 
                    mem[_949 + 68] = mem[_949 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _949 + -mem[64] + 100
                if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _691 = mem[64]
                mem[64] = mem[64] + 64
                mem[_691] = 26
                mem[_691 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _721 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _721 + 68] = mem[idx + _691 + 32]
                        idx = idx + 32
                        continue 
                    mem[_721 + 68] = mem[_721 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _721 + -mem[64] + 100
                if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_881] = 26
                    mem[_881 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = block.number
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _946 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _946 + 68] = mem[idx + _881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_946 + 68] = mem[_946 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _946 + -mem[64] + 100
                if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_945] = 26
                mem[_945 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = block.number
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _1009 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1009 + 68] = mem[idx + _945 + 32]
                    idx = idx + 32
                    continue 
                mem[_1009 + 68] = mem[_1009 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1009 + -mem[64] + 100
            _562 = mem[64]
            mem[64] = mem[64] + 64
            mem[_562] = 30
            mem[_562 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_768 > nextUpdateBlock:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _562 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not nextUpdateBlock - poolInfo[idx].field_768:
                _626 = mem[64]
                mem[64] = mem[64] + 64
                mem[_626] = 26
                mem[_626 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _640 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _640 + 68] = mem[idx + _626 + 32]
                        idx = idx + 32
                        continue 
                    mem[_640 + 68] = mem[_640 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _640 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _766 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_766] = 26
                    mem[_766 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _796 + 68] = mem[idx + _766 + 32]
                        idx = idx + 32
                        continue 
                    mem[_796 + 68] = mem[_796 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _796 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _795 = mem[64]
                mem[64] = mem[64] + 64
                mem[_795] = 26
                mem[_795 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
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
            if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                _639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_639] = 26
                mem[_639 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _667 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _667 + 68] = mem[idx + _639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_667 + 68] = mem[_667 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _667 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_794] = 26
                    mem[_794 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _836 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _836 + 68] = mem[idx + _794 + 32]
                        idx = idx + 32
                        continue 
                    mem[_836 + 68] = mem[_836 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _836 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _835 = mem[64]
                mem[64] = mem[64] + 64
                mem[_835] = 26
                mem[_835 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _897 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _897 + 68] = mem[idx + _835 + 32]
                    idx = idx + 32
                    continue 
                mem[_897 + 68] = mem[_897 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _897 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                _666 = mem[64]
                mem[64] = mem[64] + 64
                mem[_666] = 26
                mem[_666 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _698 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _698 + 68] = mem[idx + _666 + 32]
                        idx = idx + 32
                        continue 
                    mem[_698 + 68] = mem[_698 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _698 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    _894 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _894 + 68] = mem[idx + _834 + 32]
                        idx = idx + 32
                        continue 
                    mem[_894 + 68] = mem[_894 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _894 + -mem[64] + 100
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_893] = 26
                mem[_893 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _962 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _962 + 68] = mem[idx + _893 + 32]
                    idx = idx + 32
                    continue 
                mem[_962 + 68] = mem[_962 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _962 + -mem[64] + 100
            if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _697 = mem[64]
            mem[64] = mem[64] + 64
            mem[_697] = 26
            mem[_697 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _726 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _726 + 68] = mem[idx + _697 + 32]
                    idx = idx + 32
                    continue 
                mem[_726 + 68] = mem[_726 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _726 + -mem[64] + 100
            if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_892] = 26
                mem[_892 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_768 = nextUpdateBlock
                    poolInfo[idx].field_768 = block.number
                    idx = idx + 1
                    continue 
                _959 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _959 + 68] = mem[idx + _892 + 32]
                    idx = idx + 32
                    continue 
                mem[_959 + 68] = mem[_959 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _959 + -mem[64] + 100
            if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _958 = mem[64]
            mem[64] = mem[64] + 64
            mem[_958] = 26
            mem[_958 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_768 = nextUpdateBlock
                poolInfo[idx].field_768 = block.number
                idx = idx + 1
                continue 
            _1020 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _1020 + 68] = mem[idx + _958 + 32]
                idx = idx + 32
                continue 
            mem[_1020 + 68] = mem[_1020 + 74 len 26]
            revert with memory
              from mem[64]
               len _1020 + -mem[64] + 100
}

function sub_c02154dc(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 256
    if msg.sender == owner:
        if not arg8:
            require ext_code.size(ilpAddress)
            call ilpAddress.set(uint256 rg1, address rg2, address rg3, address rg4, bool rg5) with:
                 gas gas_remaining wei
                args 0, arg1, address(arg4), address(arg5), arg6, arg7
        else:
            if nextUpdateBlock > block.number:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 10
                    if block.number <= poolInfo[idx].field_768:
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    if block.number < nextUpdateBlock:
                        _730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_730] = 30
                        mem[_730 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_768 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _730 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_768:
                            _829 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_829] = 26
                            mem[_829 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _834 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _834 + 68] = mem[idx + _829 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_834 + 68] = mem[_834 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _834 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _963 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_963] = 26
                                mem[_963 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _987 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _987 + 68] = mem[idx + _963 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_987 + 68] = mem[_987 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _987 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _986 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_986] = 26
                            mem[_986 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1018 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1018 + 68] = mem[idx + _986 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1018 + 68] = mem[_1018 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1018 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                            _833 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_833] = 26
                            mem[_833 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _858 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _858 + 68] = mem[idx + _833 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_858 + 68] = mem[_858 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _858 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _985 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_985] = 26
                                mem[_985 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1015 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1015 + 68] = mem[idx + _985 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1015 + 68] = mem[_1015 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1015 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1014] = 26
                            mem[_1014 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1070 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1070 + 68] = mem[idx + _1014 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1070 + 68] = mem[_1070 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1070 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                            _857 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_857] = 26
                            mem[_857 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _886 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _886 + 68] = mem[idx + _857 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_886 + 68] = mem[_886 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _886 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _1013 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1013] = 26
                                mem[_1013 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1067 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1067 + 68] = mem[idx + _1013 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1067 + 68] = mem[_1067 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1067 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1066] = 26
                            mem[_1066 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1129 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1129 + 68] = mem[idx + _1066 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1129 + 68] = mem[_1129 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1129 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _885 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_885] = 26
                        mem[_885 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _917 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _917 + 68] = mem[idx + _885 + 32]
                                idx = idx + 32
                                continue 
                            mem[_917 + 68] = mem[_917 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _917 + -mem[64] + 100
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _1065 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1065] = 26
                            mem[_1065 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1126 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1126 + 68] = mem[idx + _1065 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1126 + 68] = mem[_1126 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1126 + -mem[64] + 100
                        if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1125 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1125] = 26
                        mem[_1125 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _1193 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1193 + 68] = mem[idx + _1125 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1193 + 68] = mem[_1193 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1193 + -mem[64] + 100
                    _731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_731] = 30
                    mem[_731 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > nextUpdateBlock:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _731 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not nextUpdateBlock - poolInfo[idx].field_768:
                        _830 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_830] = 26
                        mem[_830 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _838 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _838 + 68] = mem[idx + _830 + 32]
                                idx = idx + 32
                                continue 
                            mem[_838 + 68] = mem[_838 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _838 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _966 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_966] = 26
                            mem[_966 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _992 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _992 + 68] = mem[idx + _966 + 32]
                                idx = idx + 32
                                continue 
                            mem[_992 + 68] = mem[_992 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _992 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _991 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_991] = 26
                        mem[_991 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1027 + 68] = mem[idx + _991 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1027 + 68] = mem[_1027 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1027 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                        _837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_837] = 26
                        mem[_837 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _863 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _863 + 68] = mem[idx + _837 + 32]
                                idx = idx + 32
                                continue 
                            mem[_863 + 68] = mem[_863 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _863 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _990 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_990] = 26
                            mem[_990 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1024 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1024 + 68] = mem[idx + _990 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1024 + 68] = mem[_1024 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1024 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1023 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1023] = 26
                        mem[_1023 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1081 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1081 + 68] = mem[idx + _1023 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1081 + 68] = mem[_1081 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1081 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                        _862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_862] = 26
                        mem[_862 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _892 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _892 + 68] = mem[idx + _862 + 32]
                                idx = idx + 32
                                continue 
                            mem[_892 + 68] = mem[_892 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _892 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _1022 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1022] = 26
                            mem[_1022 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1078 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1078 + 68] = mem[idx + _1022 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1078 + 68] = mem[_1078 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1078 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1077] = 26
                        mem[_1077 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1142 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1142 + 68] = mem[idx + _1077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1142 + 68] = mem[_1142 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1142 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_891] = 26
                    mem[_891 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _922 + 68] = mem[idx + _891 + 32]
                            idx = idx + 32
                            continue 
                        mem[_922 + 68] = mem[_922 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _922 + -mem[64] + 100
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1076 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1076] = 26
                        mem[_1076 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1139 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1139 + 68] = mem[idx + _1076 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1139 + 68] = mem[_1139 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1139 + -mem[64] + 100
                    if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1138] = 26
                    mem[_1138 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _1204 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1204 + 68] = mem[idx + _1138 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1204 + 68] = mem[_1204 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1204 + -mem[64] + 100
                require ext_code.size(ilpAddress)
                call ilpAddress.set(uint256 rg1, address rg2, address rg3, address rg4, bool rg5) with:
                     gas gas_remaining wei
                    args arg1, address(arg4), address(arg5), address(arg6), arg7
            else:
                require ext_code.size(farmVaultAddress)
                call farmVaultAddress.sendfarm() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ilpAddress)
                call ilpAddress.set(uint256 rg1, address rg2, address rg3, address rg4, bool rg5) with:
                     gas gas_remaining wei
                    args 0, arg1, address(arg4), address(arg5), arg6, arg7
    else:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
        if not arg8:
            require ext_code.size(ilpAddress)
            call ilpAddress.set(uint256 rg1, address rg2, address rg3, address rg4, bool rg5) with:
                 gas gas_remaining wei
                args 0, arg1, address(arg4), address(arg5), arg6, arg7
        else:
            if nextUpdateBlock > block.number:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 10
                    if block.number <= poolInfo[idx].field_768:
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    if block.number < nextUpdateBlock:
                        _735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_735] = 30
                        mem[_735 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_768 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _735 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_768:
                            _831 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_831] = 26
                            mem[_831 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _842 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _842 + 68] = mem[idx + _831 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_842 + 68] = mem[_842 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _842 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _969 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_969] = 26
                                mem[_969 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _997 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _997 + 68] = mem[idx + _969 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_997 + 68] = mem[_997 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _997 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_996] = 26
                            mem[_996 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1036 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1036 + 68] = mem[idx + _996 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1036 + 68] = mem[_1036 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1036 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                            _841 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_841] = 26
                            mem[_841 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _868 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _868 + 68] = mem[idx + _841 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_868 + 68] = mem[_868 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _868 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _995 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_995] = 26
                                mem[_995 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1033 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1033 + 68] = mem[idx + _995 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1033 + 68] = mem[_1033 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1033 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1032 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1032] = 26
                            mem[_1032 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1092 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1092 + 68] = mem[idx + _1032 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1092 + 68] = mem[_1092 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1092 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                            _867 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_867] = 26
                            mem[_867 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _898 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _898 + 68] = mem[idx + _867 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_898 + 68] = mem[_898 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _898 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _1031 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1031] = 26
                                mem[_1031 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1089 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1089 + 68] = mem[idx + _1031 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1089 + 68] = mem[_1089 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1089 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1088] = 26
                            mem[_1088 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1155 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1155 + 68] = mem[idx + _1088 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1155 + 68] = mem[_1155 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1155 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_897] = 26
                        mem[_897 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _927 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _927 + 68] = mem[idx + _897 + 32]
                                idx = idx + 32
                                continue 
                            mem[_927 + 68] = mem[_927 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _927 + -mem[64] + 100
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _1087 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1087] = 26
                            mem[_1087 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1152 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1152 + 68] = mem[idx + _1087 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1152 + 68] = mem[_1152 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1152 + -mem[64] + 100
                        if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1151] = 26
                        mem[_1151 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _1215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1215 + 68] = mem[idx + _1151 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1215 + 68] = mem[_1215 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1215 + -mem[64] + 100
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 30
                    mem[_736 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > nextUpdateBlock:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _736 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not nextUpdateBlock - poolInfo[idx].field_768:
                        _832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_832] = 26
                        mem[_832 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _846 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _846 + 68] = mem[idx + _832 + 32]
                                idx = idx + 32
                                continue 
                            mem[_846 + 68] = mem[_846 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _846 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_972] = 26
                            mem[_972 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1002 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1002 + 68] = mem[idx + _972 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1002 + 68] = mem[_1002 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1002 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1001] = 26
                        mem[_1001 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1045 + 68] = mem[idx + _1001 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1045 + 68] = mem[_1045 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1045 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                        _845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_845] = 26
                        mem[_845 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _873 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _873 + 68] = mem[idx + _845 + 32]
                                idx = idx + 32
                                continue 
                            mem[_873 + 68] = mem[_873 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _873 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _1000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1000] = 26
                            mem[_1000 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1042 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1042 + 68] = mem[idx + _1000 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1042 + 68] = mem[_1042 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1042 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1041] = 26
                        mem[_1041 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1103 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1103 + 68] = mem[idx + _1041 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1103 + 68] = mem[_1103 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1103 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                        _872 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_872] = 26
                        mem[_872 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _904 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _904 + 68] = mem[idx + _872 + 32]
                                idx = idx + 32
                                continue 
                            mem[_904 + 68] = mem[_904 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _904 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _1040 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1040] = 26
                            mem[_1040 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1100 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1100 + 68] = mem[idx + _1040 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1100 + 68] = mem[_1100 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1100 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1099 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1099] = 26
                        mem[_1099 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1168 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1168 + 68] = mem[idx + _1099 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1168 + 68] = mem[_1168 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1168 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_903] = 26
                    mem[_903 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _932 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _932 + 68] = mem[idx + _903 + 32]
                            idx = idx + 32
                            continue 
                        mem[_932 + 68] = mem[_932 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _932 + -mem[64] + 100
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1098] = 26
                        mem[_1098 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1165 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1165 + 68] = mem[idx + _1098 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1165 + 68] = mem[_1165 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1165 + -mem[64] + 100
                    if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1164] = 26
                    mem[_1164 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _1226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1226 + 68] = mem[idx + _1164 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1226 + 68] = mem[_1226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1226 + -mem[64] + 100
                require ext_code.size(ilpAddress)
                call ilpAddress.set(uint256 rg1, address rg2, address rg3, address rg4, bool rg5) with:
                     gas gas_remaining wei
                    args arg1, address(arg4), address(arg5), address(arg6), arg7
            else:
                require ext_code.size(farmVaultAddress)
                call farmVaultAddress.sendfarm() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ilpAddress)
                call ilpAddress.set(uint256 rg1, address rg2, address rg3, address rg4, bool rg5) with:
                     gas gas_remaining wei
                    args 0, arg1, address(arg4), address(arg5), arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_0 = arg4
    poolInfo[arg1].field_1536 = arg5
    poolInfo[arg1].field_1792 = arg6
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_512 = arg3
    poolInfo[arg1].field_1952 = Mask(96, 0, arg7)
}

function add(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, bool arg6, bool arg7) payable {
    mem[64] = 96
    require calldata.size - 4 >= 224
    if msg.sender == owner:
        if not arg7:
            require ext_code.size(ilpAddress)
            call ilpAddress.add(address rg1, address rg2, address rg3, bool rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg4), address(arg5), arg6
        else:
            if nextUpdateBlock > block.number:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 10
                    if block.number <= poolInfo[idx].field_768:
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    if block.number < nextUpdateBlock:
                        _729 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_729] = 30
                        mem[_729 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_768 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _729 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_768:
                            _837 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_837] = 26
                            mem[_837 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _842 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _842 + 68] = mem[idx + _837 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_842 + 68] = mem[_842 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _842 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _971 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_971] = 26
                                mem[_971 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _995 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _995 + 68] = mem[idx + _971 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_995 + 68] = mem[_995 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _995 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _994 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_994] = 26
                            mem[_994 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1026 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1026 + 68] = mem[idx + _994 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1026 + 68] = mem[_1026 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1026 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                            _841 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_841] = 26
                            mem[_841 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _866 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _866 + 68] = mem[idx + _841 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_866 + 68] = mem[_866 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _866 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _993 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_993] = 26
                                mem[_993 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1023 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1023 + 68] = mem[idx + _993 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1023 + 68] = mem[_1023 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1023 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1022 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1022] = 26
                            mem[_1022 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1078 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1078 + 68] = mem[idx + _1022 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1078 + 68] = mem[_1078 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1078 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                            _865 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_865] = 26
                            mem[_865 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _894 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _894 + 68] = mem[idx + _865 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_894 + 68] = mem[_894 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _894 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _1021 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1021] = 26
                                mem[_1021 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1075 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1075 + 68] = mem[idx + _1021 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1075 + 68] = mem[_1075 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1075 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1074] = 26
                            mem[_1074 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1137 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1137 + 68] = mem[idx + _1074 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1137 + 68] = mem[_1137 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1137 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _893 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_893] = 26
                        mem[_893 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _925 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _925 + 68] = mem[idx + _893 + 32]
                                idx = idx + 32
                                continue 
                            mem[_925 + 68] = mem[_925 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _925 + -mem[64] + 100
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _1073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1073] = 26
                            mem[_1073 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1134 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1134 + 68] = mem[idx + _1073 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1134 + 68] = mem[_1134 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1134 + -mem[64] + 100
                        if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1133 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1133] = 26
                        mem[_1133 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _1201 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1201 + 68] = mem[idx + _1133 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1201 + 68] = mem[_1201 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1201 + -mem[64] + 100
                    _730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_730] = 30
                    mem[_730 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > nextUpdateBlock:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _730 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not nextUpdateBlock - poolInfo[idx].field_768:
                        _838 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_838] = 26
                        mem[_838 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _846 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _846 + 68] = mem[idx + _838 + 32]
                                idx = idx + 32
                                continue 
                            mem[_846 + 68] = mem[_846 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _846 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_974] = 26
                            mem[_974 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1000 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1000 + 68] = mem[idx + _974 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1000 + 68] = mem[_1000 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1000 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_999] = 26
                        mem[_999 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1035 + 68] = mem[idx + _999 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1035 + 68] = mem[_1035 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1035 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                        _845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_845] = 26
                        mem[_845 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _871 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _871 + 68] = mem[idx + _845 + 32]
                                idx = idx + 32
                                continue 
                            mem[_871 + 68] = mem[_871 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _871 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _998 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_998] = 26
                            mem[_998 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1032 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1032 + 68] = mem[idx + _998 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1032 + 68] = mem[_1032 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1032 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1031 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1031] = 26
                        mem[_1031 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1089 + 68] = mem[idx + _1031 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1089 + 68] = mem[_1089 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1089 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                        _870 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_870] = 26
                        mem[_870 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _900 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _900 + 68] = mem[idx + _870 + 32]
                                idx = idx + 32
                                continue 
                            mem[_900 + 68] = mem[_900 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _900 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _1030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1030] = 26
                            mem[_1030 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1086 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1086 + 68] = mem[idx + _1030 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1086 + 68] = mem[_1086 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1086 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1085 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1085] = 26
                        mem[_1085 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1150 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1150 + 68] = mem[idx + _1085 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1150 + 68] = mem[_1150 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1150 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_899] = 26
                    mem[_899 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _930 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _930 + 68] = mem[idx + _899 + 32]
                            idx = idx + 32
                            continue 
                        mem[_930 + 68] = mem[_930 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _930 + -mem[64] + 100
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1084] = 26
                        mem[_1084 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1147 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1147 + 68] = mem[idx + _1084 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1147 + 68] = mem[_1147 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1147 + -mem[64] + 100
                    if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1146] = 26
                    mem[_1146 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _1212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1212 + 68] = mem[idx + _1146 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1212 + 68] = mem[_1212 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1212 + -mem[64] + 100
                require ext_code.size(ilpAddress)
                call ilpAddress.add(address rg1, address rg2, address rg3, bool rg4) with:
                     gas gas_remaining wei
                    args address(arg3), address(arg4), address(arg5), arg6
            else:
                require ext_code.size(farmVaultAddress)
                call farmVaultAddress.sendfarm() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ilpAddress)
                call ilpAddress.add(address rg1, address rg2, address rg3, bool rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg4), address(arg5), arg6
    else:
        if devaddr != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4572726f723a205265717569726520646576656c6f706572206f72204f776e65,
                        mem[197 len 31]
        if not arg7:
            require ext_code.size(ilpAddress)
            call ilpAddress.add(address rg1, address rg2, address rg3, bool rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg4), address(arg5), arg6
        else:
            if nextUpdateBlock > block.number:
                idx = 0
                while idx < poolInfo.length:
                    mem[0] = 10
                    if block.number <= poolInfo[idx].field_768:
                        idx = idx + 1
                        continue 
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_768 = block.number
                        idx = idx + 1
                        continue 
                    if block.number < nextUpdateBlock:
                        _735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_735] = 30
                        mem[_735 + 32] = 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_768 > block.number:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                            idx = 32
                            while idx < 30:
                                mem[idx + mem[64] + 68] = mem[idx + _735 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_768:
                            _839 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_839] = 26
                            mem[_839 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _850 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _850 + 68] = mem[idx + _839 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_850 + 68] = mem[_850 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _850 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _977 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_977] = 26
                                mem[_977 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1005 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1005 + 68] = mem[idx + _977 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1005 + 68] = mem[_1005 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1005 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1004] = 26
                            mem[_1004 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1044 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1044 + 68] = mem[idx + _1004 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1044 + 68] = mem[_1044 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1044 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / block.number - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                            _849 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_849] = 26
                            mem[_849 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _876 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _876 + 68] = mem[idx + _849 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_876 + 68] = mem[_876 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _876 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _1003 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1003] = 26
                                mem[_1003 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1041 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1041 + 68] = mem[idx + _1003 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1041 + 68] = mem[_1041 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1041 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1040 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1040] = 26
                            mem[_1040 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1100 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1100 + 68] = mem[idx + _1040 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1100 + 68] = mem[_1100 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1100 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                            _875 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_875] = 26
                            mem[_875 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                _906 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _906 + 68] = mem[idx + _875 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_906 + 68] = mem[_906 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _906 + -mem[64] + 100
                            if not 0 / totalAllocPoint:
                                _1039 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1039] = 26
                                mem[_1039 + 32] = 'SafeMath: division by zero'
                                if poolInfo[idx].field_1280:
                                    if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                    poolInfo[idx].field_768 = block.number
                                    idx = idx + 1
                                    continue 
                                _1097 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1097 + 68] = mem[idx + _1039 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1097 + 68] = mem[_1097 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _1097 + -mem[64] + 100
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1096 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1096] = 26
                            mem[_1096 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1163 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1163 + 68] = mem[idx + _1096 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1163 + 68] = mem[_1163 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1163 + -mem[64] + 100
                        if (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (block.number * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _905 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_905] = 26
                        mem[_905 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _935 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _935 + 68] = mem[idx + _905 + 32]
                                idx = idx + 32
                                continue 
                            mem[_935 + 68] = mem[_935 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _935 + -mem[64] + 100
                        if not (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            _1095 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1095] = 26
                            mem[_1095 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = block.number
                                idx = idx + 1
                                continue 
                            _1160 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1160 + 68] = mem[idx + _1095 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1160 + 68] = mem[_1160 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1160 + -mem[64] + 100
                        if 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1159] = 26
                        mem[_1159 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * (block.number * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = block.number
                            idx = idx + 1
                            continue 
                        _1223 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1223 + 68] = mem[idx + _1159 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1223 + 68] = mem[_1223 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1223 + -mem[64] + 100
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 30
                    mem[_736 + 32] = 'SafeMath: subtraction overflow'
                    if poolInfo[idx].field_768 > nextUpdateBlock:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _736 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not nextUpdateBlock - poolInfo[idx].field_768:
                        _840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_840] = 26
                        mem[_840 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _854 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _854 + 68] = mem[idx + _840 + 32]
                                idx = idx + 32
                                continue 
                            mem[_854 + 68] = mem[_854 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _854 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_980] = 26
                            mem[_980 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1010 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1010 + 68] = mem[idx + _980 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1010 + 68] = mem[_1010 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1010 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1009] = 26
                        mem[_1009 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1053 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1053 + 68] = mem[idx + _1009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1053 + 68] = mem[_1053 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1053 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) / nextUpdateBlock - poolInfo[idx].field_768 != BONUS_MULTIPLIER:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER):
                        _853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_853] = 26
                        mem[_853 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _881 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _881 + 68] = mem[idx + _853 + 32]
                                idx = idx + 32
                                continue 
                            mem[_881 + 68] = mem[_881 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _881 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _1008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1008] = 26
                            mem[_1008 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1050 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1050 + 68] = mem[idx + _1008 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1050 + 68] = mem[_1050 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1050 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1049] = 26
                        mem[_1049 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1111 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1111 + 68] = mem[idx + _1049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1111 + 68] = mem[_1111 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1111 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) / (nextUpdateBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER) != kinsPerBlock:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock):
                        _880 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_880] = 26
                        mem[_880 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            _912 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _912 + 68] = mem[idx + _880 + 32]
                                idx = idx + 32
                                continue 
                            mem[_912 + 68] = mem[_912 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _912 + -mem[64] + 100
                        if not 0 / totalAllocPoint:
                            _1048 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1048] = 26
                            mem[_1048 + 32] = 'SafeMath: division by zero'
                            if poolInfo[idx].field_1280:
                                if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                                poolInfo[idx].field_768 = nextUpdateBlock
                                idx = idx + 1
                                continue 
                            _1108 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1108 + 68] = mem[idx + _1048 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1108 + 68] = mem[_1108 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1108 + -mem[64] + 100
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1107 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1107] = 26
                        mem[_1107 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1176 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1176 + 68] = mem[idx + _1107 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1176 + 68] = mem[_1176 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1176 + -mem[64] + 100
                    if (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock) != poolInfo[idx].field_256:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _911 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_911] = 26
                    mem[_911 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _940 + 68] = mem[idx + _911 + 32]
                            idx = idx + 32
                            continue 
                        mem[_940 + 68] = mem[_940 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _940 + -mem[64] + 100
                    if not (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _1106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1106] = 26
                        mem[_1106 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_1280:
                            if (0 / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / poolInfo[idx].field_1280
                            poolInfo[idx].field_768 = nextUpdateBlock
                            idx = idx + 1
                            continue 
                        _1173 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1173 + 68] = mem[idx + _1106 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1173 + 68] = mem[_1173 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1173 + -mem[64] + 100
                    if 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1172] = 26
                    mem[_1172 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if (10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1024 += 10^18 * (nextUpdateBlock * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * BONUS_MULTIPLIER * kinsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                        poolInfo[idx].field_768 = nextUpdateBlock
                        idx = idx + 1
                        continue 
                    _1234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1234 + 68] = mem[idx + _1172 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1234 + 68] = mem[_1234 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1234 + -mem[64] + 100
                require ext_code.size(ilpAddress)
                call ilpAddress.add(address rg1, address rg2, address rg3, bool rg4) with:
                     gas gas_remaining wei
                    args address(arg3), address(arg4), address(arg5), arg6
            else:
                require ext_code.size(farmVaultAddress)
                call farmVaultAddress.sendfarm() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(ilpAddress)
                call ilpAddress.add(address rg1, address rg2, address rg3, bool rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg4), address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg3
    storC65A[stor10.length] = arg1
    storC65A[stor10.length] = arg2
    if block.number > startBlock:
        storC65A[stor10.length] = block.number
    else:
        storC65A[stor10.length] = startBlock
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = arg4
    storC65A[stor10.length].field_0 = arg5
    storC65A[stor10.length].field_160 = Mask(96, 0, arg6)
}



}
