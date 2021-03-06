contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 9

const VERSION = 1


address stor0;
mapping of uint8 stor1;
array of struct stor2;
array of struct stor3;
uint256 totalSupply;
address rewardTokenAddress;
address routerAddress;
address pairAddress;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor10; offset 1
uint256 liquidityFee;
uint256 buybackFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 sub_92258ec8;
uint256 sub_8ab6ffc7;
uint256 sub_921250d1;
uint256 sub_ecbf666f;
uint256 sub_19be947b;
uint256 sub_1023d5d4;
uint8 autoBuybackEnabled;
uint256 sub_591cf08d;
uint256 sub_6e78eb49;
uint256 sub_4896a632;
uint256 sub_5a53c1fb;
uint256 sub_b91854f4;
address distributorAddress;
uint256 sub_60e71962;
uint8 swapEnabled;
uint256 swapThreshold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor34;
mapping of uint8 stor35;
mapping of uint8 stor36;
uint8 stor37;
uint256 stor29AB;
uint256 storCBAA;

function swapThreshold() {
    return swapThreshold
}

function sub_1023d5d4(?) {
    return sub_1023d5d4
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function sub_19be947b(?) {
    return sub_19be947b
}

function totalFee() {
    return totalFee
}

function buybackFee() {
    return buybackFee
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor35[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor36[arg1])
}

function sub_4896a632(?) {
    return sub_4896a632
}

function sub_591cf08d(?) {
    return sub_591cf08d
}

function sub_5a53c1fb(?) {
    return sub_5a53c1fb
}

function sub_60e71962(?) {
    return sub_60e71962
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_6e78eb49(?) {
    return sub_6e78eb49
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function reflectionFee() {
    return reflectionFee
}

function sub_8ab6ffc7(?) {
    return sub_8ab6ffc7
}

function sub_921250d1(?) {
    return sub_921250d1
}

function sub_92258ec8(?) {
    return sub_92258ec8
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function sub_b91854f4(?) {
    return sub_b91854f4
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_ecbf666f(?) {
    return sub_ecbf666f
}

function sub_eff0dc22(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor34[arg1])
}

function rewardToken() {
    return rewardTokenAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor0 == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_19be947b = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function getCirculatingSupply() {
    if totalSupply < storCBAA:
        revert with 0, 17
    if totalSupply - storCBAA < stor29AB:
        revert with 0, 17
    return (totalSupply - storCBAA - stor29AB)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_92258ec8 = arg1
    sub_8ab6ffc7 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function sub_17d43583(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor34[address(arg1)] = uint8(bool(arg2))
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor35[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 >= 750000:
        revert with 0, 'Gas must be lower than 750000'
    sub_60e71962 = arg1
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    sub_921250d1 = arg1
    sub_ecbf666f = arg2
    sub_1023d5d4 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    sub_591cf08d = arg2
    sub_6e78eb49 = 0
    sub_4896a632 = arg3
    sub_5a53c1fb = arg4
    sub_b91854f4 = block.number
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

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < storCBAA:
        revert with 0, 17
    if totalSupply - storCBAA < stor29AB:
        revert with 0, 17
    if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor7] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - storCBAA - stor29AB:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < storCBAA:
        revert with 0, 17
    if totalSupply - storCBAA < stor29AB:
        revert with 0, 17
    if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor7] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - storCBAA - stor29AB:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    buybackFee = arg2
    reflectionFee = arg3
    marketingFee = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    totalFee = arg1 + arg2 + arg3 + arg4
    feeDenominator = arg5
    if arg5 <= arg1 + arg2 + arg3 + arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Total fee should not be greater than 99/100 of fee denominator'
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor36[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMultipliedFee() {
    if sub_19be947b > !sub_1023d5d4:
        revert with 0, 17
    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
        return totalFee
    if sub_19be947b > !sub_1023d5d4:
        revert with 0, 17
    if sub_19be947b + sub_1023d5d4 < block.timestamp:
        revert with 0, 17
    if totalFee and sub_921250d1 > -1 / totalFee:
        revert with 0, 17
    if not sub_ecbf666f:
        revert with 0, 18
    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
        revert with 0, 17
    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
        revert with 0, 17
    if not sub_1023d5d4:
        revert with 0, 18
    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
        revert with 0, 17
    return (totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return totalFee
    if sub_19be947b > !sub_1023d5d4:
        revert with 0, 17
    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
        return totalFee
    if sub_19be947b > !sub_1023d5d4:
        revert with 0, 17
    if sub_19be947b + sub_1023d5d4 < block.timestamp:
        revert with 0, 17
    if totalFee and sub_921250d1 > -1 / totalFee:
        revert with 0, 17
    if not sub_ecbf666f:
        revert with 0, 18
    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
        revert with 0, 17
    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
        revert with 0, 17
    if not sub_1023d5d4:
        revert with 0, 18
    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
        revert with 0, 17
    return (totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4))
}

function triggerZeusBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor37 = 1
    require ext_code.size(routerAddress)
    staticcall routerAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor37 = 0
    if arg2:
        sub_19be947b = block.timestamp
        emit BuybackMultiplierActive(sub_1023d5d4);
}

function name() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function symbol() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor37:
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 'Insufficient Balance', 0
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] = balanceOf[arg1] + arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if msg.sender == pairAddress:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if stor35[address(msg.sender)]:
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                require ext_code.size(distributorAddress)
                if not stor36[address(msg.sender)]:
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                if not stor36[address(arg1)]:
                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                call distributorAddress.process(uint256 arg1) with:
                     gas gas_remaining wei
                    args sub_60e71962
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if pairAddress != arg1:
                    if arg2 and totalFee > -1 / arg2:
                        revert with 0, 17
                    if not feeDenominator:
                        revert with 0, 18
                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                        revert with 0, 17
                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                    if arg2 < arg2 * totalFee / feeDenominator:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                        revert with 0, 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                    require ext_code.size(distributorAddress)
                    if not stor36[address(msg.sender)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor36[address(arg1)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call distributorAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_60e71962
                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                else:
                    if sub_19be947b > !sub_1023d5d4:
                        revert with 0, 17
                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                        if arg2 and totalFee > -1 / arg2:
                            revert with 0, 17
                        if not feeDenominator:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                        if arg2 < arg2 * totalFee / feeDenominator:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                    else:
                        if sub_19be947b > !sub_1023d5d4:
                            revert with 0, 17
                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                            revert with 0, 17
                        if totalFee and sub_921250d1 > -1 / totalFee:
                            revert with 0, 17
                        if not sub_ecbf666f:
                            revert with 0, 18
                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                            revert with 0, 17
                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                            revert with 0, 17
                        if not sub_1023d5d4:
                            revert with 0, 18
                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                            revert with 0, 17
                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                            revert with 0, 17
                        if not feeDenominator:
                            revert with 0, 18
                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                            revert with 0, 17
                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
        else:
            if stor37:
                if pairAddress != msg.sender:
                    if not stor37:
                        if autoBuybackEnabled:
                            if sub_b91854f4 > !sub_5a53c1fb:
                                revert with 0, 17
                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                if eth.balance(this.address) >= sub_4896a632:
                                    stor37 = 1
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[128] = ext_call.return_data[12 len 20]
                                    mem[160] = this.address
                                    mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 0
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 356
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                       value sub_4896a632 wei
                                         gas gas_remaining wei
                                        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    stor37 = 0
                                    sub_b91854f4 = block.number
                                    if sub_6e78eb49 > !sub_4896a632:
                                        revert with 0, 17
                                    sub_6e78eb49 += sub_4896a632
                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                        autoBuybackEnabled = 0
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                balanceOf[address(msg.sender)] -= arg2
                if stor35[address(msg.sender)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    require ext_code.size(distributorAddress)
                    if not stor36[address(msg.sender)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor36[address(arg1)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call distributorAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_60e71962
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if pairAddress != arg1:
                        if arg2 and totalFee > -1 / arg2:
                            revert with 0, 17
                        if not feeDenominator:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                        if arg2 < arg2 * totalFee / feeDenominator:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                    else:
                        if sub_19be947b > !sub_1023d5d4:
                            revert with 0, 17
                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                            if arg2 and totalFee > -1 / arg2:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                            if arg2 < arg2 * totalFee / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                        else:
                            if sub_19be947b > !sub_1023d5d4:
                                revert with 0, 17
                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                revert with 0, 17
                            if totalFee and sub_921250d1 > -1 / totalFee:
                                revert with 0, 17
                            if not sub_ecbf666f:
                                revert with 0, 18
                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                revert with 0, 17
                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                revert with 0, 17
                            if not sub_1023d5d4:
                                revert with 0, 18
                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                revert with 0, 17
                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
            else:
                if not swapEnabled:
                    if pairAddress != msg.sender:
                        if not stor37:
                            if autoBuybackEnabled:
                                if sub_b91854f4 > !sub_5a53c1fb:
                                    revert with 0, 17
                                if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                    if eth.balance(this.address) >= sub_4896a632:
                                        stor37 = 1
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[128] = ext_call.return_data[12 len 20]
                                        mem[160] = this.address
                                        mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 0
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 356
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value sub_4896a632 wei
                                             gas gas_remaining wei
                                            args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor37 = 0
                                        sub_b91854f4 = block.number
                                        if sub_6e78eb49 > !sub_4896a632:
                                            revert with 0, 17
                                        sub_6e78eb49 += sub_4896a632
                                        if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                            autoBuybackEnabled = 0
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(msg.sender)] -= arg2
                    if stor35[address(msg.sender)]:
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if pairAddress != arg1:
                            if arg2 and totalFee > -1 / arg2:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                            if arg2 < arg2 * totalFee / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                        else:
                            if sub_19be947b > !sub_1023d5d4:
                                revert with 0, 17
                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                if arg2 and totalFee > -1 / arg2:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                if arg2 < arg2 * totalFee / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                            else:
                                if sub_19be947b > !sub_1023d5d4:
                                    revert with 0, 17
                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                    revert with 0, 17
                                if totalFee and sub_921250d1 > -1 / totalFee:
                                    revert with 0, 17
                                if not sub_ecbf666f:
                                    revert with 0, 18
                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                    revert with 0, 17
                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                    revert with 0, 17
                                if not sub_1023d5d4:
                                    revert with 0, 18
                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                    revert with 0, 17
                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                else:
                    if balanceOf[this.address] < swapThreshold:
                        if pairAddress != msg.sender:
                            if not stor37:
                                if autoBuybackEnabled:
                                    if sub_b91854f4 > !sub_5a53c1fb:
                                        revert with 0, 17
                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                        if eth.balance(this.address) >= sub_4896a632:
                                            stor37 = 1
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[192] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[128] = ext_call.return_data[12 len 20]
                                            mem[160] = this.address
                                            mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 0
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 356
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_4896a632 wei
                                                 gas gas_remaining wei
                                                args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor37 = 0
                                            sub_b91854f4 = block.number
                                            if sub_6e78eb49 > !sub_4896a632:
                                                revert with 0, 17
                                            sub_6e78eb49 += sub_4896a632
                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                autoBuybackEnabled = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        balanceOf[address(msg.sender)] -= arg2
                        if stor35[address(msg.sender)]:
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if pairAddress != arg1:
                                if arg2 and totalFee > -1 / arg2:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                if arg2 < arg2 * totalFee / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                            else:
                                if sub_19be947b > !sub_1023d5d4:
                                    revert with 0, 17
                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                    if arg2 and totalFee > -1 / arg2:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                    if arg2 < arg2 * totalFee / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                else:
                                    if sub_19be947b > !sub_1023d5d4:
                                        revert with 0, 17
                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                        revert with 0, 17
                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                        revert with 0, 17
                                    if not sub_ecbf666f:
                                        revert with 0, 18
                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                        revert with 0, 17
                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                        revert with 0, 17
                                    if not sub_1023d5d4:
                                        revert with 0, 18
                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                        revert with 0, 17
                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                    else:
                        stor37 = 1
                        if totalSupply < storCBAA:
                            revert with 0, 17
                        if totalSupply - storCBAA < stor29AB:
                            revert with 0, 17
                        if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                            revert with 0, 17
                        if sub_8ab6ffc7 and 2 * balanceOf[stor7] > -1 / sub_8ab6ffc7:
                            revert with 0, 17
                        if not totalSupply - storCBAA - stor29AB:
                            revert with 0, 18
                        if sub_8ab6ffc7 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB > sub_92258ec8:
                            if swapThreshold and 0 > -1 / swapThreshold:
                                revert with 0, 17
                            if not totalFee:
                                revert with 0, 18
                            if swapThreshold < 0 / totalFee / 2:
                                revert with 0, 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = swapThreshold - (0 / totalFee / 2)
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if totalFee < 0:
                                revert with 0, 17
                            if not totalFee:
                                revert with 0, 18
                            if False and reflectionFee > 0:
                                revert with 0, 17
                            if not totalFee:
                                revert with 0, 18
                            if False and marketingFee > 0:
                                revert with 0, 17
                            if not totalFee:
                                revert with 0, 18
                            mem[ceil32(return_data.size) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(distributorAddress)
                            call distributorAddress.0xd0e30db0 with:
                               value 0 / totalFee wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not Mask(255, 1, 0 / totalFee):
                                stor37 = 0
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > !sub_5a53c1fb:
                                                revert with 0, 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 256] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(2 * ceil32(return_data.size)) + 420] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 224
                                                    t = (2 * ceil32(return_data.size)) + 452
                                                    while idx < mem[ceil32(return_data.size) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > !sub_4896a632:
                                                        revert with 0, 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                        autoBuybackEnabled = 0
                            else:
                                mem[ceil32(return_data.size) + 260] = 0
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324] = autoLiquidityReceiverAddress
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                mem[(2 * ceil32(return_data.size)) + 192] = 0 / totalFee / 2
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee / 2);
                                stor37 = 0
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > !sub_5a53c1fb:
                                                revert with 0, 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 0 >= 0 / totalFee / 2:
                                                        revert with 0, 50
                                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if 1 >= 0 / totalFee / 2:
                                                        revert with 0, 50
                                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                                    mem[(4 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(4 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(4 * ceil32(return_data.size)) + 420] = 0 / totalFee / 2
                                                    idx = 0
                                                    s = (2 * ceil32(return_data.size)) + 224
                                                    t = (4 * ceil32(return_data.size)) + 452
                                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(4 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, mem[(4 * ceil32(return_data.size)) + 420 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > !sub_4896a632:
                                                        revert with 0, 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                        autoBuybackEnabled = 0
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            balanceOf[address(msg.sender)] -= arg2
                            if stor35[address(msg.sender)]:
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if pairAddress != arg1:
                                    if arg2 and totalFee > -1 / arg2:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                    if arg2 < arg2 * totalFee / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                else:
                                    if sub_19be947b > !sub_1023d5d4:
                                        revert with 0, 17
                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                        if arg2 and totalFee > -1 / arg2:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                        if arg2 < arg2 * totalFee / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                    else:
                                        if sub_19be947b > !sub_1023d5d4:
                                            revert with 0, 17
                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                            revert with 0, 17
                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                            revert with 0, 17
                                        if not sub_ecbf666f:
                                            revert with 0, 18
                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                            revert with 0, 17
                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                            revert with 0, 17
                                        if not sub_1023d5d4:
                                            revert with 0, 18
                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                            revert with 0, 17
                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                        else:
                            if swapThreshold and liquidityFee > -1 / swapThreshold:
                                revert with 0, 17
                            if not totalFee:
                                revert with 0, 18
                            if swapThreshold < swapThreshold * liquidityFee / totalFee / 2:
                                revert with 0, 17
                            mem[128] = this.address
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = swapThreshold - (swapThreshold * liquidityFee / totalFee / 2)
                            mem[ceil32(return_data.size) + 356] = 2
                            idx = 0
                            s = 128
                            t = ceil32(return_data.size) + 388
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 292] = this.address
                            mem[ceil32(return_data.size) + 324] = block.timestamp
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args swapThreshold - (swapThreshold * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if totalFee < stor10:
                                revert with 0, 17
                            if False and liquidityFee > 0:
                                revert with 0, 17
                            if not totalFee - stor10:
                                revert with 0, 18
                            if False and reflectionFee > 0:
                                revert with 0, 17
                            if not totalFee - stor10:
                                revert with 0, 18
                            if False and marketingFee > 0:
                                revert with 0, 17
                            if not totalFee - stor10:
                                revert with 0, 18
                            mem[ceil32(return_data.size) + 192] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(distributorAddress)
                            call distributorAddress.0xd0e30db0 with:
                               value 0 / totalFee - stor10 wei
                                 gas gas_remaining wei
                            call marketingFeeReceiverAddress with:
                               value 0 / totalFee - stor10 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not Mask(255, 1, swapThreshold * liquidityFee / totalFee):
                                stor37 = 0
                                if msg.sender == pairAddress:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor35[address(msg.sender)]:
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] += arg2
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if pairAddress != arg1:
                                            if arg2 and totalFee > -1 / arg2:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_19be947b > !sub_1023d5d4:
                                                revert with 0, 17
                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                    revert with 0, 17
                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                    revert with 0, 17
                                                if not sub_ecbf666f:
                                                    revert with 0, 18
                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                    revert with 0, 17
                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                    revert with 0, 17
                                                if not sub_1023d5d4:
                                                    revert with 0, 18
                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                    revert with 0, 17
                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                else:
                                    if stor37:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor35[address(msg.sender)]:
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if pairAddress != arg1:
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                        revert with 0, 17
                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                        revert with 0, 17
                                                    if not sub_ecbf666f:
                                                        revert with 0, 18
                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                        revert with 0, 17
                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                        revert with 0, 17
                                                    if not sub_1023d5d4:
                                                        revert with 0, 18
                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                        revert with 0, 17
                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                    else:
                                        if not autoBuybackEnabled:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if stor35[address(msg.sender)]:
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] += arg2
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if pairAddress != arg1:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                            revert with 0, 17
                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                            revert with 0, 17
                                                        if not sub_ecbf666f:
                                                            revert with 0, 18
                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                            revert with 0, 17
                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                            revert with 0, 17
                                                        if not sub_1023d5d4:
                                                            revert with 0, 18
                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                            revert with 0, 17
                                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_b91854f4 > !sub_5a53c1fb:
                                                revert with 0, 17
                                            if sub_b91854f4 + sub_5a53c1fb > block.number:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'Insufficient Balance', 0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if stor35[address(msg.sender)]:
                                                    if balanceOf[address(arg1)] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] += arg2
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if pairAddress != arg1:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                revert with 0, 17
                                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                                revert with 0, 17
                                                            if not sub_ecbf666f:
                                                                revert with 0, 18
                                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                revert with 0, 17
                                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                revert with 0, 17
                                                            if not sub_1023d5d4:
                                                                revert with 0, 18
                                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                revert with 0, 17
                                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < sub_4896a632:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'Insufficient Balance', 0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] += arg2
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if pairAddress != arg1:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(return_data.size) + 256] = this.address
                                                    mem[(2 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(2 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(2 * ceil32(return_data.size)) + 420] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                    idx = 0
                                                    s = ceil32(return_data.size) + 224
                                                    t = (2 * ceil32(return_data.size)) + 452
                                                    while idx < mem[ceil32(return_data.size) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(2 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > !sub_4896a632:
                                                        revert with 0, 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                        autoBuybackEnabled = 0
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(2 * ceil32(return_data.size)) + 356] = 32
                                                        mem[(2 * ceil32(return_data.size)) + 388] = 20
                                                        mem[(2 * ceil32(return_data.size)) + 420] = 'Insufficient Balance' << 96
                                                        mem[(2 * ceil32(return_data.size)) + 440] = 0
                                                        revert with memory
                                                          from (2 * ceil32(return_data.size)) + 352
                                                           len ceil32(return_data.size) + 100
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] += arg2
                                                        if not stor36[address(msg.sender)]:
                                                            mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                            mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                        if not stor36[address(arg1)]:
                                                            mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                            mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                        require ext_code.size(distributorAddress)
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if pairAddress != arg1:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            if not stor36[address(msg.sender)]:
                                                                mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                                mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                            if not stor36[address(arg1)]:
                                                                mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                                mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = msg.sender
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 356] = arg1
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 356 len ceil32(return_data.size) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                            else:
                                mem[ceil32(return_data.size) + 260] = 0
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324] = autoLiquidityReceiverAddress
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                   value 0 / totalFee - stor10 / 2 wei
                                     gas gas_remaining wei
                                    args this.address, Mask(255, 1, swapThreshold * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                mem[(2 * ceil32(return_data.size)) + 192] = 0 / totalFee - stor10 / 2
                                emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor10), swapThreshold * liquidityFee / totalFee / 2);
                                stor37 = 0
                                if msg.sender == pairAddress:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if stor35[address(msg.sender)]:
                                        if balanceOf[address(arg1)] > !arg2:
                                            revert with 0, 17
                                        balanceOf[address(arg1)] += arg2
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if pairAddress != arg1:
                                            if arg2 and totalFee > -1 / arg2:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_19be947b > !sub_1023d5d4:
                                                revert with 0, 17
                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                    revert with 0, 17
                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                    revert with 0, 17
                                                if not sub_ecbf666f:
                                                    revert with 0, 18
                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                    revert with 0, 17
                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                    revert with 0, 17
                                                if not sub_1023d5d4:
                                                    revert with 0, 18
                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                    revert with 0, 17
                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                else:
                                    if stor37:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor35[address(msg.sender)]:
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if pairAddress != arg1:
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                        revert with 0, 17
                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                        revert with 0, 17
                                                    if not sub_ecbf666f:
                                                        revert with 0, 18
                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                        revert with 0, 17
                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                        revert with 0, 17
                                                    if not sub_1023d5d4:
                                                        revert with 0, 18
                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                        revert with 0, 17
                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                    else:
                                        if not autoBuybackEnabled:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if stor35[address(msg.sender)]:
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] += arg2
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if pairAddress != arg1:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                            revert with 0, 17
                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                            revert with 0, 17
                                                        if not sub_ecbf666f:
                                                            revert with 0, 18
                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                            revert with 0, 17
                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                            revert with 0, 17
                                                        if not sub_1023d5d4:
                                                            revert with 0, 18
                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                            revert with 0, 17
                                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                        else:
                                            if sub_b91854f4 > !sub_5a53c1fb:
                                                revert with 0, 17
                                            if sub_b91854f4 + sub_5a53c1fb > block.number:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'Insufficient Balance', 0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if stor35[address(msg.sender)]:
                                                    if balanceOf[address(arg1)] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] += arg2
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if pairAddress != arg1:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                revert with 0, 17
                                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                                revert with 0, 17
                                                            if not sub_ecbf666f:
                                                                revert with 0, 18
                                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                revert with 0, 17
                                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                revert with 0, 17
                                                            if not sub_1023d5d4:
                                                                revert with 0, 18
                                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                revert with 0, 17
                                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                            else:
                                                if eth.balance(this.address) < sub_4896a632:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'Insufficient Balance', 0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] += arg2
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if pairAddress != arg1:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
                                                else:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if 0 >= 0 / totalFee - stor10 / 2:
                                                        revert with 0, 50
                                                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                                    if 1 >= 0 / totalFee - stor10 / 2:
                                                        revert with 0, 50
                                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                                    mem[(4 * ceil32(return_data.size)) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                                                    mem[(4 * ceil32(return_data.size)) + 324] = 128
                                                    mem[(4 * ceil32(return_data.size)) + 420] = 0 / totalFee - stor10 / 2
                                                    idx = 0
                                                    s = (2 * ceil32(return_data.size)) + 224
                                                    t = (4 * ceil32(return_data.size)) + 452
                                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[(4 * ceil32(return_data.size)) + 356] = 57005
                                                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, mem[(4 * ceil32(return_data.size)) + 420 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > !sub_4896a632:
                                                        revert with 0, 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                        autoBuybackEnabled = 0
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + 356] = 32
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 20
                                                        mem[(4 * ceil32(return_data.size)) + 420] = 'Insufficient Balance' << 96
                                                        mem[(4 * ceil32(return_data.size)) + 440] = 0
                                                        revert with memory
                                                          from (4 * ceil32(return_data.size)) + 352
                                                           len (5 * ceil32(return_data.size)) + 100
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] += arg2
                                                        if not stor36[address(msg.sender)]:
                                                            mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
                                                            mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                        if not stor36[address(arg1)]:
                                                            mem[(4 * ceil32(return_data.size)) + 356] = arg1
                                                            mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                        require ext_code.size(distributorAddress)
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                    else:
                                                        if pairAddress != arg1:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            if not stor36[address(msg.sender)]:
                                                                mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                            if not stor36[address(arg1)]:
                                                                mem[(4 * ceil32(return_data.size)) + 356] = arg1
                                                                mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                    mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(4 * ceil32(return_data.size)) + 356] = arg1
                                                                    mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, arg1);
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(4 * ceil32(return_data.size)) + 356] = msg.sender
                                                                    mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(4 * ceil32(return_data.size)) + 356] = arg1
                                                                    mem[(4 * ceil32(return_data.size)) + 388] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(4 * ceil32(return_data.size)) + 356 len (5 * ceil32(return_data.size)) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xd51ed1c8(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf1f3bca3(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xe96fada2(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe96fada2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return marketingFeeReceiverAddress
                    if unknown_0xecbf666f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_ecbf666f
                    if unknown_0xeff0dc22(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor34[arg1])
                    require unknown_0xf0b37c04(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if stor0 != msg.sender:
                        revert with 0, '!OWNER'
                    stor1[address(arg1)] = 0
                if unknown_0xd51ed1c8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if totalSupply < storCBAA:
                        revert with 0, 17
                    if totalSupply - storCBAA < stor29AB:
                        revert with 0, 17
                    if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                        revert with 0, 17
                    if arg1 and 2 * balanceOf[stor7] > -1 / arg1:
                        revert with 0, 17
                    if not totalSupply - storCBAA - stor29AB:
                        revert with 0, 18
                    return (arg1 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB)
                if uint32(call.func_hash) >> 224 != unknown_0xd806d12f(?????):
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    require unknown_0xdf20fd49(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == bool(arg1)
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    swapEnabled = uint8(bool(arg1))
                    swapThreshold = arg2
                require not msg.value
                if sub_19be947b > !sub_1023d5d4:
                    revert with 0, 17
                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                    return totalFee
                if sub_19be947b > !sub_1023d5d4:
                    revert with 0, 17
                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                    revert with 0, 17
                if totalFee and sub_921250d1 > -1 / totalFee:
                    revert with 0, 17
                if not sub_ecbf666f:
                    revert with 0, 18
                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                    revert with 0, 17
                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                    revert with 0, 17
                if not sub_1023d5d4:
                    revert with 0, 18
                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                    revert with 0, 17
                return (totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4))
            if unknown_0xf7c618c1(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf7c618c1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rewardTokenAddress
                if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return routerAddress
                if uint32(call.func_hash) >> 224 != unknown_0xfe9fbb80(?????):
                    require unknown_0xffa1ad74(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 1
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor1[address(arg1)])
            if unknown_0xf1f3bca3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == bool(arg1)
                if not arg1:
                    return totalFee
                if sub_19be947b > !sub_1023d5d4:
                    revert with 0, 17
                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                    return totalFee
                if sub_19be947b > !sub_1023d5d4:
                    revert with 0, 17
                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                    revert with 0, 17
                if totalFee and sub_921250d1 > -1 / totalFee:
                    revert with 0, 17
                if not sub_ecbf666f:
                    revert with 0, 18
                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                    revert with 0, 17
                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                    revert with 0, 17
                if not sub_1023d5d4:
                    revert with 0, 18
                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                    revert with 0, 17
                return (totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4))
            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor0 != msg.sender:
                    revert with 0, '!OWNER'
                stor0 = address(arg1)
                stor1[address(arg1)] = 1
                emit OwnershipTransferred(address(arg1));
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xf5cfec0a(?????):
                    require unknown_0xf708a64f(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    require address(arg1) != this.address
                    require pairAddress != address(arg1)
                    stor36[address(arg1)] = uint8(bool(arg2))
                    require ext_code.size(distributorAddress)
                    if not arg2:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    else:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg2 == bool(arg2)
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    stor37 = 1
                    require ext_code.size(routerAddress)
                    staticcall routerAddress.WETH() with:
                            gas gas_remaining wei
                    mem[224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[192] = this.address
                    mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = 0
                    idx = 0
                    s = 160
                    t = ceil32(return_data.size) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg1 wei
                         gas gas_remaining wei
                        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor37 = 0
                    if arg2:
                        sub_19be947b = block.timestamp
                        emit BuybackMultiplierActive(sub_1023d5d4);
        if unknown_0xa4b45c00(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x92258ec8(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return balanceOf[address(arg1)]
                if unknown_0x83ad7994(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return reflectionFee
                if unknown_0x8ab6ffc7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_8ab6ffc7
                require unknown_0x921250d1(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_921250d1
            if unknown_0x92258ec8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_92258ec8
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                if unknown_0x98118cb4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return liquidityFee
                require unknown_0x9d1944f5(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                if not stor1[address(msg.sender)]:
                    revert with 0, '!AUTHORIZED'
                if arg1 >= 750000:
                    revert with 0, 'Gas must be lower than 750000'
                sub_60e71962 = arg1
            require not msg.value
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                    mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if bool(stor3.length):
                if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor3.length):
                    if 31 < uint255(stor3.length) * 0.5:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor3.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            else:
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if stor3.length.field_1:
                    if 31 < stor3.length.field_1:
                        mem[160] = uint256(stor3.field_0)
                        idx = 160
                        s = 0
                        while stor3.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor3[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                    mem[160] = 256 * stor3.length.field_8
            mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
            if ceil32(stor3.length.field_1) > stor3.length.field_1:
                mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
        if unknown_0xb6a5d7de(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0xb6a5d7de(?????):
                if unknown_0xb91854f4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_b91854f4
                if unknown_0xbfe10928(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return distributorAddress
                require unknown_0xca33e64c(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return autoLiquidityReceiverAddress
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor0 != msg.sender:
                revert with 0, '!OWNER'
            stor1[address(arg1)] = 1
        if unknown_0xa4b45c00(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not stor1[address(msg.sender)]:
                revert with 0, '!AUTHORIZED'
            autoLiquidityReceiverAddress = address(arg1)
            marketingFeeReceiverAddress = address(arg2)
        if unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return pairAddress
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            require unknown_0xb210b06d(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if not stor1[address(msg.sender)]:
                revert with 0, '!AUTHORIZED'
            sub_19be947b = 0
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if stor37:
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 'Insufficient Balance', 0
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, address(arg1));
        else:
            if msg.sender == pairAddress:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 'Insufficient Balance', 0
                balanceOf[address(msg.sender)] -= arg2
                if stor35[address(msg.sender)]:
                    if balanceOf[address(arg1)] > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2
                    require ext_code.size(distributorAddress)
                    if not stor36[address(msg.sender)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                    if not stor36[address(arg1)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    call distributorAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_60e71962
                    emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if pairAddress != address(arg1):
                        if arg2 and totalFee > -1 / arg2:
                            revert with 0, 17
                        if not feeDenominator:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                            revert with 0, 17
                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                        if arg2 < arg2 * totalFee / feeDenominator:
                            revert with 0, 17
                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                            revert with 0, 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                    else:
                        if sub_19be947b > !sub_1023d5d4:
                            revert with 0, 17
                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                            if arg2 and totalFee > -1 / arg2:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                            if arg2 < arg2 * totalFee / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                        else:
                            if sub_19be947b > !sub_1023d5d4:
                                revert with 0, 17
                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                revert with 0, 17
                            if totalFee and sub_921250d1 > -1 / totalFee:
                                revert with 0, 17
                            if not sub_ecbf666f:
                                revert with 0, 18
                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                revert with 0, 17
                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                revert with 0, 17
                            if not sub_1023d5d4:
                                revert with 0, 18
                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                revert with 0, 17
                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
            else:
                if stor37:
                    if pairAddress != msg.sender:
                        if not stor37:
                            if autoBuybackEnabled:
                                if sub_b91854f4 > !sub_5a53c1fb:
                                    revert with 0, 17
                                if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                    if eth.balance(this.address) >= sub_4896a632:
                                        stor37 = 1
                                        require ext_code.size(routerAddress)
                                        staticcall routerAddress.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[192] = this.address
                                        mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = 0
                                        idx = 0
                                        s = 160
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                           value sub_4896a632 wei
                                             gas gas_remaining wei
                                            args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor37 = 0
                                        sub_b91854f4 = block.number
                                        if sub_6e78eb49 > !sub_4896a632:
                                            revert with 0, 17
                                        sub_6e78eb49 += sub_4896a632
                                        if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                            autoBuybackEnabled = 0
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(msg.sender)] -= arg2
                    if stor35[address(msg.sender)]:
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)] += arg2
                        require ext_code.size(distributorAddress)
                        if not stor36[address(msg.sender)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if pairAddress != address(arg1):
                            if arg2 and totalFee > -1 / arg2:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                            if arg2 < arg2 * totalFee / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                        else:
                            if sub_19be947b > !sub_1023d5d4:
                                revert with 0, 17
                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                if arg2 and totalFee > -1 / arg2:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                if arg2 < arg2 * totalFee / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                            else:
                                if sub_19be947b > !sub_1023d5d4:
                                    revert with 0, 17
                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                    revert with 0, 17
                                if totalFee and sub_921250d1 > -1 / totalFee:
                                    revert with 0, 17
                                if not sub_ecbf666f:
                                    revert with 0, 18
                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                    revert with 0, 17
                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                    revert with 0, 17
                                if not sub_1023d5d4:
                                    revert with 0, 18
                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                    revert with 0, 17
                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                else:
                    if not swapEnabled:
                        if pairAddress != msg.sender:
                            if not stor37:
                                if autoBuybackEnabled:
                                    if sub_b91854f4 > !sub_5a53c1fb:
                                        revert with 0, 17
                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                        if eth.balance(this.address) >= sub_4896a632:
                                            stor37 = 1
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[192] = this.address
                                            mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 0
                                            idx = 0
                                            s = 160
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_4896a632 wei
                                                 gas gas_remaining wei
                                                args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor37 = 0
                                            sub_b91854f4 = block.number
                                            if sub_6e78eb49 > !sub_4896a632:
                                                revert with 0, 17
                                            sub_6e78eb49 += sub_4896a632
                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                autoBuybackEnabled = 0
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 'Insufficient Balance', 0
                        balanceOf[address(msg.sender)] -= arg2
                        if stor35[address(msg.sender)]:
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)] += arg2
                            require ext_code.size(distributorAddress)
                            if not stor36[address(msg.sender)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, balanceOf[address(msg.sender)]
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer(arg2, msg.sender, address(arg1));
                        else:
                            if pairAddress != address(arg1):
                                if arg2 and totalFee > -1 / arg2:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                if arg2 < arg2 * totalFee / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                            else:
                                if sub_19be947b > !sub_1023d5d4:
                                    revert with 0, 17
                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                    if arg2 and totalFee > -1 / arg2:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                    if arg2 < arg2 * totalFee / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                else:
                                    if sub_19be947b > !sub_1023d5d4:
                                        revert with 0, 17
                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                        revert with 0, 17
                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                        revert with 0, 17
                                    if not sub_ecbf666f:
                                        revert with 0, 18
                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                        revert with 0, 17
                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                        revert with 0, 17
                                    if not sub_1023d5d4:
                                        revert with 0, 18
                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                        revert with 0, 17
                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                    else:
                        if balanceOf[this.address] < swapThreshold:
                            if pairAddress != msg.sender:
                                if not stor37:
                                    if autoBuybackEnabled:
                                        if sub_b91854f4 > !sub_5a53c1fb:
                                            revert with 0, 17
                                        if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                            if eth.balance(this.address) >= sub_4896a632:
                                                stor37 = 1
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[192] = this.address
                                                mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 0
                                                idx = 0
                                                s = 160
                                                t = ceil32(return_data.size) + 388
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_4896a632 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor37 = 0
                                                sub_b91854f4 = block.number
                                                if sub_6e78eb49 > !sub_4896a632:
                                                    revert with 0, 17
                                                sub_6e78eb49 += sub_4896a632
                                                if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                    autoBuybackEnabled = 0
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 'Insufficient Balance', 0
                            balanceOf[address(msg.sender)] -= arg2
                            if stor35[address(msg.sender)]:
                                if balanceOf[address(arg1)] > !arg2:
                                    revert with 0, 17
                                balanceOf[address(arg1)] += arg2
                                require ext_code.size(distributorAddress)
                                if not stor36[address(msg.sender)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, balanceOf[address(msg.sender)]
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer(arg2, msg.sender, address(arg1));
                            else:
                                if pairAddress != address(arg1):
                                    if arg2 and totalFee > -1 / arg2:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                    if arg2 < arg2 * totalFee / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                else:
                                    if sub_19be947b > !sub_1023d5d4:
                                        revert with 0, 17
                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                        if arg2 and totalFee > -1 / arg2:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                        if arg2 < arg2 * totalFee / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                    else:
                                        if sub_19be947b > !sub_1023d5d4:
                                            revert with 0, 17
                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                            revert with 0, 17
                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                            revert with 0, 17
                                        if not sub_ecbf666f:
                                            revert with 0, 18
                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                            revert with 0, 17
                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                            revert with 0, 17
                                        if not sub_1023d5d4:
                                            revert with 0, 18
                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                            revert with 0, 17
                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                        else:
                            stor37 = 1
                            if totalSupply < storCBAA:
                                revert with 0, 17
                            if totalSupply - storCBAA < stor29AB:
                                revert with 0, 17
                            mem[0] = pairAddress
                            mem[32] = 32
                            if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                                revert with 0, 17
                            if sub_8ab6ffc7 and 2 * balanceOf[stor7] > -1 / sub_8ab6ffc7:
                                revert with 0, 17
                            if not totalSupply - storCBAA - stor29AB:
                                revert with 0, 18
                            if sub_8ab6ffc7 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB > sub_92258ec8:
                                if swapThreshold and 0 > -1 / swapThreshold:
                                    revert with 0, 17
                                if not totalFee:
                                    revert with 0, 18
                                if swapThreshold < 0 / totalFee / 2:
                                    revert with 0, 17
                                mem[128] = 2
                                mem[160] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = swapThreshold - (0 / totalFee / 2)
                                mem[ceil32(return_data.size) + 388] = 2
                                idx = 0
                                s = 160
                                t = ceil32(return_data.size) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 324] = this.address
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if totalFee < 0:
                                    revert with 0, 17
                                if not totalFee:
                                    revert with 0, 18
                                if False and reflectionFee > 0:
                                    revert with 0, 17
                                if not totalFee:
                                    revert with 0, 18
                                if False and marketingFee > 0:
                                    revert with 0, 17
                                if not totalFee:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(distributorAddress)
                                call distributorAddress.0xd0e30db0 with:
                                   value 0 / totalFee wei
                                     gas gas_remaining wei
                                call marketingFeeReceiverAddress with:
                                   value 0 / totalFee wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not Mask(255, 1, 0 / totalFee):
                                    stor37 = 0
                                    if pairAddress != msg.sender:
                                        if not stor37:
                                            if autoBuybackEnabled:
                                                if sub_b91854f4 > !sub_5a53c1fb:
                                                    revert with 0, 17
                                                if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                    if eth.balance(this.address) >= sub_4896a632:
                                                        stor37 = 1
                                                        require ext_code.size(routerAddress)
                                                        staticcall routerAddress.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 288] = this.address
                                                        mem[(2 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                                        mem[(2 * ceil32(return_data.size)) + 356] = 128
                                                        mem[(2 * ceil32(return_data.size)) + 452] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 256
                                                        t = (2 * ceil32(return_data.size)) + 484
                                                        while idx < mem[ceil32(return_data.size) + 224]:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[(2 * ceil32(return_data.size)) + 388] = 57005
                                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                           value sub_4896a632 wei
                                                             gas gas_remaining wei
                                                            args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor37 = 0
                                                        sub_b91854f4 = block.number
                                                        if sub_6e78eb49 > !sub_4896a632:
                                                            revert with 0, 17
                                                        sub_6e78eb49 += sub_4896a632
                                                        if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                            autoBuybackEnabled = 0
                                else:
                                    mem[ceil32(return_data.size) + 292] = 0
                                    mem[ceil32(return_data.size) + 324] = 0
                                    mem[ceil32(return_data.size) + 356] = autoLiquidityReceiverAddress
                                    mem[ceil32(return_data.size) + 388] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee / 2 wei
                                         gas gas_remaining wei
                                        args this.address, Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0 / totalFee / 2
                                    emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee / 2);
                                    stor37 = 0
                                    if pairAddress != msg.sender:
                                        if not stor37:
                                            if autoBuybackEnabled:
                                                if sub_b91854f4 > !sub_5a53c1fb:
                                                    revert with 0, 17
                                                if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                    if eth.balance(this.address) >= sub_4896a632:
                                                        stor37 = 1
                                                        require ext_code.size(routerAddress)
                                                        staticcall routerAddress.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (4 * ceil32(return_data.size)) + 320
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 0 >= 0 / totalFee / 2:
                                                            revert with 0, 50
                                                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                                        if 1 >= 0 / totalFee / 2:
                                                            revert with 0, 50
                                                        mem[(2 * ceil32(return_data.size)) + 288] = this.address
                                                        mem[(4 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                                        mem[(4 * ceil32(return_data.size)) + 356] = 128
                                                        mem[(4 * ceil32(return_data.size)) + 452] = 0 / totalFee / 2
                                                        idx = 0
                                                        s = (2 * ceil32(return_data.size)) + 256
                                                        t = (4 * ceil32(return_data.size)) + 484
                                                        while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 57005
                                                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.mem[mem[64] len 4] with:
                                                           value sub_4896a632 wei
                                                             gas gas_remaining wei
                                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 480]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor37 = 0
                                                        sub_b91854f4 = block.number
                                                        if sub_6e78eb49 > !sub_4896a632:
                                                            revert with 0, 17
                                                        sub_6e78eb49 += sub_4896a632
                                                        if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                            autoBuybackEnabled = 0
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'Insufficient Balance', 0
                                balanceOf[address(msg.sender)] -= arg2
                                if stor35[address(msg.sender)]:
                                    if balanceOf[address(arg1)] > !arg2:
                                        revert with 0, 17
                                    balanceOf[address(arg1)] += arg2
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(msg.sender)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer(arg2, msg.sender, address(arg1));
                                else:
                                    if pairAddress != address(arg1):
                                        if arg2 and totalFee > -1 / arg2:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                        if arg2 < arg2 * totalFee / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(msg.sender)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, balanceOf[address(msg.sender)]
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                    else:
                                        if sub_19be947b > !sub_1023d5d4:
                                            revert with 0, 17
                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                            if arg2 and totalFee > -1 / arg2:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                        else:
                                            if sub_19be947b > !sub_1023d5d4:
                                                revert with 0, 17
                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                revert with 0, 17
                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                revert with 0, 17
                                            if not sub_ecbf666f:
                                                revert with 0, 18
                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                revert with 0, 17
                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                revert with 0, 17
                                            if not sub_1023d5d4:
                                                revert with 0, 18
                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                revert with 0, 17
                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                            else:
                                if swapThreshold and liquidityFee > -1 / swapThreshold:
                                    revert with 0, 17
                                if not totalFee:
                                    revert with 0, 18
                                if swapThreshold < swapThreshold * liquidityFee / totalFee / 2:
                                    revert with 0, 17
                                mem[128] = 2
                                mem[160] = this.address
                                require ext_code.size(routerAddress)
                                staticcall routerAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = swapThreshold - (swapThreshold * liquidityFee / totalFee / 2)
                                mem[ceil32(return_data.size) + 388] = 2
                                idx = 0
                                s = 160
                                t = ceil32(return_data.size) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 324] = this.address
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args swapThreshold - (swapThreshold * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if totalFee < stor10:
                                    revert with 0, 17
                                if False and liquidityFee > 0:
                                    revert with 0, 17
                                if not totalFee - stor10:
                                    revert with 0, 18
                                if False and reflectionFee > 0:
                                    revert with 0, 17
                                if not totalFee - stor10:
                                    revert with 0, 18
                                if False and marketingFee > 0:
                                    revert with 0, 17
                                if not totalFee - stor10:
                                    revert with 0, 18
                                mem[ceil32(return_data.size) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(distributorAddress)
                                call distributorAddress.0xd0e30db0 with:
                                   value 0 / totalFee - stor10 wei
                                     gas gas_remaining wei
                                call marketingFeeReceiverAddress with:
                                   value 0 / totalFee - stor10 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not Mask(255, 1, swapThreshold * liquidityFee / totalFee):
                                    stor37 = 0
                                    if msg.sender == pairAddress:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor35[address(msg.sender)]:
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if pairAddress != address(arg1):
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                        revert with 0, 17
                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                        revert with 0, 17
                                                    if not sub_ecbf666f:
                                                        revert with 0, 18
                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                        revert with 0, 17
                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                        revert with 0, 17
                                                    if not sub_1023d5d4:
                                                        revert with 0, 18
                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                        revert with 0, 17
                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                    else:
                                        if stor37:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if stor35[address(msg.sender)]:
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] += arg2
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if pairAddress != address(arg1):
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                            revert with 0, 17
                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                            revert with 0, 17
                                                        if not sub_ecbf666f:
                                                            revert with 0, 18
                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                            revert with 0, 17
                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                            revert with 0, 17
                                                        if not sub_1023d5d4:
                                                            revert with 0, 18
                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                            revert with 0, 17
                                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                        else:
                                            if not autoBuybackEnabled:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'Insufficient Balance', 0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if stor35[address(msg.sender)]:
                                                    if balanceOf[address(arg1)] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] += arg2
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if pairAddress != address(arg1):
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                revert with 0, 17
                                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                                revert with 0, 17
                                                            if not sub_ecbf666f:
                                                                revert with 0, 18
                                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                revert with 0, 17
                                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                revert with 0, 17
                                                            if not sub_1023d5d4:
                                                                revert with 0, 18
                                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                revert with 0, 17
                                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                            else:
                                                if sub_b91854f4 > !sub_5a53c1fb:
                                                    revert with 0, 17
                                                if sub_b91854f4 + sub_5a53c1fb > block.number:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'Insufficient Balance', 0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] += arg2
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if pairAddress != address(arg1):
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                                else:
                                                    if eth.balance(this.address) < sub_4896a632:
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 'Insufficient Balance', 0
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if stor35[address(msg.sender)]:
                                                            if balanceOf[address(arg1)] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] += arg2
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer(arg2, msg.sender, address(arg1));
                                                        else:
                                                            if pairAddress != address(arg1):
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                    if arg2 and totalFee > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(msg.sender)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                        revert with 0, 17
                                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_ecbf666f:
                                                                        revert with 0, 18
                                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                        revert with 0, 17
                                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_1023d5d4:
                                                                        revert with 0, 18
                                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                        revert with 0, 17
                                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(msg.sender)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                                    else:
                                                        stor37 = 1
                                                        require ext_code.size(routerAddress)
                                                        staticcall routerAddress.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                                        mem[ceil32(return_data.size) + 288] = this.address
                                                        mem[(2 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                        mem[(2 * ceil32(return_data.size)) + 324] = 0
                                                        mem[(2 * ceil32(return_data.size)) + 356] = 128
                                                        mem[(2 * ceil32(return_data.size)) + 452] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                        idx = 0
                                                        s = ceil32(return_data.size) + 256
                                                        t = (2 * ceil32(return_data.size)) + 484
                                                        while idx < mem[ceil32(return_data.size) + 224]:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[(2 * ceil32(return_data.size)) + 388] = 57005
                                                        mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                           value sub_4896a632 wei
                                                             gas gas_remaining wei
                                                            args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor37 = 0
                                                        sub_b91854f4 = block.number
                                                        if sub_6e78eb49 > !sub_4896a632:
                                                            revert with 0, 17
                                                        sub_6e78eb49 += sub_4896a632
                                                        if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                            autoBuybackEnabled = 0
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                                            mem[(2 * ceil32(return_data.size)) + 420] = 20
                                                            mem[(2 * ceil32(return_data.size)) + 452] = 'Insufficient Balance' << 96
                                                            mem[(2 * ceil32(return_data.size)) + 472] = 0
                                                            revert with memory
                                                              from (2 * ceil32(return_data.size)) + 384
                                                               len ceil32(return_data.size) + 100
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if stor35[address(msg.sender)]:
                                                            if balanceOf[address(arg1)] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] += arg2
                                                            if not stor36[address(msg.sender)]:
                                                                mem[(2 * ceil32(return_data.size)) + 388] = msg.sender
                                                                mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                            if not stor36[address(arg1)]:
                                                                mem[(2 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer(arg2, msg.sender, address(arg1));
                                                        else:
                                                            if pairAddress != address(arg1):
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = msg.sender
                                                                    mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                    mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                    if arg2 and totalFee > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                    if not stor36[address(msg.sender)]:
                                                                        mem[(2 * ceil32(return_data.size)) + 388] = msg.sender
                                                                        mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                                    if not stor36[address(arg1)]:
                                                                        mem[(2 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                        mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                        revert with 0, 17
                                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_ecbf666f:
                                                                        revert with 0, 18
                                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                        revert with 0, 17
                                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_1023d5d4:
                                                                        revert with 0, 18
                                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                        revert with 0, 17
                                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                    if not stor36[address(msg.sender)]:
                                                                        mem[(2 * ceil32(return_data.size)) + 388] = msg.sender
                                                                        mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                                    if not stor36[address(arg1)]:
                                                                        mem[(2 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                        mem[(2 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(2 * ceil32(return_data.size)) + 388 len ceil32(return_data.size) + 64]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                else:
                                    mem[ceil32(return_data.size) + 292] = 0
                                    mem[ceil32(return_data.size) + 324] = 0
                                    mem[ceil32(return_data.size) + 356] = autoLiquidityReceiverAddress
                                    mem[ceil32(return_data.size) + 388] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                       value 0 / totalFee - stor10 / 2 wei
                                         gas gas_remaining wei
                                        args this.address, Mask(255, 1, swapThreshold * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                    mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[(2 * ceil32(return_data.size)) + 224] = 0 / totalFee - stor10 / 2
                                    emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor10), swapThreshold * liquidityFee / totalFee / 2);
                                    stor37 = 0
                                    if msg.sender == pairAddress:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if stor35[address(msg.sender)]:
                                            if balanceOf[address(arg1)] > !arg2:
                                                revert with 0, 17
                                            balanceOf[address(arg1)] += arg2
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(msg.sender)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args msg.sender, balanceOf[address(msg.sender)]
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer(arg2, msg.sender, address(arg1));
                                        else:
                                            if pairAddress != address(arg1):
                                                if arg2 and totalFee > -1 / arg2:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                        revert with 0, 17
                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                        revert with 0, 17
                                                    if not sub_ecbf666f:
                                                        revert with 0, 18
                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                        revert with 0, 17
                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                        revert with 0, 17
                                                    if not sub_1023d5d4:
                                                        revert with 0, 18
                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                        revert with 0, 17
                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                    else:
                                        if stor37:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            balanceOf[address(msg.sender)] -= arg2
                                            if stor35[address(msg.sender)]:
                                                if balanceOf[address(arg1)] > !arg2:
                                                    revert with 0, 17
                                                balanceOf[address(arg1)] += arg2
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(msg.sender)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer(arg2, msg.sender, address(arg1));
                                            else:
                                                if pairAddress != address(arg1):
                                                    if arg2 and totalFee > -1 / arg2:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                            revert with 0, 17
                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                            revert with 0, 17
                                                        if not sub_ecbf666f:
                                                            revert with 0, 18
                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                            revert with 0, 17
                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                            revert with 0, 17
                                                        if not sub_1023d5d4:
                                                            revert with 0, 18
                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                            revert with 0, 17
                                                        if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                        emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                        if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                        else:
                                            if not autoBuybackEnabled:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'Insufficient Balance', 0
                                                balanceOf[address(msg.sender)] -= arg2
                                                if stor35[address(msg.sender)]:
                                                    if balanceOf[address(arg1)] > !arg2:
                                                        revert with 0, 17
                                                    balanceOf[address(arg1)] += arg2
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(msg.sender)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer(arg2, msg.sender, address(arg1));
                                                else:
                                                    if pairAddress != address(arg1):
                                                        if arg2 and totalFee > -1 / arg2:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                        emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                        if arg2 < arg2 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                revert with 0, 17
                                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                                revert with 0, 17
                                                            if not sub_ecbf666f:
                                                                revert with 0, 18
                                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                revert with 0, 17
                                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                revert with 0, 17
                                                            if not sub_1023d5d4:
                                                                revert with 0, 18
                                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                revert with 0, 17
                                                            if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                            emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                            if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                            else:
                                                if sub_b91854f4 > !sub_5a53c1fb:
                                                    revert with 0, 17
                                                if sub_b91854f4 + sub_5a53c1fb > block.number:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'Insufficient Balance', 0
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if stor35[address(msg.sender)]:
                                                        if balanceOf[address(arg1)] > !arg2:
                                                            revert with 0, 17
                                                        balanceOf[address(arg1)] += arg2
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(msg.sender)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, balanceOf[address(msg.sender)]
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg2, msg.sender, address(arg1));
                                                    else:
                                                        if pairAddress != address(arg1):
                                                            if arg2 and totalFee > -1 / arg2:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                            emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                            if arg2 < arg2 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                                else:
                                                    if eth.balance(this.address) < sub_4896a632:
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 'Insufficient Balance', 0
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if stor35[address(msg.sender)]:
                                                            if balanceOf[address(arg1)] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] += arg2
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(msg.sender)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, balanceOf[address(msg.sender)]
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer(arg2, msg.sender, address(arg1));
                                                        else:
                                                            if pairAddress != address(arg1):
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(msg.sender)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, balanceOf[address(msg.sender)]
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                    if arg2 and totalFee > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(msg.sender)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                        revert with 0, 17
                                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_ecbf666f:
                                                                        revert with 0, 18
                                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                        revert with 0, 17
                                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_1023d5d4:
                                                                        revert with 0, 18
                                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                        revert with 0, 17
                                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(msg.sender)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, balanceOf[address(msg.sender)]
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
                                                    else:
                                                        stor37 = 1
                                                        require ext_code.size(routerAddress)
                                                        staticcall routerAddress.WETH() with:
                                                                gas gas_remaining wei
                                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[64] = (4 * ceil32(return_data.size)) + 320
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if 0 >= 0 / totalFee - stor10 / 2:
                                                            revert with 0, 50
                                                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                                        if 1 >= 0 / totalFee - stor10 / 2:
                                                            revert with 0, 50
                                                        mem[(2 * ceil32(return_data.size)) + 288] = this.address
                                                        mem[(4 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                                        mem[(4 * ceil32(return_data.size)) + 356] = 128
                                                        mem[(4 * ceil32(return_data.size)) + 452] = 0 / totalFee - stor10 / 2
                                                        idx = 0
                                                        s = (2 * ceil32(return_data.size)) + 256
                                                        t = (4 * ceil32(return_data.size)) + 484
                                                        while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                            mem[t] = mem[s + 12 len 20]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        mem[(4 * ceil32(return_data.size)) + 388] = 57005
                                                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                                        require ext_code.size(routerAddress)
                                                        call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                           value sub_4896a632 wei
                                                             gas gas_remaining wei
                                                            args 0, 128, 57005, block.timestamp, mem[(4 * ceil32(return_data.size)) + 452 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        stor37 = 0
                                                        sub_b91854f4 = block.number
                                                        if sub_6e78eb49 > !sub_4896a632:
                                                            revert with 0, 17
                                                        sub_6e78eb49 += sub_4896a632
                                                        if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                            autoBuybackEnabled = 0
                                                        if arg2 > balanceOf[address(msg.sender)]:
                                                            mem[(4 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                            mem[(4 * ceil32(return_data.size)) + 388] = 32
                                                            mem[(4 * ceil32(return_data.size)) + 420] = 20
                                                            mem[(4 * ceil32(return_data.size)) + 452] = 'Insufficient Balance' << 96
                                                            mem[(4 * ceil32(return_data.size)) + 472] = 0
                                                            revert with memory
                                                              from (4 * ceil32(return_data.size)) + 384
                                                               len (5 * ceil32(return_data.size)) + 100
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if stor35[address(msg.sender)]:
                                                            if balanceOf[address(arg1)] > !arg2:
                                                                revert with 0, 17
                                                            balanceOf[address(arg1)] += arg2
                                                            if not stor36[address(msg.sender)]:
                                                                mem[(4 * ceil32(return_data.size)) + 388] = msg.sender
                                                                mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                            if not stor36[address(arg1)]:
                                                                mem[(4 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                            require ext_code.size(distributorAddress)
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer(arg2, msg.sender, address(arg1));
                                                        else:
                                                            if pairAddress != address(arg1):
                                                                if arg2 and totalFee > -1 / arg2:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                if arg2 < arg2 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                if not stor36[address(msg.sender)]:
                                                                    mem[(4 * ceil32(return_data.size)) + 388] = msg.sender
                                                                    mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                                if not stor36[address(arg1)]:
                                                                    mem[(4 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                    mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                    if arg2 and totalFee > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg2 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg2 * totalFee / feeDenominator
                                                                    emit Transfer((arg2 * totalFee / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < arg2 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - (arg2 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * totalFee / feeDenominator)
                                                                    if not stor36[address(msg.sender)]:
                                                                        mem[(4 * ceil32(return_data.size)) + 388] = msg.sender
                                                                        mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                                    if not stor36[address(arg1)]:
                                                                        mem[(4 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                        mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - (arg2 * totalFee / feeDenominator)), msg.sender, address(arg1));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                        revert with 0, 17
                                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_ecbf666f:
                                                                        revert with 0, 18
                                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                        revert with 0, 17
                                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_1023d5d4:
                                                                        revert with 0, 18
                                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                        revert with 0, 17
                                                                    if arg2 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg2:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator
                                                                    emit Transfer(((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator), msg.sender, this.address);
                                                                    if arg2 < (totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg1)] > !(arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)
                                                                    if not stor36[address(msg.sender)]:
                                                                        mem[(4 * ceil32(return_data.size)) + 388] = msg.sender
                                                                        mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(msg.sender)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                                    if not stor36[address(arg1)]:
                                                                        mem[(4 * ceil32(return_data.size)) + 388] = address(arg1)
                                                                        mem[(4 * ceil32(return_data.size)) + 420] = balanceOf[address(arg1)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(4 * ceil32(return_data.size)) + 388 len (5 * ceil32(return_data.size)) + 64]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg2 - ((totalFee * arg2) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg2) / feeDenominator)), msg.sender, address(arg1));
    else:
        if unknown_0x2d48e896(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x571ac8b0(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x3bb8a8d4(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x3bb8a8d4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(autoBuybackEnabled)
                    if unknown_0x3f4218e0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor35[arg1])
                    if uint32(call.func_hash) >> 224 != unknown_0x4355855a(?????):
                        require unknown_0x4896a632(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_4896a632
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor36[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0x2d48e896(?????):
                    if unknown_0x2f54bf6e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return (stor0 == address(arg1))
                    if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 9
                    require unknown_0x3b2d081c(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return buybackFee
                require not msg.value
                require calldata.size - 4 >= 64
                if not stor1[address(msg.sender)]:
                    revert with 0, '!AUTHORIZED'
                require ext_code.size(distributorAddress)
                call distributorAddress.0x2d48e896 with:
                     gas gas_remaining wei
                    args arg1, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x658d4b7f(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x571ac8b0(?????):
                        if unknown_0x591cf08d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_591cf08d
                        if unknown_0x5a53c1fb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_5a53c1fb
                        require unknown_0x60e71962(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_60e71962
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = totalSupply
                    emit Approval(totalSupply, msg.sender, address(arg1));
                    return 1
                if uint32(call.func_hash) >> 224 != unknown_0x658d4b7f(?????):
                    if unknown_0x6b67c4df(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return marketingFee
                    if unknown_0x6ddd1713(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(swapEnabled)
                    require unknown_0x6e78eb49(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_6e78eb49
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if not stor1[address(msg.sender)]:
                    revert with 0, '!AUTHORIZED'
                stor35[address(arg1)] = uint8(bool(arg2))
        if unknown_0x180b0d7e(?????) > uint32(call.func_hash) >> 224:
            if approve(address arg1, uint256 arg2) <= uint32(call.func_hash) >> 224:
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                    return 1
                if unknown_0x1023d5d4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_1023d5d4
                if unknown_0x1161ae39(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if totalSupply < storCBAA:
                        revert with 0, 17
                    if totalSupply - storCBAA < stor29AB:
                        revert with 0, 17
                    if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                        revert with 0, 17
                    if arg2 and 2 * balanceOf[stor7] > -1 / arg2:
                        revert with 0, 17
                    if not totalSupply - storCBAA - stor29AB:
                        revert with 0, 18
                    return (arg2 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB > arg1)
                require unknown_0x17d43583(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if not stor1[address(msg.sender)]:
                    revert with 0, '!AUTHORIZED'
                stor34[address(arg1)] = uint8(bool(arg2))
            else:
                if swapThreshold() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return swapThreshold
                if setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == bool(arg1)
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    autoBuybackEnabled = uint8(bool(arg1))
                    sub_591cf08d = arg2
                    sub_6e78eb49 = 0
                    sub_4896a632 = arg3
                    sub_5a53c1fb = arg4
                    sub_b91854f4 = block.number
                else:
                    if uint32(call.func_hash) >> 224 != setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5):
                        require name() == uint32(call.func_hash) >> 224
                        require not msg.value
                        if bool(stor2.length):
                            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor2.length):
                                if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor2.length):
                                    if 31 < uint255(stor2.length) * 0.5:
                                        mem[160] = uint256(stor2.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor2.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor2[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                                    mem[160] = 256 * stor2.length.field_8
                            else:
                                if bool(stor2.length) == stor2.length.field_1 < 32:
                                    revert with 0, 34
                                if stor2.length.field_1:
                                    if 31 < stor2.length.field_1:
                                        mem[160] = uint256(stor2.field_0)
                                        idx = 160
                                        s = 0
                                        while stor2.length.field_1 + 128 > idx:
                                            mem[idx + 32] = stor2[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)])
                                    mem[160] = 256 * stor2.length.field_8
                            mem[ceil32(uint255(stor2.length) * 0.5) + 224 len ceil32(uint255(stor2.length) * 0.5)] = mem[160 len ceil32(uint255(stor2.length) * 0.5)]
                            if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
                                mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor2.length), data=mem[160 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
                        if bool(stor2.length) == stor2.length.field_1 < 32:
                            revert with 0, 34
                        if bool(stor2.length):
                            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor2.length):
                                if 31 < uint255(stor2.length) * 0.5:
                                    mem[160] = uint256(stor2.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor2.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                                mem[160] = 256 * stor2.length.field_8
                        else:
                            if bool(stor2.length) == stor2.length.field_1 < 32:
                                revert with 0, 34
                            if stor2.length.field_1:
                                if 31 < stor2.length.field_1:
                                    mem[160] = uint256(stor2.field_0)
                                    idx = 160
                                    s = 0
                                    while stor2.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor2[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)])
                                mem[160] = 256 * stor2.length.field_8
                        mem[ceil32(stor2.length.field_1) + 224 len ceil32(stor2.length.field_1)] = mem[160 len ceil32(stor2.length.field_1)]
                        if ceil32(stor2.length.field_1) > stor2.length.field_1:
                            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 224] = 0
                        return Array(len=stor2.length % 128, data=mem[160 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 224 len 2 * ceil32(stor2.length.field_1)]), 
                    require not msg.value
                    require calldata.size - 4 >= 160
                    if not stor1[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    liquidityFee = arg1
                    buybackFee = arg2
                    reflectionFee = arg3
                    marketingFee = arg4
                    if arg1 > !arg2:
                        revert with 0, 17
                    if arg1 + arg2 > !arg3:
                        revert with 0, 17
                    if arg1 + arg2 + arg3 > !arg4:
                        revert with 0, 17
                    totalFee = arg1 + arg2 + arg3 + arg4
                    feeDenominator = arg5
                    if arg5 <= arg1 + arg2 + arg3 + arg4:
                        revert with 0, 'Total fee should not be greater than 99/100 of fee denominator'
        if unknown_0x201e7991(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x180b0d7e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return feeDenominator
            if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return totalSupply
            if unknown_0x19be947b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_19be947b
            require unknown_0x1df4ccfc(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return totalFee
        if unknown_0x201e7991(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            if not stor1[address(msg.sender)]:
                revert with 0, '!AUTHORIZED'
            sub_92258ec8 = arg1
            sub_8ab6ffc7 = arg2
        if unknown_0x2375ce40(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 96
            if not stor1[address(msg.sender)]:
                revert with 0, '!AUTHORIZED'
            if not arg2:
                revert with 0, 18
            require arg1 / arg2 <= 2
            require arg1 > arg2
            sub_921250d1 = arg1
            sub_ecbf666f = arg2
            sub_1023d5d4 = arg3
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            require unknown_0x2b112e49(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if totalSupply < storCBAA:
                revert with 0, 17
            if totalSupply - storCBAA < stor29AB:
                revert with 0, 17
            return (totalSupply - storCBAA - stor29AB)
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if totalSupply == allowance[address(arg1)][msg.sender]:
            if stor37:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if pairAddress != msg.sender:
                    if stor37:
                        if pairAddress != msg.sender:
                            if not stor37:
                                if autoBuybackEnabled:
                                    if sub_b91854f4 > !sub_5a53c1fb:
                                        revert with 0, 17
                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                        if eth.balance(this.address) >= sub_4896a632:
                                            stor37 = 1
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[192] = this.address
                                            mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = 0
                                            idx = 0
                                            s = 160
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_4896a632 wei
                                                 gas gas_remaining wei
                                                args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor37 = 0
                                            sub_b91854f4 = block.number
                                            if sub_6e78eb49 > !sub_4896a632:
                                                revert with 0, 17
                                            sub_6e78eb49 += sub_4896a632
                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                autoBuybackEnabled = 0
                    else:
                        if not swapEnabled:
                            if pairAddress != msg.sender:
                                if not stor37:
                                    if autoBuybackEnabled:
                                        if sub_b91854f4 > !sub_5a53c1fb:
                                            revert with 0, 17
                                        if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                            if eth.balance(this.address) >= sub_4896a632:
                                                stor37 = 1
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[224] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[160] = ext_call.return_data[12 len 20]
                                                mem[192] = this.address
                                                mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 228] = 0
                                                idx = 0
                                                s = 160
                                                t = ceil32(return_data.size) + 388
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_4896a632 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor37 = 0
                                                sub_b91854f4 = block.number
                                                if sub_6e78eb49 > !sub_4896a632:
                                                    revert with 0, 17
                                                sub_6e78eb49 += sub_4896a632
                                                if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                    autoBuybackEnabled = 0
                        else:
                            if balanceOf[this.address] < swapThreshold:
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > !sub_5a53c1fb:
                                                revert with 0, 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[224] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[160] = ext_call.return_data[12 len 20]
                                                    mem[192] = this.address
                                                    mem[ceil32(return_data.size) + 224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 228] = 0
                                                    idx = 0
                                                    s = 160
                                                    t = ceil32(return_data.size) + 388
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > !sub_4896a632:
                                                        revert with 0, 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                        autoBuybackEnabled = 0
                            else:
                                stor37 = 1
                                if totalSupply < storCBAA:
                                    revert with 0, 17
                                if totalSupply - storCBAA < stor29AB:
                                    revert with 0, 17
                                mem[0] = pairAddress
                                mem[32] = 32
                                if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                                    revert with 0, 17
                                if sub_8ab6ffc7 and 2 * balanceOf[stor7] > -1 / sub_8ab6ffc7:
                                    revert with 0, 17
                                if not totalSupply - storCBAA - stor29AB:
                                    revert with 0, 18
                                if sub_8ab6ffc7 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB > sub_92258ec8:
                                    if swapThreshold and 0 > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if swapThreshold < 0 / totalFee / 2:
                                        revert with 0, 17
                                    mem[128] = 2
                                    mem[160] = this.address
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = swapThreshold - (0 / totalFee / 2)
                                    mem[ceil32(return_data.size) + 388] = 2
                                    idx = 0
                                    s = 160
                                    t = ceil32(return_data.size) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 324] = this.address
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args swapThreshold - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if totalFee < 0:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if False and reflectionFee > 0:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if False and marketingFee > 0:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.0xd0e30db0 with:
                                       value 0 / totalFee wei
                                         gas gas_remaining wei
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not Mask(255, 1, 0 / totalFee):
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 288] = this.address
                                                            mem[(2 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(2 * ceil32(return_data.size)) + 324] = 0
                                                            mem[(2 * ceil32(return_data.size)) + 356] = 128
                                                            mem[(2 * ceil32(return_data.size)) + 452] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                            idx = 0
                                                            s = ceil32(return_data.size) + 256
                                                            t = (2 * ceil32(return_data.size)) + 484
                                                            while idx < mem[ceil32(return_data.size) + 224]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(2 * ceil32(return_data.size)) + 388] = 57005
                                                            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                    else:
                                        mem[ceil32(return_data.size) + 292] = 0
                                        mem[ceil32(return_data.size) + 324] = 0
                                        mem[ceil32(return_data.size) + 356] = autoLiquidityReceiverAddress
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[(2 * ceil32(return_data.size)) + 224] = 0 / totalFee / 2
                                        emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee / 2);
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (4 * ceil32(return_data.size)) + 320
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 0 >= 0 / totalFee / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                                            if 1 >= 0 / totalFee / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 288] = this.address
                                                            mem[(4 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                                                            mem[(4 * ceil32(return_data.size)) + 356] = 128
                                                            mem[(4 * ceil32(return_data.size)) + 452] = 0 / totalFee / 2
                                                            idx = 0
                                                            s = (2 * ceil32(return_data.size)) + 256
                                                            t = (4 * ceil32(return_data.size)) + 484
                                                            while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(4 * ceil32(return_data.size)) + 388] = 57005
                                                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.mem[mem[64] len 4] with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 480]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                else:
                                    if swapThreshold and liquidityFee > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if swapThreshold < swapThreshold * liquidityFee / totalFee / 2:
                                        revert with 0, 17
                                    mem[128] = 2
                                    mem[160] = this.address
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = swapThreshold - (swapThreshold * liquidityFee / totalFee / 2)
                                    mem[ceil32(return_data.size) + 388] = 2
                                    idx = 0
                                    s = 160
                                    t = ceil32(return_data.size) + 420
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 324] = this.address
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args swapThreshold - (swapThreshold * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if totalFee < stor10:
                                        revert with 0, 17
                                    if False and liquidityFee > 0:
                                        revert with 0, 17
                                    if not totalFee - stor10:
                                        revert with 0, 18
                                    if False and reflectionFee > 0:
                                        revert with 0, 17
                                    if not totalFee - stor10:
                                        revert with 0, 18
                                    if False and marketingFee > 0:
                                        revert with 0, 17
                                    if not totalFee - stor10:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 224] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.0xd0e30db0 with:
                                       value 0 / totalFee - stor10 wei
                                         gas gas_remaining wei
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee - stor10 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not Mask(255, 1, swapThreshold * liquidityFee / totalFee):
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 288] = this.address
                                                            mem[(2 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(2 * ceil32(return_data.size)) + 324] = 0
                                                            mem[(2 * ceil32(return_data.size)) + 356] = 128
                                                            mem[(2 * ceil32(return_data.size)) + 452] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                            idx = 0
                                                            s = ceil32(return_data.size) + 256
                                                            t = (2 * ceil32(return_data.size)) + 484
                                                            while idx < mem[ceil32(return_data.size) + 224]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(2 * ceil32(return_data.size)) + 388] = 57005
                                                            mem[(2 * ceil32(return_data.size)) + 420] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 452 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                    else:
                                        mem[ceil32(return_data.size) + 292] = 0
                                        mem[ceil32(return_data.size) + 324] = 0
                                        mem[ceil32(return_data.size) + 356] = autoLiquidityReceiverAddress
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee - stor10 / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, swapThreshold * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[(2 * ceil32(return_data.size)) + 224] = 0 / totalFee - stor10 / 2
                                        emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor10), swapThreshold * liquidityFee / totalFee / 2);
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (4 * ceil32(return_data.size)) + 320
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 0 >= 0 / totalFee - stor10 / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                                            if 1 >= 0 / totalFee - stor10 / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 288] = this.address
                                                            mem[(4 * ceil32(return_data.size)) + 320] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                                                            mem[(4 * ceil32(return_data.size)) + 356] = 128
                                                            mem[(4 * ceil32(return_data.size)) + 452] = 0 / totalFee - stor10 / 2
                                                            idx = 0
                                                            s = (2 * ceil32(return_data.size)) + 256
                                                            t = (4 * ceil32(return_data.size)) + 484
                                                            while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(4 * ceil32(return_data.size)) + 388] = 57005
                                                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.mem[mem[64] len 4] with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 480]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                balanceOf[address(arg1)] -= arg3
                if stor35[address(arg1)]:
                    if balanceOf[address(arg2)] > !arg3:
                        revert with 0, 17
                    balanceOf[address(arg2)] += arg3
                    require ext_code.size(distributorAddress)
                    if not stor36[address(arg1)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    if not stor36[address(arg2)]:
                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), balanceOf[address(arg2)]
                    call distributorAddress.process(uint256 arg1) with:
                         gas gas_remaining wei
                        args sub_60e71962
                    emit Transfer(arg3, address(arg1), address(arg2));
                else:
                    if pairAddress != address(arg2):
                        if arg3 and totalFee > -1 / arg3:
                            revert with 0, 17
                        if not feeDenominator:
                            revert with 0, 18
                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                            revert with 0, 17
                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                        if arg3 < arg3 * totalFee / feeDenominator:
                            revert with 0, 17
                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                            revert with 0, 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                        require ext_code.size(distributorAddress)
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor36[address(arg2)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                    else:
                        if sub_19be947b > !sub_1023d5d4:
                            revert with 0, 17
                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                            if arg3 and totalFee > -1 / arg3:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += arg3 * totalFee / feeDenominator
                            emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                            if arg3 < arg3 * totalFee / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            if not stor36[address(arg2)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), balanceOf[address(arg2)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                        else:
                            if sub_19be947b > !sub_1023d5d4:
                                revert with 0, 17
                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                revert with 0, 17
                            if totalFee and sub_921250d1 > -1 / totalFee:
                                revert with 0, 17
                            if not sub_ecbf666f:
                                revert with 0, 18
                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                revert with 0, 17
                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                revert with 0, 17
                            if not sub_1023d5d4:
                                revert with 0, 18
                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                revert with 0, 17
                            if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                            emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                            if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            if not stor36[address(arg2)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), balanceOf[address(arg2)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
        else:
            mem[128] = 22
            mem[160] = 'Insufficient Allowance' << 80
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'Insufficient Allowance', 0
            allowance[address(arg1)][msg.sender] -= arg3
            if stor37:
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 'Insufficient Balance', 0
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
            else:
                if msg.sender == pairAddress:
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 'Insufficient Balance', 0
                    balanceOf[address(arg1)] -= arg3
                    if stor35[address(arg1)]:
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        balanceOf[address(arg2)] += arg3
                        require ext_code.size(distributorAddress)
                        if not stor36[address(arg1)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        if not stor36[address(arg2)]:
                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg2), balanceOf[address(arg2)]
                        call distributorAddress.process(uint256 arg1) with:
                             gas gas_remaining wei
                            args sub_60e71962
                        emit Transfer(arg3, address(arg1), address(arg2));
                    else:
                        if pairAddress != address(arg2):
                            if arg3 and totalFee > -1 / arg3:
                                revert with 0, 17
                            if not feeDenominator:
                                revert with 0, 18
                            if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                revert with 0, 17
                            balanceOf[this.address] += arg3 * totalFee / feeDenominator
                            emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                            if arg3 < arg3 * totalFee / feeDenominator:
                                revert with 0, 17
                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                revert with 0, 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                            require ext_code.size(distributorAddress)
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            if not stor36[address(arg2)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), balanceOf[address(arg2)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                        else:
                            if sub_19be947b > !sub_1023d5d4:
                                revert with 0, 17
                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                if arg3 and totalFee > -1 / arg3:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                if arg3 < arg3 * totalFee / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                if not stor36[address(arg2)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                            else:
                                if sub_19be947b > !sub_1023d5d4:
                                    revert with 0, 17
                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                    revert with 0, 17
                                if totalFee and sub_921250d1 > -1 / totalFee:
                                    revert with 0, 17
                                if not sub_ecbf666f:
                                    revert with 0, 18
                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                    revert with 0, 17
                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                    revert with 0, 17
                                if not sub_1023d5d4:
                                    revert with 0, 18
                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                    revert with 0, 17
                                if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                if not stor36[address(arg2)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                else:
                    if stor37:
                        if pairAddress != msg.sender:
                            if not stor37:
                                if autoBuybackEnabled:
                                    if sub_b91854f4 > !sub_5a53c1fb:
                                        revert with 0, 17
                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                        if eth.balance(this.address) >= sub_4896a632:
                                            stor37 = 1
                                            require ext_code.size(routerAddress)
                                            staticcall routerAddress.WETH() with:
                                                    gas gas_remaining wei
                                            mem[288] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[224] = ext_call.return_data[12 len 20]
                                            mem[256] = this.address
                                            mem[ceil32(return_data.size) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 292] = 0
                                            idx = 0
                                            s = 224
                                            t = ceil32(return_data.size) + 452
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(routerAddress)
                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                               value sub_4896a632 wei
                                                 gas gas_remaining wei
                                                args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            stor37 = 0
                                            sub_b91854f4 = block.number
                                            if sub_6e78eb49 > !sub_4896a632:
                                                revert with 0, 17
                                            sub_6e78eb49 += sub_4896a632
                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                autoBuybackEnabled = 0
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 'Insufficient Balance', 0
                        balanceOf[address(arg1)] -= arg3
                        if stor35[address(arg1)]:
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            balanceOf[address(arg2)] += arg3
                            require ext_code.size(distributorAddress)
                            if not stor36[address(arg1)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), balanceOf[address(arg1)]
                            if not stor36[address(arg2)]:
                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), balanceOf[address(arg2)]
                            call distributorAddress.process(uint256 arg1) with:
                                 gas gas_remaining wei
                                args sub_60e71962
                            emit Transfer(arg3, address(arg1), address(arg2));
                        else:
                            if pairAddress != address(arg2):
                                if arg3 and totalFee > -1 / arg3:
                                    revert with 0, 17
                                if not feeDenominator:
                                    revert with 0, 18
                                if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                    revert with 0, 17
                                balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                if arg3 < arg3 * totalFee / feeDenominator:
                                    revert with 0, 17
                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                    revert with 0, 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                require ext_code.size(distributorAddress)
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                if not stor36[address(arg2)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                            else:
                                if sub_19be947b > !sub_1023d5d4:
                                    revert with 0, 17
                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                    if arg3 and totalFee > -1 / arg3:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                    if arg3 < arg3 * totalFee / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    if not stor36[address(arg2)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                else:
                                    if sub_19be947b > !sub_1023d5d4:
                                        revert with 0, 17
                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                        revert with 0, 17
                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                        revert with 0, 17
                                    if not sub_ecbf666f:
                                        revert with 0, 18
                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                        revert with 0, 17
                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                        revert with 0, 17
                                    if not sub_1023d5d4:
                                        revert with 0, 18
                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                        revert with 0, 17
                                    if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                    emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                    if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    if not stor36[address(arg2)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                    else:
                        if not swapEnabled:
                            if pairAddress != msg.sender:
                                if not stor37:
                                    if autoBuybackEnabled:
                                        if sub_b91854f4 > !sub_5a53c1fb:
                                            revert with 0, 17
                                        if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                            if eth.balance(this.address) >= sub_4896a632:
                                                stor37 = 1
                                                require ext_code.size(routerAddress)
                                                staticcall routerAddress.WETH() with:
                                                        gas gas_remaining wei
                                                mem[288] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[224] = ext_call.return_data[12 len 20]
                                                mem[256] = this.address
                                                mem[ceil32(return_data.size) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 292] = 0
                                                idx = 0
                                                s = 224
                                                t = ceil32(return_data.size) + 452
                                                while idx < 2:
                                                    mem[t] = mem[s + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(routerAddress)
                                                call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                   value sub_4896a632 wei
                                                     gas gas_remaining wei
                                                    args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                stor37 = 0
                                                sub_b91854f4 = block.number
                                                if sub_6e78eb49 > !sub_4896a632:
                                                    revert with 0, 17
                                                sub_6e78eb49 += sub_4896a632
                                                if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                    autoBuybackEnabled = 0
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 'Insufficient Balance', 0
                            balanceOf[address(arg1)] -= arg3
                            if stor35[address(arg1)]:
                                if balanceOf[address(arg2)] > !arg3:
                                    revert with 0, 17
                                balanceOf[address(arg2)] += arg3
                                require ext_code.size(distributorAddress)
                                if not stor36[address(arg1)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg1), balanceOf[address(arg1)]
                                if not stor36[address(arg2)]:
                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), balanceOf[address(arg2)]
                                call distributorAddress.process(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args sub_60e71962
                                emit Transfer(arg3, address(arg1), address(arg2));
                            else:
                                if pairAddress != address(arg2):
                                    if arg3 and totalFee > -1 / arg3:
                                        revert with 0, 17
                                    if not feeDenominator:
                                        revert with 0, 18
                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                        revert with 0, 17
                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                    if arg3 < arg3 * totalFee / feeDenominator:
                                        revert with 0, 17
                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                        revert with 0, 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    if not stor36[address(arg2)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                else:
                                    if sub_19be947b > !sub_1023d5d4:
                                        revert with 0, 17
                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                        if arg3 and totalFee > -1 / arg3:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                        if arg3 < arg3 * totalFee / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        if not stor36[address(arg2)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg2), balanceOf[address(arg2)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                    else:
                                        if sub_19be947b > !sub_1023d5d4:
                                            revert with 0, 17
                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                            revert with 0, 17
                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                            revert with 0, 17
                                        if not sub_ecbf666f:
                                            revert with 0, 18
                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                            revert with 0, 17
                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                            revert with 0, 17
                                        if not sub_1023d5d4:
                                            revert with 0, 18
                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                            revert with 0, 17
                                        if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                        emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                        if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        if not stor36[address(arg2)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg2), balanceOf[address(arg2)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                        else:
                            if balanceOf[this.address] < swapThreshold:
                                if pairAddress != msg.sender:
                                    if not stor37:
                                        if autoBuybackEnabled:
                                            if sub_b91854f4 > !sub_5a53c1fb:
                                                revert with 0, 17
                                            if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                if eth.balance(this.address) >= sub_4896a632:
                                                    stor37 = 1
                                                    require ext_code.size(routerAddress)
                                                    staticcall routerAddress.WETH() with:
                                                            gas gas_remaining wei
                                                    mem[288] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[224] = ext_call.return_data[12 len 20]
                                                    mem[256] = this.address
                                                    mem[ceil32(return_data.size) + 288] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(return_data.size) + 292] = 0
                                                    idx = 0
                                                    s = 224
                                                    t = ceil32(return_data.size) + 452
                                                    while idx < 2:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                       value sub_4896a632 wei
                                                         gas gas_remaining wei
                                                        args 0, 128, 57005, block.timestamp, 2, mem[ceil32(return_data.size) + 452 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    stor37 = 0
                                                    sub_b91854f4 = block.number
                                                    if sub_6e78eb49 > !sub_4896a632:
                                                        revert with 0, 17
                                                    sub_6e78eb49 += sub_4896a632
                                                    if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                        autoBuybackEnabled = 0
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 'Insufficient Balance', 0
                                balanceOf[address(arg1)] -= arg3
                                if stor35[address(arg1)]:
                                    if balanceOf[address(arg2)] > !arg3:
                                        revert with 0, 17
                                    balanceOf[address(arg2)] += arg3
                                    require ext_code.size(distributorAddress)
                                    if not stor36[address(arg1)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
                                    if not stor36[address(arg2)]:
                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), balanceOf[address(arg2)]
                                    call distributorAddress.process(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args sub_60e71962
                                    emit Transfer(arg3, address(arg1), address(arg2));
                                else:
                                    if pairAddress != address(arg2):
                                        if arg3 and totalFee > -1 / arg3:
                                            revert with 0, 17
                                        if not feeDenominator:
                                            revert with 0, 18
                                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                            revert with 0, 17
                                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                        if arg3 < arg3 * totalFee / feeDenominator:
                                            revert with 0, 17
                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                            revert with 0, 17
                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        if not stor36[address(arg2)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg2), balanceOf[address(arg2)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                    else:
                                        if sub_19be947b > !sub_1023d5d4:
                                            revert with 0, 17
                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                            if arg3 and totalFee > -1 / arg3:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                            emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                            if arg3 < arg3 * totalFee / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            if not stor36[address(arg2)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                        else:
                                            if sub_19be947b > !sub_1023d5d4:
                                                revert with 0, 17
                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                revert with 0, 17
                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                revert with 0, 17
                                            if not sub_ecbf666f:
                                                revert with 0, 18
                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                revert with 0, 17
                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                revert with 0, 17
                                            if not sub_1023d5d4:
                                                revert with 0, 18
                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                revert with 0, 17
                                            if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                            emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                            if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            if not stor36[address(arg2)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                            else:
                                stor37 = 1
                                if totalSupply < storCBAA:
                                    revert with 0, 17
                                if totalSupply - storCBAA < stor29AB:
                                    revert with 0, 17
                                mem[0] = pairAddress
                                mem[32] = 32
                                if balanceOf[stor7] and 2 > -1 / balanceOf[stor7]:
                                    revert with 0, 17
                                if sub_8ab6ffc7 and 2 * balanceOf[stor7] > -1 / sub_8ab6ffc7:
                                    revert with 0, 17
                                if not totalSupply - storCBAA - stor29AB:
                                    revert with 0, 18
                                if sub_8ab6ffc7 * 2 * balanceOf[stor7] / totalSupply - storCBAA - stor29AB > sub_92258ec8:
                                    if swapThreshold and 0 > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if swapThreshold < 0 / totalFee / 2:
                                        revert with 0, 17
                                    mem[192] = 2
                                    mem[224] = this.address
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[256] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 292] = swapThreshold - (0 / totalFee / 2)
                                    mem[ceil32(return_data.size) + 452] = 2
                                    idx = 0
                                    s = 224
                                    t = ceil32(return_data.size) + 484
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 388] = this.address
                                    mem[ceil32(return_data.size) + 420] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args swapThreshold - (0 / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 484 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if totalFee < 0:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if False and reflectionFee > 0:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if False and marketingFee > 0:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 288] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.0xd0e30db0 with:
                                       value 0 / totalFee wei
                                         gas gas_remaining wei
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not Mask(255, 1, 0 / totalFee):
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 352] = this.address
                                                            mem[(2 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(2 * ceil32(return_data.size)) + 388] = 0
                                                            mem[(2 * ceil32(return_data.size)) + 420] = 128
                                                            mem[(2 * ceil32(return_data.size)) + 516] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                            idx = 0
                                                            s = ceil32(return_data.size) + 320
                                                            t = (2 * ceil32(return_data.size)) + 548
                                                            while idx < mem[ceil32(return_data.size) + 288]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(2 * ceil32(return_data.size)) + 452] = 57005
                                                            mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 288]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                    else:
                                        mem[ceil32(return_data.size) + 356] = 0
                                        mem[ceil32(return_data.size) + 388] = 0
                                        mem[ceil32(return_data.size) + 420] = autoLiquidityReceiverAddress
                                        mem[ceil32(return_data.size) + 452] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, 0 / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        mem[ceil32(return_data.size) + 288 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0 / totalFee / 2
                                        emit AutoLiquify(Mask(255, 1, 0 / totalFee), 0 / totalFee / 2);
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (4 * ceil32(return_data.size)) + 384
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 0 >= 0 / totalFee / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[12 len 20]
                                                            if 1 >= 0 / totalFee / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 352] = this.address
                                                            mem[(4 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(4 * ceil32(return_data.size)) + 388] = 0
                                                            mem[(4 * ceil32(return_data.size)) + 420] = 128
                                                            mem[(4 * ceil32(return_data.size)) + 516] = 0 / totalFee / 2
                                                            idx = 0
                                                            s = (2 * ceil32(return_data.size)) + 320
                                                            t = (4 * ceil32(return_data.size)) + 548
                                                            while idx < mem[(2 * ceil32(return_data.size)) + 288]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(4 * ceil32(return_data.size)) + 452] = 57005
                                                            mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.mem[mem[64] len 4] with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 288]) + -mem[64] + 544]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'Insufficient Balance', 0
                                    balanceOf[address(arg1)] -= arg3
                                    if stor35[address(arg1)]:
                                        if balanceOf[address(arg2)] > !arg3:
                                            revert with 0, 17
                                        balanceOf[address(arg2)] += arg3
                                        require ext_code.size(distributorAddress)
                                        if not stor36[address(arg1)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), balanceOf[address(arg1)]
                                        if not stor36[address(arg2)]:
                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg2), balanceOf[address(arg2)]
                                        call distributorAddress.process(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args sub_60e71962
                                        emit Transfer(arg3, address(arg1), address(arg2));
                                    else:
                                        if pairAddress != address(arg2):
                                            if arg3 and totalFee > -1 / arg3:
                                                revert with 0, 17
                                            if not feeDenominator:
                                                revert with 0, 18
                                            if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                revert with 0, 17
                                            balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                            emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                            if arg3 < arg3 * totalFee / feeDenominator:
                                                revert with 0, 17
                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                revert with 0, 17
                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            if not stor36[address(arg2)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                        else:
                                            if sub_19be947b > !sub_1023d5d4:
                                                revert with 0, 17
                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                if arg3 and totalFee > -1 / arg3:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                if arg3 < arg3 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                if not stor36[address(arg2)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), balanceOf[address(arg2)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                    revert with 0, 17
                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                    revert with 0, 17
                                                if not sub_ecbf666f:
                                                    revert with 0, 18
                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                    revert with 0, 17
                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                    revert with 0, 17
                                                if not sub_1023d5d4:
                                                    revert with 0, 18
                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                    revert with 0, 17
                                                if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                if not stor36[address(arg2)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), balanceOf[address(arg2)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                else:
                                    if swapThreshold and liquidityFee > -1 / swapThreshold:
                                        revert with 0, 17
                                    if not totalFee:
                                        revert with 0, 18
                                    if swapThreshold < swapThreshold * liquidityFee / totalFee / 2:
                                        revert with 0, 17
                                    mem[192] = 2
                                    mem[224] = this.address
                                    require ext_code.size(routerAddress)
                                    staticcall routerAddress.WETH() with:
                                            gas gas_remaining wei
                                    mem[288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[256] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 292] = swapThreshold - (swapThreshold * liquidityFee / totalFee / 2)
                                    mem[ceil32(return_data.size) + 452] = 2
                                    idx = 0
                                    s = 224
                                    t = ceil32(return_data.size) + 484
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 388] = this.address
                                    mem[ceil32(return_data.size) + 420] = block.timestamp
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args swapThreshold - (swapThreshold * liquidityFee / totalFee / 2), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 484 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    if totalFee < stor10:
                                        revert with 0, 17
                                    if False and liquidityFee > 0:
                                        revert with 0, 17
                                    if not totalFee - stor10:
                                        revert with 0, 18
                                    if False and reflectionFee > 0:
                                        revert with 0, 17
                                    if not totalFee - stor10:
                                        revert with 0, 18
                                    if False and marketingFee > 0:
                                        revert with 0, 17
                                    if not totalFee - stor10:
                                        revert with 0, 18
                                    mem[ceil32(return_data.size) + 288] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(distributorAddress)
                                    call distributorAddress.0xd0e30db0 with:
                                       value 0 / totalFee - stor10 wei
                                         gas gas_remaining wei
                                    call marketingFeeReceiverAddress with:
                                       value 0 / totalFee - stor10 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not Mask(255, 1, swapThreshold * liquidityFee / totalFee):
                                        stor37 = 0
                                        if msg.sender == pairAddress:
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 'Insufficient Balance', 0
                                            balanceOf[address(arg1)] -= arg3
                                            if stor35[address(arg1)]:
                                                if balanceOf[address(arg2)] > !arg3:
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] += arg3
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                if not stor36[address(arg2)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), balanceOf[address(arg2)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer(arg3, address(arg1), address(arg2));
                                            else:
                                                if pairAddress != address(arg2):
                                                    if arg3 and totalFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                    if arg3 < arg3 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    if not stor36[address(arg2)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), balanceOf[address(arg2)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                        if arg3 and totalFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                        if arg3 < arg3 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        if not stor36[address(arg2)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                            revert with 0, 17
                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                            revert with 0, 17
                                                        if not sub_ecbf666f:
                                                            revert with 0, 18
                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                            revert with 0, 17
                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                            revert with 0, 17
                                                        if not sub_1023d5d4:
                                                            revert with 0, 18
                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                            revert with 0, 17
                                                        if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                        emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                        if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        if not stor36[address(arg2)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                        else:
                                            if stor37:
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 'Insufficient Balance', 0
                                                balanceOf[address(arg1)] -= arg3
                                                if stor35[address(arg1)]:
                                                    if balanceOf[address(arg2)] > !arg3:
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] += arg3
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    if not stor36[address(arg2)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), balanceOf[address(arg2)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer(arg3, address(arg1), address(arg2));
                                                else:
                                                    if pairAddress != address(arg2):
                                                        if arg3 and totalFee > -1 / arg3:
                                                            revert with 0, 17
                                                        if not feeDenominator:
                                                            revert with 0, 18
                                                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                            revert with 0, 17
                                                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                        if arg3 < arg3 * totalFee / feeDenominator:
                                                            revert with 0, 17
                                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        if not stor36[address(arg2)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                    else:
                                                        if sub_19be947b > !sub_1023d5d4:
                                                            revert with 0, 17
                                                        if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                            if arg3 and totalFee > -1 / arg3:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                            emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                            if arg3 < arg3 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            if not stor36[address(arg2)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                revert with 0, 17
                                                            if totalFee and sub_921250d1 > -1 / totalFee:
                                                                revert with 0, 17
                                                            if not sub_ecbf666f:
                                                                revert with 0, 18
                                                            if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                revert with 0, 17
                                                            if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                revert with 0, 17
                                                            if not sub_1023d5d4:
                                                                revert with 0, 18
                                                            if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                revert with 0, 17
                                                            if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                            emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                            if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            if not stor36[address(arg2)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                            else:
                                                if not autoBuybackEnabled:
                                                    if arg3 > balanceOf[address(arg1)]:
                                                        revert with 0, 'Insufficient Balance', 0
                                                    balanceOf[address(arg1)] -= arg3
                                                    if stor35[address(arg1)]:
                                                        if balanceOf[address(arg2)] > !arg3:
                                                            revert with 0, 17
                                                        balanceOf[address(arg2)] += arg3
                                                        require ext_code.size(distributorAddress)
                                                        if not stor36[address(arg1)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg1), balanceOf[address(arg1)]
                                                        if not stor36[address(arg2)]:
                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), balanceOf[address(arg2)]
                                                        call distributorAddress.process(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args sub_60e71962
                                                        emit Transfer(arg3, address(arg1), address(arg2));
                                                    else:
                                                        if pairAddress != address(arg2):
                                                            if arg3 and totalFee > -1 / arg3:
                                                                revert with 0, 17
                                                            if not feeDenominator:
                                                                revert with 0, 18
                                                            if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                revert with 0, 17
                                                            balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                            emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                            if arg3 < arg3 * totalFee / feeDenominator:
                                                                revert with 0, 17
                                                            if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            if not stor36[address(arg2)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                        else:
                                                            if sub_19be947b > !sub_1023d5d4:
                                                                revert with 0, 17
                                                            if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                if arg3 and totalFee > -1 / arg3:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                if arg3 < arg3 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                if not stor36[address(arg2)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                    revert with 0, 17
                                                                if totalFee and sub_921250d1 > -1 / totalFee:
                                                                    revert with 0, 17
                                                                if not sub_ecbf666f:
                                                                    revert with 0, 18
                                                                if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                    revert with 0, 17
                                                                if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                    revert with 0, 17
                                                                if not sub_1023d5d4:
                                                                    revert with 0, 18
                                                                if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                    revert with 0, 17
                                                                if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                                emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                                if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                if not stor36[address(arg2)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                                else:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb > block.number:
                                                        if arg3 > balanceOf[address(arg1)]:
                                                            revert with 0, 'Insufficient Balance', 0
                                                        balanceOf[address(arg1)] -= arg3
                                                        if stor35[address(arg1)]:
                                                            if balanceOf[address(arg2)] > !arg3:
                                                                revert with 0, 17
                                                            balanceOf[address(arg2)] += arg3
                                                            require ext_code.size(distributorAddress)
                                                            if not stor36[address(arg1)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg1), balanceOf[address(arg1)]
                                                            if not stor36[address(arg2)]:
                                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), balanceOf[address(arg2)]
                                                            call distributorAddress.process(uint256 arg1) with:
                                                                 gas gas_remaining wei
                                                                args sub_60e71962
                                                            emit Transfer(arg3, address(arg1), address(arg2));
                                                        else:
                                                            if pairAddress != address(arg2):
                                                                if arg3 and totalFee > -1 / arg3:
                                                                    revert with 0, 17
                                                                if not feeDenominator:
                                                                    revert with 0, 18
                                                                if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                    revert with 0, 17
                                                                balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                if arg3 < arg3 * totalFee / feeDenominator:
                                                                    revert with 0, 17
                                                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                    revert with 0, 17
                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                if not stor36[address(arg2)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                            else:
                                                                if sub_19be947b > !sub_1023d5d4:
                                                                    revert with 0, 17
                                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                    if arg3 and totalFee > -1 / arg3:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                    if arg3 < arg3 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    if not stor36[address(arg2)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg2), balanceOf[address(arg2)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                        revert with 0, 17
                                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_ecbf666f:
                                                                        revert with 0, 18
                                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                        revert with 0, 17
                                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                        revert with 0, 17
                                                                    if not sub_1023d5d4:
                                                                        revert with 0, 18
                                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                        revert with 0, 17
                                                                    if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                                    emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                                    if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    if not stor36[address(arg2)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg2), balanceOf[address(arg2)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                                    else:
                                                        if eth.balance(this.address) < sub_4896a632:
                                                            if arg3 > balanceOf[address(arg1)]:
                                                                revert with 0, 'Insufficient Balance', 0
                                                            balanceOf[address(arg1)] -= arg3
                                                            if stor35[address(arg1)]:
                                                                if balanceOf[address(arg2)] > !arg3:
                                                                    revert with 0, 17
                                                                balanceOf[address(arg2)] += arg3
                                                                require ext_code.size(distributorAddress)
                                                                if not stor36[address(arg1)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg1), balanceOf[address(arg1)]
                                                                if not stor36[address(arg2)]:
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), balanceOf[address(arg2)]
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer(arg3, address(arg1), address(arg2));
                                                            else:
                                                                if pairAddress != address(arg2):
                                                                    if arg3 and totalFee > -1 / arg3:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                    if arg3 < arg3 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                    require ext_code.size(distributorAddress)
                                                                    if not stor36[address(arg1)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg1), balanceOf[address(arg1)]
                                                                    if not stor36[address(arg2)]:
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args address(arg2), balanceOf[address(arg2)]
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                        if arg3 and totalFee > -1 / arg3:
                                                                            revert with 0, 17
                                                                        if not feeDenominator:
                                                                            revert with 0, 18
                                                                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                        if arg3 < arg3 * totalFee / feeDenominator:
                                                                            revert with 0, 17
                                                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                            revert with 0, 17
                                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                        require ext_code.size(distributorAddress)
                                                                        if not stor36[address(arg1)]:
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args address(arg1), balanceOf[address(arg1)]
                                                                        if not stor36[address(arg2)]:
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args address(arg2), balanceOf[address(arg2)]
                                                                        call distributorAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args sub_60e71962
                                                                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                                    else:
                                                                        if sub_19be947b > !sub_1023d5d4:
                                                                            revert with 0, 17
                                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                            revert with 0, 17
                                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                                            revert with 0, 17
                                                                        if not sub_ecbf666f:
                                                                            revert with 0, 18
                                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                            revert with 0, 17
                                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                            revert with 0, 17
                                                                        if not sub_1023d5d4:
                                                                            revert with 0, 18
                                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                            revert with 0, 17
                                                                        if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                                            revert with 0, 17
                                                                        if not feeDenominator:
                                                                            revert with 0, 18
                                                                        if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                                        emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                                        if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                                            revert with 0, 17
                                                                        if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                                            revert with 0, 17
                                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                                        require ext_code.size(distributorAddress)
                                                                        if not stor36[address(arg1)]:
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args address(arg1), balanceOf[address(arg1)]
                                                                        if not stor36[address(arg2)]:
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args address(arg2), balanceOf[address(arg2)]
                                                                        call distributorAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args sub_60e71962
                                                                        emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                                        else:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                                            mem[ceil32(return_data.size) + 352] = this.address
                                                            mem[(2 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(2 * ceil32(return_data.size)) + 388] = 0
                                                            mem[(2 * ceil32(return_data.size)) + 420] = 128
                                                            mem[(2 * ceil32(return_data.size)) + 516] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                                            idx = 0
                                                            s = ceil32(return_data.size) + 320
                                                            t = (2 * ceil32(return_data.size)) + 548
                                                            while idx < mem[ceil32(return_data.size) + 288]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(2 * ceil32(return_data.size)) + 452] = 57005
                                                            mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args 0, 128, 57005, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 288]) + 32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                                            if arg3 > balanceOf[address(arg1)]:
                                                                mem[(2 * ceil32(return_data.size)) + 448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                                mem[(2 * ceil32(return_data.size)) + 452] = 32
                                                                mem[(2 * ceil32(return_data.size)) + 484] = 20
                                                                mem[(2 * ceil32(return_data.size)) + 516] = 'Insufficient Balance' << 96
                                                                mem[(2 * ceil32(return_data.size)) + 536] = 0
                                                                revert with memory
                                                                  from (2 * ceil32(return_data.size)) + 448
                                                                   len ceil32(return_data.size) + 100
                                                            balanceOf[address(arg1)] -= arg3
                                                            if stor35[address(arg1)]:
                                                                if balanceOf[address(arg2)] > !arg3:
                                                                    revert with 0, 17
                                                                balanceOf[address(arg2)] += arg3
                                                                if not stor36[address(arg1)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 452] = address(arg1)
                                                                    mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg1)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                if not stor36[address(arg2)]:
                                                                    mem[(2 * ceil32(return_data.size)) + 452] = address(arg2)
                                                                    mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg2)]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                         gas gas_remaining wei
                                                                        args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                require ext_code.size(distributorAddress)
                                                                call distributorAddress.process(uint256 arg1) with:
                                                                     gas gas_remaining wei
                                                                    args sub_60e71962
                                                                emit Transfer(arg3, address(arg1), address(arg2));
                                                            else:
                                                                if pairAddress != address(arg2):
                                                                    if arg3 and totalFee > -1 / arg3:
                                                                        revert with 0, 17
                                                                    if not feeDenominator:
                                                                        revert with 0, 18
                                                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                        revert with 0, 17
                                                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                    if arg3 < arg3 * totalFee / feeDenominator:
                                                                        revert with 0, 17
                                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                        revert with 0, 17
                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                    if not stor36[address(arg1)]:
                                                                        mem[(2 * ceil32(return_data.size)) + 452] = address(arg1)
                                                                        mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg1)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                    if not stor36[address(arg2)]:
                                                                        mem[(2 * ceil32(return_data.size)) + 452] = address(arg2)
                                                                        mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg2)]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                             gas gas_remaining wei
                                                                            args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                    require ext_code.size(distributorAddress)
                                                                    call distributorAddress.process(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args sub_60e71962
                                                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                                else:
                                                                    if sub_19be947b > !sub_1023d5d4:
                                                                        revert with 0, 17
                                                                    if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                                        if arg3 and totalFee > -1 / arg3:
                                                                            revert with 0, 17
                                                                        if not feeDenominator:
                                                                            revert with 0, 18
                                                                        if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                                        emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                                        if arg3 < arg3 * totalFee / feeDenominator:
                                                                            revert with 0, 17
                                                                        if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                                            revert with 0, 17
                                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                                        if not stor36[address(arg1)]:
                                                                            mem[(2 * ceil32(return_data.size)) + 452] = address(arg1)
                                                                            mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg1)]
                                                                            require ext_code.size(distributorAddress)
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                        if not stor36[address(arg2)]:
                                                                            mem[(2 * ceil32(return_data.size)) + 452] = address(arg2)
                                                                            mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg2)]
                                                                            require ext_code.size(distributorAddress)
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args sub_60e71962
                                                                        emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                                    else:
                                                                        if sub_19be947b > !sub_1023d5d4:
                                                                            revert with 0, 17
                                                                        if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                                            revert with 0, 17
                                                                        if totalFee and sub_921250d1 > -1 / totalFee:
                                                                            revert with 0, 17
                                                                        if not sub_ecbf666f:
                                                                            revert with 0, 18
                                                                        if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                                            revert with 0, 17
                                                                        if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                                            revert with 0, 17
                                                                        if not sub_1023d5d4:
                                                                            revert with 0, 18
                                                                        if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                                            revert with 0, 17
                                                                        if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                                            revert with 0, 17
                                                                        if not feeDenominator:
                                                                            revert with 0, 18
                                                                        if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                                            revert with 0, 17
                                                                        balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                                        emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                                        if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                                            revert with 0, 17
                                                                        if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                                            revert with 0, 17
                                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                                        if not stor36[address(arg1)]:
                                                                            mem[(2 * ceil32(return_data.size)) + 452] = address(arg1)
                                                                            mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg1)]
                                                                            require ext_code.size(distributorAddress)
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                        if not stor36[address(arg2)]:
                                                                            mem[(2 * ceil32(return_data.size)) + 452] = address(arg2)
                                                                            mem[(2 * ceil32(return_data.size)) + 484] = balanceOf[address(arg2)]
                                                                            require ext_code.size(distributorAddress)
                                                                            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[(2 * ceil32(return_data.size)) + 452 len ceil32(return_data.size) + 64]
                                                                        require ext_code.size(distributorAddress)
                                                                        call distributorAddress.process(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args sub_60e71962
                                                                        emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
                                    else:
                                        mem[ceil32(return_data.size) + 356] = 0
                                        mem[ceil32(return_data.size) + 388] = 0
                                        mem[ceil32(return_data.size) + 420] = autoLiquidityReceiverAddress
                                        mem[ceil32(return_data.size) + 452] = block.timestamp
                                        require ext_code.size(routerAddress)
                                        call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                           value 0 / totalFee - stor10 / 2 wei
                                             gas gas_remaining wei
                                            args this.address, Mask(255, 1, swapThreshold * liquidityFee / totalFee), 0, 0, autoLiquidityReceiverAddress, block.timestamp
                                        mem[ceil32(return_data.size) + 288 len 96] = ext_call.return_data[0 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 96
                                        mem[(2 * ceil32(return_data.size)) + 288] = 0 / totalFee - stor10 / 2
                                        emit AutoLiquify(Mask(255, 1, 0 / totalFee - stor10), swapThreshold * liquidityFee / totalFee / 2);
                                        stor37 = 0
                                        if pairAddress != msg.sender:
                                            if not stor37:
                                                if autoBuybackEnabled:
                                                    if sub_b91854f4 > !sub_5a53c1fb:
                                                        revert with 0, 17
                                                    if sub_b91854f4 + sub_5a53c1fb <= block.number:
                                                        if eth.balance(this.address) >= sub_4896a632:
                                                            stor37 = 1
                                                            require ext_code.size(routerAddress)
                                                            staticcall routerAddress.WETH() with:
                                                                    gas gas_remaining wei
                                                            mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[64] = (4 * ceil32(return_data.size)) + 384
                                                            require return_data.size >= 32
                                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                            if 0 >= 0 / totalFee - stor10 / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[12 len 20]
                                                            if 1 >= 0 / totalFee - stor10 / 2:
                                                                revert with 0, 50
                                                            mem[(2 * ceil32(return_data.size)) + 352] = this.address
                                                            mem[(4 * ceil32(return_data.size)) + 384] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                                            mem[(4 * ceil32(return_data.size)) + 388] = 0
                                                            mem[(4 * ceil32(return_data.size)) + 420] = 128
                                                            mem[(4 * ceil32(return_data.size)) + 516] = 0 / totalFee - stor10 / 2
                                                            idx = 0
                                                            s = (2 * ceil32(return_data.size)) + 320
                                                            t = (4 * ceil32(return_data.size)) + 548
                                                            while idx < mem[(2 * ceil32(return_data.size)) + 288]:
                                                                mem[t] = mem[s + 12 len 20]
                                                                idx = idx + 1
                                                                s = s + 32
                                                                t = t + 32
                                                                continue 
                                                            mem[(4 * ceil32(return_data.size)) + 452] = 57005
                                                            mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                                            require ext_code.size(routerAddress)
                                                            call routerAddress.mem[mem[64] len 4] with:
                                                               value sub_4896a632 wei
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 288]) + -mem[64] + 544]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            stor37 = 0
                                                            sub_b91854f4 = block.number
                                                            if sub_6e78eb49 > !sub_4896a632:
                                                                revert with 0, 17
                                                            sub_6e78eb49 += sub_4896a632
                                                            if sub_591cf08d < sub_6e78eb49 + sub_4896a632:
                                                                autoBuybackEnabled = 0
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 'Insufficient Balance', 0
                                        balanceOf[address(arg1)] -= arg3
                                        if stor35[address(arg1)]:
                                            if balanceOf[address(arg2)] > !arg3:
                                                revert with 0, 17
                                            balanceOf[address(arg2)] += arg3
                                            require ext_code.size(distributorAddress)
                                            if not stor36[address(arg1)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg1), balanceOf[address(arg1)]
                                            if not stor36[address(arg2)]:
                                                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), balanceOf[address(arg2)]
                                            call distributorAddress.process(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args sub_60e71962
                                            emit Transfer(arg3, address(arg1), address(arg2));
                                        else:
                                            if pairAddress != address(arg2):
                                                if arg3 and totalFee > -1 / arg3:
                                                    revert with 0, 17
                                                if not feeDenominator:
                                                    revert with 0, 18
                                                if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                    revert with 0, 17
                                                balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                if arg3 < arg3 * totalFee / feeDenominator:
                                                    revert with 0, 17
                                                if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                    revert with 0, 17
                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                require ext_code.size(distributorAddress)
                                                if not stor36[address(arg1)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg1), balanceOf[address(arg1)]
                                                if not stor36[address(arg2)]:
                                                    call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), balanceOf[address(arg2)]
                                                call distributorAddress.process(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args sub_60e71962
                                                emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                            else:
                                                if sub_19be947b > !sub_1023d5d4:
                                                    revert with 0, 17
                                                if sub_19be947b + sub_1023d5d4 <= block.timestamp:
                                                    if arg3 and totalFee > -1 / arg3:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !(arg3 * totalFee / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += arg3 * totalFee / feeDenominator
                                                    emit Transfer((arg3 * totalFee / feeDenominator), address(arg1), this.address);
                                                    if arg3 < arg3 * totalFee / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg2)] > !(arg3 - (arg3 * totalFee / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * totalFee / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    if not stor36[address(arg2)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), balanceOf[address(arg2)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg3 - (arg3 * totalFee / feeDenominator)), address(arg1), address(arg2));
                                                else:
                                                    if sub_19be947b > !sub_1023d5d4:
                                                        revert with 0, 17
                                                    if sub_19be947b + sub_1023d5d4 < block.timestamp:
                                                        revert with 0, 17
                                                    if totalFee and sub_921250d1 > -1 / totalFee:
                                                        revert with 0, 17
                                                    if not sub_ecbf666f:
                                                        revert with 0, 18
                                                    if totalFee * sub_921250d1 / sub_ecbf666f < totalFee:
                                                        revert with 0, 17
                                                    if (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee and sub_19be947b + sub_1023d5d4 - block.timestamp > -1 / (totalFee * sub_921250d1 / sub_ecbf666f) - totalFee:
                                                        revert with 0, 17
                                                    if not sub_1023d5d4:
                                                        revert with 0, 18
                                                    if totalFee > !((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4):
                                                        revert with 0, 17
                                                    if arg3 and totalFee + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4) > -1 / arg3:
                                                        revert with 0, 17
                                                    if not feeDenominator:
                                                        revert with 0, 18
                                                    if balanceOf[this.address] > !((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator):
                                                        revert with 0, 17
                                                    balanceOf[this.address] += (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator
                                                    emit Transfer(((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator), address(arg1), this.address);
                                                    if arg3 < (totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator:
                                                        revert with 0, 17
                                                    if balanceOf[address(arg2)] > !(arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)):
                                                        revert with 0, 17
                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)
                                                    require ext_code.size(distributorAddress)
                                                    if not stor36[address(arg1)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg1), balanceOf[address(arg1)]
                                                    if not stor36[address(arg2)]:
                                                        call distributorAddress.setShare(address arg1, uint256 arg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), balanceOf[address(arg2)]
                                                    call distributorAddress.process(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args sub_60e71962
                                                    emit Transfer((arg3 - ((totalFee * arg3) + ((sub_19be947b * totalFee * sub_921250d1 / sub_ecbf666f) + (sub_1023d5d4 * totalFee * sub_921250d1 / sub_ecbf666f) - (block.timestamp * totalFee * sub_921250d1 / sub_ecbf666f) - (sub_19be947b * totalFee) - (sub_1023d5d4 * totalFee) + (block.timestamp * totalFee) / sub_1023d5d4 * arg3) / feeDenominator)), address(arg1), address(arg2));
    return 1
}



}
