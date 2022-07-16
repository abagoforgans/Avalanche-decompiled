contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - transfer(address arg1, uint256 arg2)
#  - secureTransfer(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const DECIMALS = 5

const MAX_UINT256 = -1

const RATE_DECIMALS = 7


array of struct stor0;
array of struct stor1;
uint8 _decimals;
address owner;
uint8 stor103;
address pairContractAddress;
mapping of uint8 stor154;
uint256 liquidityFee;
uint256 treasuryFee;
uint256 sub_eba34911;
uint256 sub_55f1de35;
uint256 sub_407ae581;
uint256 blackHoleFee;
uint256 totalFee;
uint256 feeDenominator;
address DEADAddress;
address ZEROAddress;
address autoLiquidityReceiverAddress;
address sub_08b1fd8fAddress;
address sub_40d109a4Address;
uint8 swapEnabled; offset 160
address blackHoleAddress;
address routerAddress;
uint8 stor170; offset 160
address pairAddress;
uint256 sub_79a64101;
uint8 sub_afb9cf6d;
uint8 sub_6912652c; offset 8
uint16 stor172;
uint256 stor172; offset 8
uint256 sub_9b87676c;
uint256 sub_32b75683;
uint256 sub_9b2912cc;
uint256 _totalSupply;
uint256 reserve1;
mapping of uint256 sub_75f3c647;
mapping of uint256 allowance;
mapping of uint8 stor180;
uint256 sub_d465eeff;
uint256 sub_e388ec2a;
uint32 maxTokenPerWalletPercent;
uint256 sub_c91bc8a7;
uint256 sub_fec4d0b4;
mapping of uint256 sub_3bec1a87;
mapping of uint256 sub_94e0a542;
uint8 sub_6903f6ff;
mapping of uint256 sub_34e0ee2e;
uint8 disableAllFee;
address distributorAddress; offset 8
uint256 sub_60e71962;
address devAddress;
uint256 devFee;
uint8 isOpen;
mapping of uint8 stor195;

function DEAD() {
    return DEADAddress
}

function sub_08b1fd8f(?) {
    return sub_08b1fd8fAddress
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

function _isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor154[arg1])
}

function decimals() {
    return _decimals
}

function _decimals() {
    return _decimals
}

function sub_32b75683(?) {
    return sub_32b75683
}

function sub_34e0ee2e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_34e0ee2e[arg1]
}

function devAddress() {
    return devAddress
}

function sub_3bec1a87(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_3bec1a87[arg1][arg2]
}

function _totalSupply() {
    return _totalSupply
}

function sub_407ae581(?) {
    return sub_407ae581
}

function sub_40d109a4(?) {
    return sub_40d109a4Address
}

function isOpen() {
    return bool(isOpen)
}

function pairContract() {
    return pairContractAddress
}

function sub_55f1de35(?) {
    return sub_55f1de35
}

function ZERO() {
    return ZEROAddress
}

function paused() {
    return bool(stor103)
}

function sub_60e71962(?) {
    return sub_60e71962
}

function devFee() {
    return devFee
}

function sub_6903f6ff(?) {
    return bool(sub_6903f6ff)
}

function sub_6912652c(?) {
    return bool(sub_6912652c)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_75f3c647(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_75f3c647[address(arg1)]
}

function sub_79a64101(?) {
    return sub_79a64101
}

function blackHoleFee() {
    return blackHoleFee
}

function owner() {
    return owner
}

function getReserve1() {
    return reserve1
}

function disableAllFee() {
    return bool(disableAllFee)
}

function sub_94e0a542(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_94e0a542[arg1][arg2]
}

function liquidityFee() {
    return liquidityFee
}

function sub_9b2912cc(?) {
    return sub_9b2912cc
}

function sub_9b87676c(?) {
    return sub_9b87676c
}

function blackHole() {
    return blackHoleAddress
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function sub_afb9cf6d(?) {
    return bool(sub_afb9cf6d)
}

function sub_c91bc8a7(?) {
    return sub_c91bc8a7
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function treasuryFee() {
    return treasuryFee
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor154[address(arg1)])
}

function sub_d465eeff(?) {
    return sub_d465eeff
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e388ec2a(?) {
    return sub_e388ec2a
}

function sub_eba34911(?) {
    return sub_eba34911
}

function router() {
    return routerAddress
}

function maxTokenPerWalletPercent() {
    return maxTokenPerWalletPercent
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor180[arg1])
}

function sub_fbcf565c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor195[arg1])
}

