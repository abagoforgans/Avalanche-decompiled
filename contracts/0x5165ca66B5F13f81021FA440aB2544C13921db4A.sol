contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const DECIMALS = 5

const MAX_UINT256 = -1

const RATE_DECIMALS = 7


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address pairContractAddress;
mapping of uint8 stor4;
uint256 liquidityFee;
uint256 treasuryFee;
uint256 sub_3756aed6;
uint256 sellFee;
uint256 sub_f8a6e1ae;
uint256 totalFee;
uint256 feeDenominator;
address stor12;
address stor13;
address autoLiquidityReceiverAddress;
address sub_08b1fd8fAddress;
address stor16;
address sub_e2835955Address;
uint256 stor18;
uint8 swapEnabled; offset 160
address sub_be81b259Address;
address routerAddress;
uint8 stor21; offset 160
uint8 stor21; offset 168
uint8 stor21; offset 176
uint128 stor21; offset 176
uint128 stor21; offset 168
address pairAddress;
uint256 sub_9b87676c;
uint256 sub_32b75683;
uint256 sub_9b2912cc;
uint256 _totalSupply;
uint256 stor26;
mapping of uint256 stor27;
mapping of uint256 allowance;
mapping of uint8 stor29;
mapping of uint8 stor30;

function name() {
    return name[0 len name.length]
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

function sellFee() {
    return sellFee
}

function decimals() {
    return decimals
}

function sub_32b75683(?) {
    return sub_32b75683
}

function sub_3756aed6(?) {
    return sub_3756aed6
}

function _totalSupply() {
    return _totalSupply
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor30[arg1])
}

function pairContract() {
    return pairContractAddress
}

function sub_6912652c(?) {
    return bool(uint8(stor21.field_176))
}

function swapEnabled() {
    return bool(swapEnabled)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
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

function pair() {
    return pairAddress
}

function sub_afb9cf6d(?) {
    return bool(uint8(stor21.field_168))
}

function sub_be81b259(?) {
    return sub_be81b259Address
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function treasuryFee() {
    return treasuryFee
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e2835955(?) {
    return sub_e2835955Address
}

function router() {
    return routerAddress
}

function sub_f8a6e1ae(?) {
    return sub_f8a6e1ae
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor29[arg1])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isNotInSwap() {
    return not bool(uint8(stor21.field_160))
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function setWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor26:
        revert with 0, 'SafeMath: division by zero'
    return (stor27[address(arg1)] / stor26)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= 750000:
        revert with 0, 'Gas must be lower than 750000'
    stor18 = arg1
}

function sub_cfbac92f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(80, 0, stor21.field_176) = Mask(80, 0, arg1)
    if not arg1:
    else:
        sub_9b2912cc = block.timestamp
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(88, 0, stor21.field_168) = Mask(88, 0, arg1)
    if not arg1:
    else:
        sub_32b75683 = block.timestamp
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_be81b259Address = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(stor16)
    call stor16.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if stor27[stor12] > -65629639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor27[stor13] > -stor27[stor12] - 65629639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor26:
        revert with 0, 'SafeMath: division by zero'
    return (-stor27[stor12] + -stor27[stor13] - 65629639936 / stor26)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if arg2 > allowance[msg.sender][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_37c9be87(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0xfe6f6e6c7920636f6e747261637420616464726573732c206e6f7420616c6c6f7765642065787465726e616c6c79206f776e6564206163636f756e,
                    mem[223 len 5]
    stor29[address(arg1)] = uint8(arg2)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require pairAddress != arg1
    stor30[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(stor16)
        call stor16.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if not stor26:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stor16)
        call stor16.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor27[address(arg1)] / stor26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAllToTreasury() {
    uint8(stor21.field_160) = 1
    require msg.sender == owner
    if not stor26:
        revert with 0, 'SafeMath: division by zero'
    if stor27[this.address] / stor26 <= 0:
        revert with 0, 
                    32,
                    51,
                    0x745468657265206973206e6f204f4345414e20746f6b656e206465706f736974656420696e20746f6b656e20636f6e74726163,
                    mem[279 len 13]
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[452 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor27[this.address] / stor26, 0, 160, sub_08b1fd8fAddress, block.timestamp, 2, mem[452 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor21.field_160) = 0
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor26:
        revert with 0, 'SafeMath: division by zero'
    if stor27[stor12] > -65629639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor27[stor13] > -stor27[stor12] - 65629639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor26:
        revert with 0, 'SafeMath: division by zero'
    if not stor27[address(stor21.field_0)] / stor26:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor27[stor12] + -stor27[stor13] - 65629639936 / stor26:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor27[stor12] + -stor27[stor13] - 65629639936 / stor26)
    if 2 * stor27[address(stor21.field_0)] / stor26 / stor27[address(stor21.field_0)] / stor26 != 2:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor27[stor12] + -stor27[stor13] - 65629639936 / stor26:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor27[stor12] + -stor27[stor13] - 65629639936 / stor26)
    if 2 * stor27[address(stor21.field_0)] / stor26 * arg1 / arg1 != 2 * stor27[address(stor21.field_0)] / stor26:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor27[stor12] + -stor27[stor13] - 65629639936 / stor26:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor27[address(stor21.field_0)] / stor26 * arg1 / -stor27[stor12] + -stor27[stor13] - 65629639936 / stor26)
}



}
