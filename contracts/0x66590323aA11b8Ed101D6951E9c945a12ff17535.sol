contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferMultiple(address[] arg1, uint256 arg2)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'SuperDoge'

const decimals = 9

const symbol = ''


address owner;
mapping of uint8 stor1;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor22;
uint256 stor23;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint8 autoBuybackEnabled;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
address stor37;
uint256 stor38;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor41;

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

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor29 = 0
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

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor38 = arg1
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
    stor10[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor22 = arg1
    stor23 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
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
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg2
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor27 = arg1
    stor28 = arg2
    stor30 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor32 = arg2
    stor33 = 0
    stor34 = arg3
    stor35 = arg4
    stor36 = block.number
}

function Checking(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor37)
    call stor37.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    call marketingFeeReceiverAddress with:
       value arg2 wei
         gas 30000 wei
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor37)
    call stor37.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_62f8246e(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 13
        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14 = arg1
    stor15 = arg2
    stor16 = arg3
    stor17 = arg4
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor18 = arg4 + arg3 + arg2 + arg1
    stor19 = arg5
    require stor18 < arg5 / 4
}

function GoSUPER(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor41 = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor41 = 0
    if arg2:
        stor29 = block.timestamp
        emit BuybackMultiplierActive(stor30);
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(stor37)
    if not arg2:
        call stor37.setShare(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor37.setShare(address rg1, uint256 rg2) with:
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
    if not balanceOf[stor25]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if 2 * balanceOf[stor25] / balanceOf[stor25] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if 2 * balanceOf[stor25] * arg1 / arg1 != 2 * balanceOf[stor25]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor25] * arg1 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor25]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if 2 * balanceOf[stor25] / balanceOf[stor25] != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if 2 * balanceOf[stor25] * arg2 / arg2 != 2 * balanceOf[stor25]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor25] * arg2 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor30 + stor29 < stor29:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor30 + stor29:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor18:
        if not stor28:
            revert with 0, 'SafeMath: division by zero'
        if stor18 > 0 / stor28:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor28) - stor18:
            if not stor30:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor30) + stor18 < stor18:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stor30) + stor18)
        if (0 / stor28 * stor30) - (stor18 * stor30) + (0 / stor28 * stor29) - (stor18 * stor29) - (0 / stor28 * block.timestamp) + (stor18 * block.timestamp) / (0 / stor28) - stor18 != stor30 + stor29 - block.timestamp:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stor30:
            revert with 0, 'SafeMath: division by zero'
        if ((0 / stor28 * stor30) - (stor18 * stor30) + (0 / stor28 * stor29) - (stor18 * stor29) - (0 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18 < stor18:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / stor28 * stor30) - (stor18 * stor30) + (0 / stor28 * stor29) - (stor18 * stor29) - (0 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18)
    if stor27 * stor18 / stor18 != stor27:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor28:
        revert with 0, 'SafeMath: division by zero'
    if stor18 > stor27 * stor18 / stor28:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor27 * stor18 / stor28) - stor18:
        if not stor30:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor30) + stor18 < stor18:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stor30) + stor18)
    if (stor27 * stor18 / stor28 * stor30) - (stor18 * stor30) + (stor27 * stor18 / stor28 * stor29) - (stor18 * stor29) - (stor27 * stor18 / stor28 * block.timestamp) + (stor18 * block.timestamp) / (stor27 * stor18 / stor28) - stor18 != stor30 + stor29 - block.timestamp:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not stor30:
        revert with 0, 'SafeMath: division by zero'
    if ((stor27 * stor18 / stor28 * stor30) - (stor18 * stor30) + (stor27 * stor18 / stor28 * stor29) - (stor18 * stor29) - (stor27 * stor18 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18 < stor18:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor27 * stor18 / stor28 * stor30) - (stor18 * stor30) + (stor27 * stor18 / stor28 * stor29) - (stor18 * stor29) - (stor27 * stor18 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18)
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + 3 >= block.number:
        if 1 > stor19:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor19 - 1)
    if not arg1:
        return stor18
    if stor30 + stor29 < stor29:
        revert with 0, 'SafeMath: addition overflow'
    if stor30 + stor29 <= block.timestamp:
        return stor18
    if stor30 + stor29 < stor29:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor30 + stor29:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor18:
        if not stor28:
            revert with 0, 'SafeMath: division by zero'
        if stor18 > 0 / stor28:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor28) - stor18:
            if not stor30:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor30) + stor18 < stor18:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stor30) + stor18)
        if (0 / stor28 * stor30) - (stor18 * stor30) + (0 / stor28 * stor29) - (stor18 * stor29) - (0 / stor28 * block.timestamp) + (stor18 * block.timestamp) / (0 / stor28) - stor18 != stor30 + stor29 - block.timestamp:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not stor30:
            revert with 0, 'SafeMath: division by zero'
        if ((0 / stor28 * stor30) - (stor18 * stor30) + (0 / stor28 * stor29) - (stor18 * stor29) - (0 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18 < stor18:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / stor28 * stor30) - (stor18 * stor30) + (0 / stor28 * stor29) - (stor18 * stor29) - (0 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18)
    if stor27 * stor18 / stor18 != stor27:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor28:
        revert with 0, 'SafeMath: division by zero'
    if stor18 > stor27 * stor18 / stor28:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor27 * stor18 / stor28) - stor18:
        if not stor30:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor30) + stor18 < stor18:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stor30) + stor18)
    if (stor27 * stor18 / stor28 * stor30) - (stor18 * stor30) + (stor27 * stor18 / stor28 * stor29) - (stor18 * stor29) - (stor27 * stor18 / stor28 * block.timestamp) + (stor18 * block.timestamp) / (stor27 * stor18 / stor28) - stor18 != stor30 + stor29 - block.timestamp:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not stor30:
        revert with 0, 'SafeMath: division by zero'
    if ((stor27 * stor18 / stor28 * stor30) - (stor18 * stor30) + (stor27 * stor18 / stor28 * stor29) - (stor18 * stor29) - (stor27 * stor18 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18 < stor18:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor27 * stor18 / stor28 * stor30) - (stor18 * stor30) + (stor27 * stor18 / stor28 * stor29) - (stor18 * stor29) - (stor27 * stor18 / stor28 * block.timestamp) + (stor18 * block.timestamp) / stor30) + stor18)
}



}