function sub_fec4d0b4(?) {
    return sub_fec4d0b4
}

function isNotInSwap() {
    return not bool(uint8(stor170.field_160))
}

function sub_9d67f4dd(?) {
    if _totalSupply and sub_c91bc8a7 > -1 / _totalSupply:
        revert with 0, 17
    return (_totalSupply * sub_c91bc8a7 / 10000)
}

function sub_9ee9aaae(?) {
    if _totalSupply and sub_fec4d0b4 > -1 / _totalSupply:
        revert with 0, 17
    return (_totalSupply * sub_fec4d0b4 / 10000)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c0543181(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_60e71962 = arg1
}

function getMaxTokenPerWallet() {
    if _totalSupply and maxTokenPerWalletPercent > -1 / _totalSupply:
        revert with 0, 17
    return (_totalSupply * maxTokenPerWalletPercent / 10000)
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pairContractAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_45fc391b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6903f6ff = uint8(bool(arg1))
}

function setDistributor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributorAddress = arg1
}

function sub_1d89f1de(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    disableAllFee = uint8(bool(arg1))
}

function sub_6422039d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_34e0ee2e[address(arg1)] = arg2
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not reserve1:
        revert with 0, 'SafeMath: division by zero', 0
    return (sub_75f3c647[address(arg1)] / reserve1)
}

function openTrade() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isOpen = 1
    sub_32b75683 = block.timestamp
    uint16(stor172.field_0) = 257
    sub_9b2912cc = block.timestamp
}

function sub_b5682318(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devAddress = address(arg1)
    devFee = arg2
}

function claim() {
    require ext_code.size(distributorAddress)
    call distributorAddress.0x1accf233 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_06c5f92e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor195[address(arg1)] = uint8(bool(arg2))
}

function setWhitelist(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154[address(arg1)] = uint8(arg2)
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_afb9cf6d = uint8(arg1)
    if not arg1:
    else:
        sub_32b75683 = block.timestamp
}

function sub_cfbac92f(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor172.field_8) = Mask(248, 0, bool(arg1))
    if not arg1:
    else:
        sub_9b2912cc = block.timestamp
}

function setTimeframeQuotaIn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ': Timeframe token quota in cannot be 0'
    sub_c91bc8a7 = arg1
}

function setTimeframeExpiresAfter(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ': Timeframe expiration cannot be 0'
    sub_e388ec2a = arg1
}

function setTimeframeQuotaOut(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ': Timeframe token quota out cannot be 0'
    sub_fec4d0b4 = arg1
}

