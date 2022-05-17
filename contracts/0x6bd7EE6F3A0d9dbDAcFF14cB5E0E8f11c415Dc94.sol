contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 6

const symbol = ''


address owner;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor24;
uint256 stor25;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint8 autoBuybackEnabled;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
address stor39;
address stor40;
uint256 stor41;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor44;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function maxWalletToken() {
    return maxWalletToken
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function clearBuybackMultiplier() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor31 = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxWalletToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    maxWalletToken = 10^9 * arg1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < 750000
    stor41 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor24 = arg1
    stor25 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor12[address(arg1)] = uint8(arg2)
}

function setIsWalletLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor13[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2 / 100
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg2
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor29 = arg1
    stor30 = arg2
    stor32 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    autoBuybackEnabled = uint8(arg1)
    stor34 = arg2
    stor35 = 0
    stor36 = arg3 / 100
    stor37 = arg4
    stor38 = block.number
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(stor39)
    call stor39.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor40)
    call stor40.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor15 = arg1
    stor16 = arg2
    stor17 = arg3
    stor18 = arg4
    stor19 = arg5
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg5 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor20 = arg5 + arg4 + arg3 + arg2 + arg1
    stor21 = arg6
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor44 = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor44 = 0
    if arg2:
        stor31 = block.timestamp
        emit BuybackMultiplierActive(stor32);
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 != this.address
    require pairAddress != arg1
    stor14[address(arg1)] = uint8(arg2)
    require ext_code.size(stor39)
    if not arg2:
        call stor39.0x14b6ca96 with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor40)
        call stor40.0x14b6ca96 with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor39.0x14b6ca96 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor40)
        call stor40.0x14b6ca96 with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor27]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if 2 * balanceOf[stor27] / balanceOf[stor27] != 2:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if 2 * balanceOf[stor27] * arg1 / arg1 != 2 * balanceOf[stor27]:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor27] * arg1 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor27]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if 2 * balanceOf[stor27] / balanceOf[stor27] != 2:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if 2 * balanceOf[stor27] * arg2 / arg2 != 2 * balanceOf[stor27]:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor27] * arg2 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor32 + stor31 < stor31:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor32 + stor31:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor20:
        if not stor30:
            revert with 0, 'SafeMath: division by zero'
        if stor20 > 0 / stor30:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor30) - stor20:
            if not stor32:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor32) + stor20 < stor20:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stor32) + stor20)
        if (0 / stor30 * stor32) - (stor20 * stor32) + (0 / stor30 * stor31) - (stor20 * stor31) - (0 / stor30 * block.timestamp) + (stor20 * block.timestamp) / (0 / stor30) - stor20 != stor32 + stor31 - block.timestamp:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stor32:
            revert with 0, 'SafeMath: division by zero'
        if ((0 / stor30 * stor32) - (stor20 * stor32) + (0 / stor30 * stor31) - (stor20 * stor31) - (0 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20 < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / stor30 * stor32) - (stor20 * stor32) + (0 / stor30 * stor31) - (stor20 * stor31) - (0 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20)
    if stor29 * stor20 / stor20 != stor29:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor30:
        revert with 0, 'SafeMath: division by zero'
    if stor20 > stor29 * stor20 / stor30:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor29 * stor20 / stor30) - stor20:
        if not stor32:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor32) + stor20 < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stor32) + stor20)
    if (stor29 * stor20 / stor30 * stor32) - (stor20 * stor32) + (stor29 * stor20 / stor30 * stor31) - (stor20 * stor31) - (stor29 * stor20 / stor30 * block.timestamp) + (stor20 * block.timestamp) / (stor29 * stor20 / stor30) - stor20 != stor32 + stor31 - block.timestamp:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not stor32:
        revert with 0, 'SafeMath: division by zero'
    if ((stor29 * stor20 / stor30 * stor32) - (stor20 * stor32) + (stor29 * stor20 / stor30 * stor31) - (stor20 * stor31) - (stor29 * stor20 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20 < stor20:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor29 * stor20 / stor30 * stor32) - (stor20 * stor32) + (stor29 * stor20 / stor30 * stor31) - (stor20 * stor31) - (stor29 * stor20 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20)
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + 1 >= block.number:
        if 1 > stor21:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor21 - 1)
    if not arg1:
        return stor20
    if stor32 + stor31 < stor31:
        revert with 0, 'SafeMath: addition overflow'
    if stor32 + stor31 <= block.timestamp:
        return stor20
    if stor32 + stor31 < stor31:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor32 + stor31:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor20:
        if not stor30:
            revert with 0, 'SafeMath: division by zero'
        if stor20 > 0 / stor30:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor30) - stor20:
            if not stor32:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor32) + stor20 < stor20:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stor32) + stor20)
        if (0 / stor30 * stor32) - (stor20 * stor32) + (0 / stor30 * stor31) - (stor20 * stor31) - (0 / stor30 * block.timestamp) + (stor20 * block.timestamp) / (0 / stor30) - stor20 != stor32 + stor31 - block.timestamp:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stor32:
            revert with 0, 'SafeMath: division by zero'
        if ((0 / stor30 * stor32) - (stor20 * stor32) + (0 / stor30 * stor31) - (stor20 * stor31) - (0 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20 < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / stor30 * stor32) - (stor20 * stor32) + (0 / stor30 * stor31) - (stor20 * stor31) - (0 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20)
    if stor29 * stor20 / stor20 != stor29:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor30:
        revert with 0, 'SafeMath: division by zero'
    if stor20 > stor29 * stor20 / stor30:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor29 * stor20 / stor30) - stor20:
        if not stor32:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor32) + stor20 < stor20:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stor32) + stor20)
    if (stor29 * stor20 / stor30 * stor32) - (stor20 * stor32) + (stor29 * stor20 / stor30 * stor31) - (stor20 * stor31) - (stor29 * stor20 / stor30 * block.timestamp) + (stor20 * block.timestamp) / (stor29 * stor20 / stor30) - stor20 != stor32 + stor31 - block.timestamp:
        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not stor32:
        revert with 0, 'SafeMath: division by zero'
    if ((stor29 * stor20 / stor30 * stor32) - (stor20 * stor32) + (stor29 * stor20 / stor30 * stor31) - (stor20 * stor31) - (stor29 * stor20 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20 < stor20:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor29 * stor20 / stor30 * stor32) - (stor20 * stor32) + (stor29 * stor20 / stor30 * stor31) - (stor20 * stor31) - (stor29 * stor20 / stor30 * block.timestamp) + (stor20 * block.timestamp) / stor32) + stor20)
}



}
