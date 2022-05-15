contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Avanomics'

const decimals = 4

const symbol = 'Avanomics'


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 devFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 maxRoomRent;
uint8 hotelCaliforniaMode;
mapping of uint8 stor18;
uint256 deadBlocks;
uint256 launchedAt;
uint256 sellMultiplier;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
uint256 stor25;
uint256 stor26;
address routerAddress;
address pairAddress;
uint8 tradingOpen; offset 160
uint128 stor29; offset 160
address pairContractAddress;
address distributorAddress;
uint256 stor31;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor32; offset 16
uint8 swapEnabled;
uint8 stor34; offset 8
address masterAddress; offset 16
uint256 swapThreshold;
uint256 rebase_count;
uint256 rate;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;

function swapThreshold() {
    return swapThreshold
}

function rebase_count() {
    return rebase_count
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return _totalSupply
}

function totalFee() {
    return totalFee
}

function hotelCaliforniaMode() {
    return bool(hotelCaliforniaMode)
}

function rate() {
    return rate
}

function _totalSupply() {
    return _totalSupply
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function pairContract() {
    return pairContractAddress
}

function isTimelockExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function devFee() {
    return devFee
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function isHouseguest(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function maxRoomRent() {
    return maxRoomRent
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function devFeeReceiver() {
    return devFeeReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function master() {
    return masterAddress
}

function router() {
    return routerAddress
}

function deadBlocks() {
    return deadBlocks
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function sellMultiplier() {
    return sellMultiplier
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor34)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function checkMaxTxAmount() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (_maxTxAmount / rate)
}

function checkSwapThreshold() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (swapThreshold / rate)
}

function checkMaxWalletToken() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (_maxWalletToken / rate)
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    masterAddress = arg1
}

function launchStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    launchedAt = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    pairContractAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function set_max_roomrent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    maxRoomRent = 10^9 * arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (stor4[address(arg1)] / rate)
}

function enable_hotel_CaliforniaMode(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    hotelCaliforniaMode = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor6[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor25 = arg1
    stor26 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor7[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 250 * 3600
    stor31 = arg1
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor32 = Mask(240, 16, arg1) >> 16
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    devFeeReceiverAddress = arg3
}

function sweep() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor29 = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if stor4[stor2] > -4007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4[stor3] > -stor4[stor2] - 4007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (-stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate)
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setMaxTxPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5603de40d0ec000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5603de40d0ec000 != arg1:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxTxAmount = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5603de40d0ec000 * arg1
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5603de40d0ec000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5603de40d0ec000 != arg1:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxWalletToken = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5603de40d0ec000 * arg1
}

function sub_ca1d908c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 18
        stor18[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339639ae7e000 * arg2 / 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339639ae7e000 != arg2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    swapThreshold = 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339639ae7e000 * arg2
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    devFee = arg4
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg4 + arg3 + arg2 + arg1
    feeDenominator = arg5
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor9[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if not rate:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor4[address(arg1)] / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    rebase_count++
    if stor34:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if arg2 + _totalSupply < _totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            _totalSupply += arg2
        else:
            if -arg2 > _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            _totalSupply += arg2
        if test266151307() < _totalSupply:
            _totalSupply = test266151307()
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
        rate = -4007913129639936 / _totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        emit LogRebase(_totalSupply, arg1);
    else:
        emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor4[stor2] > -4007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4[stor3] > -stor4[stor2] - 4007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor4[stor28] / rate:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate)
    if 2 * stor4[stor28] / rate / stor4[stor28] / rate != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate)
    if 2 * stor4[stor28] / rate * arg1 / arg1 != 2 * stor4[stor28] / rate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor4[stor28] / rate * arg1 / -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor4[stor2] > -4007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor4[stor3] > -stor4[stor2] - 4007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor4[stor28] / rate:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate > arg1)
    if 2 * stor4[stor28] / rate / stor4[stor28] / rate != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate > arg1)
    if 2 * stor4[stor28] / rate * arg2 / arg2 != 2 * stor4[stor28] / rate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor4[stor28] / rate * arg2 / -stor4[stor2] + -stor4[stor3] - 4007913129639936 / rate > arg1)
}

function sub_60dbacdf(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if ('cd', 4).length >= 5001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e474153204572726f723a206d6178206164647265737320616c6c6f77656420697320353030,
                    mem[202 len 26]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 9
        if not stor9[address(cd[((32 * idx) + cd[4] + 36)])]:
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 4
            _23 = mem[64]
            mem[64] = mem[64] + 64
            mem[_23] = 26
            mem[_23 + 32] = 'SafeMath: division by zero'
            if not rate:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _23 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 36] = stor4[address(cd[((32 * idx) + cd[4] + 36)])] / rate
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), stor4[address(cd[((32 * idx) + cd[4] + 36)])] / rate
        idx = idx + 1
        continue 
}

function rebase_percentage(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg2:
        if not _totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor34:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor34:
                revert with 0, 'Try again'
            if arg1 * _totalSupply / 1000:
                if arg1 * _totalSupply / 1000 >= 0:
                    if (arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += arg1 * _totalSupply / 1000
                else:
                    if -1 * arg1 * _totalSupply / 1000 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply += arg1 * _totalSupply / 1000
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -4007913129639936 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not _totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor34:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * arg1 * _totalSupply / 1000 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, arg1 * _totalSupply / 1000) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * arg1 * _totalSupply / 1000 / -1 == arg1 * _totalSupply / 1000
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor34:
                revert with 0, 'Try again'
            if -1 * arg1 * _totalSupply / 1000:
                if -1 * arg1 * _totalSupply / 1000 >= 0:
                    if (-1 * arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += -1 * arg1 * _totalSupply / 1000
                else:
                    if test266151307() * arg1 * _totalSupply / 1000 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply += -1 * arg1 * _totalSupply / 1000
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -4007913129639936 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}



}