function sub_37c9be87(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'null address can not be a bot'
    stor180[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3ad4b32e(?) {
    require ext_code.size(distributorAddress)
    staticcall distributorAddress.getAccountInfo(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor103:
            revert with 0, 'Pausable: not paused'
        stor103 = 0
        emit Unpaused(msg.sender);
    else:
        if stor103:
            revert with 0, 'Pausable: paused'
        stor103 = 1
        emit Paused(msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_40d109a4Address = arg3
    blackHoleAddress = arg4
    stor154[address(arg2)] = 1
    stor154[stor165] = 1
    stor154[stor167] = 1
    stor154[stor168] = 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function getCirculatingSupply() {
    if sub_75f3c647[stor163] > -629639936:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -629639936 < sub_75f3c647[stor163]:
        revert with 0, 17
    if sub_75f3c647[stor164] > -sub_75f3c647[stor163] - 629639936:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -sub_75f3c647[stor163] - 629639936 < sub_75f3c647[stor164]:
        revert with 0, 17
    if not reserve1:
        revert with 0, 'SafeMath: division by zero', 0
    return (-sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1)
}

function sub_31bb88c4(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint32(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, ': Max token per wallet percentage cannot be 0'
    maxTokenPerWalletPercent = uint32(arg1)
    if sub_c91bc8a7 > uint32(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ': Max token per wallet must be above or equal to timeframeQuotaIn'
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityFee = arg1
    treasuryFee = arg2
    sub_55f1de35 = arg3
    sub_eba34911 = arg4
    sub_407ae581 = arg5
    blackHoleFee = arg6
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg6:
        revert with 0, 17
    if arg6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 + arg6 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2 + arg3 + arg6 + arg4
}

function getOverviewOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_d465eeff > !sub_e388ec2a:
        revert with 0, 17
    if _totalSupply and sub_c91bc8a7 > -1 / _totalSupply:
        revert with 0, 17
    if _totalSupply * sub_c91bc8a7 / 10000 < sub_3bec1a87[stor181][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and sub_3bec1a87[stor181][address(arg1)] >= 0:
        revert with 0, 17
    if sub_3bec1a87[stor181][address(arg1)] < 0 and _totalSupply * sub_c91bc8a7 / 10000 > sub_3bec1a87[stor181][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if _totalSupply and sub_fec4d0b4 > -1 / _totalSupply:
        revert with 0, 17
    if _totalSupply * sub_fec4d0b4 / 10000 < sub_94e0a542[stor181][address(arg1)] - 0x8000000000000000000000000000000000000000000000000000000000000000 and sub_94e0a542[stor181][address(arg1)] >= 0:
        revert with 0, 17
    if sub_94e0a542[stor181][address(arg1)] < 0 and _totalSupply * sub_fec4d0b4 / 10000 > sub_94e0a542[stor181][address(arg1)] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return sub_d465eeff + sub_e388ec2a, 
           sub_c91bc8a7,
           sub_fec4d0b4,
           (_totalSupply * sub_c91bc8a7 / 10000) - sub_3bec1a87[stor181][address(arg1)],
           (_totalSupply * sub_fec4d0b4 / 10000) - sub_94e0a542[stor181][address(arg1)]
}

function withdrawAllToTreasury() {
    uint8(stor170.field_160) = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not reserve1:
        revert with 0, 'SafeMath: division by zero', 0
    if sub_75f3c647[this.address] / reserve1 <= 0:
        revert with 0, 'There is no  token deposited in token contract'
    mem[192] = this.address
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[224] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 260] = sub_75f3c647[this.address] / reserve1
    idx = 0
    s = ceil32(return_data.size) + 452
    t = 192
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args sub_75f3c647[this.address] / reserve1, 0, 160, sub_08b1fd8fAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor170.field_160) = 0
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not reserve1:
        revert with 0, 'SafeMath: division by zero', 0
    if sub_75f3c647[stor163] > -629639936:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -629639936 < sub_75f3c647[stor163]:
        revert with 0, 17
    if sub_75f3c647[stor164] > -sub_75f3c647[stor163] - 629639936:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if -sub_75f3c647[stor163] - 629639936 < sub_75f3c647[stor164]:
        revert with 0, 17
    if not reserve1:
        revert with 0, 'SafeMath: division by zero', 0
    if not sub_75f3c647[address(stor170.field_0)] / reserve1:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not -sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / -sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1)
    if sub_75f3c647[address(stor170.field_0)] / reserve1 and 2 > -1 / sub_75f3c647[address(stor170.field_0)] / reserve1:
        revert with 0, 17
    if not sub_75f3c647[address(stor170.field_0)] / reserve1:
        revert with 0, 18
    if 2 * sub_75f3c647[address(stor170.field_0)] / reserve1 / sub_75f3c647[address(stor170.field_0)] / reserve1 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not -sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / -sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1)
    if arg1 and 2 * sub_75f3c647[address(stor170.field_0)] / reserve1 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * sub_75f3c647[address(stor170.field_0)] / reserve1 / arg1 != 2 * sub_75f3c647[address(stor170.field_0)] / reserve1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not -sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * sub_75f3c647[address(stor170.field_0)] / reserve1 / -sub_75f3c647[stor163] + -sub_75f3c647[stor164] - 629639936 / reserve1)
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function _name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function _symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}



}
