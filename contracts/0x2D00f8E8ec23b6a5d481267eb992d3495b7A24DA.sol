contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'TESTTOKEN'

const decimals = 9

const symbol = 'TST'


address owner;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 sub_24e9bafb;
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

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_24e9bafb(?) {
    return sub_24e9bafb
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

function _maxWalletSize() {
    return _maxWalletSize
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

function _fallback() payable {
    revert
}

function clearBuybackMultiplier() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 750000
    stor38 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
    stor23 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1 / 100
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2 / 100
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function getCirculatingSupply() {
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setSellMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 3:
        revert with 0, 'Multiplier too high'
    if arg1 * stor17 > 4900:
        revert with 0, 'Multiplier too high'
    sub_24e9bafb = arg1
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor27 = arg1
    stor28 = arg2
    stor30 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoBuybackEnabled = uint8(arg1)
    stor32 = arg2
    stor33 = 0
    stor34 = arg3 / 100
    stor35 = arg4
    stor36 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor37)
    call stor37.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor14 = arg2
    stor15 = arg3
    stor16 = arg4
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor17 = arg1 + arg2 + arg3 + arg4
    stor18 = arg5
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + 1 >= block.number:
        if 1 > stor18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor18 - 1)
    if not arg1:
        return stor17
    if not stor17:
        return 0
    require stor17
    if stor17 * sub_24e9bafb / stor17 != sub_24e9bafb:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (stor17 * sub_24e9bafb)
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        balanceOf[address(this.address)] = -arg1 - 1
        mem[388 len 0] = None
        require ext_code.size(routerAddress)
        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args balanceOf[address(this.address)], 0, 160, owner, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require arg1 != pairAddress
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

function setMaxWallet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 > 0
    require arg2 <= 10000
    if not totalSupply:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        _maxWalletSize = 0 / arg2
    else:
        require totalSupply
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        _maxWalletSize = totalSupply * arg1 / arg2
}

function sub_70ee26d9(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require mem[(32 * idx) + 140 len 20] != this.address
        require mem[(32 * idx) + 140 len 20] != pairAddress
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if arg2:
            mem[(32 * arg1.length) + 128] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_17)
            mem[(32 * arg1.length) + 164] = 0
            require ext_code.size(stor37)
            call stor37.setShare(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_17), 0
        else:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 8
            _21 = sha3(address(mem[(32 * idx) + 128]), 8)
            mem[(32 * arg1.length) + 128] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_17)
            mem[(32 * arg1.length) + 164] = stor[_21]
            require ext_code.size(stor37)
            call stor37.setShare(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_17), stor[_21]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor25]:
        if not arg1:
            if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    else:
        if balanceOf[stor25]:
            if 2 * balanceOf[stor25] / balanceOf[stor25] != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg1:
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4])
            else:
                if arg1:
                    if arg1 * 2 * balanceOf[stor25] / arg1 != 2 * balanceOf[stor25]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                        return (arg1 * 2 * balanceOf[stor25] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor3] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor4] > totalSupply - balanceOf[stor3]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor25]:
        if not arg2:
            if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    else:
        if balanceOf[stor25]:
            if 2 * balanceOf[stor25] / balanceOf[stor25] != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                    return (0 / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
            else:
                if arg2:
                    if arg2 * 2 * balanceOf[stor25] / arg2 != 2 * balanceOf[stor25]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - balanceOf[stor3] - balanceOf[stor4]:
                        return (arg2 * 2 * balanceOf[stor25] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
    revert
}



}
