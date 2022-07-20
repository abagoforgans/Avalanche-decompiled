contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const sub_92f6576e(?) = 35


array of struct stor0;
array of struct stor1;
uint8 decimals;
uint8 initialDistributionFinished; offset 168
uint8 swapEnabled; offset 176
uint8 autoRebase; offset 184
uint8 feesOnNormalTransfers; offset 192
uint8 sub_7f903c1f; offset 200
uint64 stor2; offset 200
uint64 stor2; offset 192
uint128 stor2; offset 184
uint128 stor2; offset 176
uint128 stor2; offset 168
address owner; offset 8
uint256 sub_0af08314;
uint256 sub_d7832b11;
uint256 maxSellTransactionAmount;
uint256 sub_89375abf;
uint256 nextRebase;
mapping of uint8 stor8;
array of address sub_e1d5584c;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint256 initialBalanceOf;
uint256 stor13;
address stor14;
address stor15;
address liquidityReceiverAddress;
address sub_08b1fd8fAddress;
address sub_7d4b5017Address;
address usdcTokenAddress;
address routerAddress;
address pairAddress;
uint256 liquidityFee;
uint256 treasuryFee;
uint256 sub_9763eec4;
uint256 sub_8102c570;
uint256 sub_7ac82927;
uint256 sub_e11f49e0;
uint256 sub_6c0cd64e;
uint256 totalBuyFee;
uint256 totalSellFee;
uint256 feeDenominator;
uint256 stor32;
uint256 stor33;
uint8 stor34;
uint256 totalSupply;
uint256 stor36;
uint256 stor37;
mapping of uint256 stor38;
mapping of uint256 allowance;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function sub_08b1fd8f(?) {
    return sub_08b1fd8fAddress
}

function sub_0af08314(?) {
    return sub_0af08314
}

function usdcToken() {
    return usdcTokenAddress
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function liquidityReceiver() {
    return liquidityReceiverAddress
}

function decimals() {
    return decimals
}

function totalBuyFee() {
    return totalBuyFee
}

function feesOnNormalTransfers() {
    return bool(feesOnNormalTransfers)
}

function sub_6c0cd64e(?) {
    return sub_6c0cd64e
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_7ac82927(?) {
    return sub_7ac82927
}

function sub_7d4b5017(?) {
    return sub_7d4b5017Address
}

function sub_7f903c1f(?) {
    return bool(sub_7f903c1f)
}

function sub_8102c570(?) {
    return sub_8102c570
}

function sub_89375abf(?) {
    return sub_89375abf
}

function getOwner() {
    return owner
}

function initialBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return initialBalanceOf[address(arg1)]
}

function autoRebase() {
    return bool(autoRebase)
}

function sub_9763eec4(?) {
    return sub_9763eec4
}

function liquidityFee() {
    return liquidityFee
}

function totalSellFee() {
    return totalSellFee
}

function pair() {
    return pairAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function nextRebase() {
    return nextRebase
}

function treasuryFee() {
    return treasuryFee
}

function initialDistributionFinished() {
    return bool(initialDistributionFinished)
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function sub_d7832b11(?) {
    return sub_d7832b11
}

function sub_d8616ccf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e11f49e0(?) {
    return sub_e11f49e0
}

function sub_e1d5584c(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e1d5584c.length
    return sub_e1d5584c[arg1]
}

function router() {
    return routerAddress
}

function checkSwapThreshold() {
    if not stor36:
        revert with 0, 18
    return (stor37 / stor36)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[address(arg1)]:
        return stor38[address(arg1)]
    if not stor36:
        revert with 0, 18
    return (stor38[address(arg1)] / stor36)
}

function setNextRebase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    nextRebase = arg1
}

function setWhaleFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    sub_6c0cd64e = arg1
}

function sub_01b16827(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    sub_0af08314 = arg1
    sub_d7832b11 = arg2
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    owner = arg1
}

function getCirculatingSupply() {
    if stor13 < stor38[stor14]:
        revert with 0, 17
    if stor13 - stor38[stor14] < stor38[stor15]:
        revert with 0, 17
    if not stor36:
        revert with 0, 18
    return (stor13 - stor38[stor14] - stor38[stor15] / stor36)
}

function setMaxSellTransaction(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    maxSellTransactionAmount = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    routerAddress = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    stor32 = arg1
    stor33 = arg2
}

function sub_4cd9ddf2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 > 1800:
        revert with 0, 'Too high'
    sub_89375abf = arg1
}

function sub_dbfa3267(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    stor11[address(arg1)] = uint8(bool(arg2))
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setAutoRebase(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if not bool(autoRebase) - arg1:
        revert with 0, 'Not changed'
    Mask(72, 0, stor2.field_184) = Mask(72, 0, arg1)
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if not bool(feesOnNormalTransfers) - arg1:
        revert with 0, 'Not changed'
    uint64(stor2.field_192) = uint64(arg1)
}

function sub_18c5517c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if not bool(sub_7f903c1f) - bool(arg1):
        revert with 0, 'Not changed'
    stor2.field_200 % 72057594037927936 = bool(arg1) % 72057594037927936
}

function sub_1276089b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if not bool(initialDistributionFinished) - bool(arg1):
        revert with 0, 'Not changed'
    Mask(88, 0, stor2.field_168) = Mask(88, 0, bool(arg1))
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if not bool(stor8[address(arg1)]) - arg2:
        revert with 0, 'Not changed'
    stor8[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    liquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_7d4b5017Address = arg3
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function clearStuckBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manualSync() {
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = 9
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e1d5584c[idx])
        call sub_e1d5584c[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    Mask(80, 0, stor2.field_176) = Mask(80, 0, arg1)
    if not arg3:
        revert with 0, 18
    if stor13 / arg3 and arg2 > -1 / stor13 / arg3:
        revert with 0, 17
    stor37 = stor13 / arg3 * arg2
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 38
        if stor10[stor9[idx]]:
            if 0 > !(stor38[stor9[idx]] / 10^9):
                revert with 0, 17
        else:
            if not stor36:
                revert with 0, 18
            if 0 > !(stor38[stor9[idx]] / stor36 / 10^9):
                revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor13 < stor38[stor14]:
        revert with 0, 17
    if stor13 - stor38[stor14] < stor38[stor15]:
        revert with 0, 17
    if not stor36:
        revert with 0, 18
    if arg1 and 0 > -1 / arg1:
        revert with 0, 17
    if not stor13 - stor38[stor14] - stor38[stor15] / stor36 / 10^9:
        revert with 0, 18
    return (0 / stor13 - stor38[stor14] - stor38[stor15] / stor36 / 10^9)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 38
        if stor10[stor9[idx]]:
            if 0 > !(stor38[stor9[idx]] / 10^9):
                revert with 0, 17
        else:
            if not stor36:
                revert with 0, 18
            if 0 > !(stor38[stor9[idx]] / stor36 / 10^9):
                revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor13 < stor38[stor14]:
        revert with 0, 17
    if stor13 - stor38[stor14] < stor38[stor15]:
        revert with 0, 17
    if not stor36:
        revert with 0, 18
    if arg2 and 0 > -1 / arg2:
        revert with 0, 17
    if not stor13 - stor38[stor14] - stor38[stor15] / stor36 / 10^9:
        revert with 0, 18
    return (0 / stor13 - stor38[stor14] - stor38[stor15] / stor36 / 10^9 > arg1)
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 > 35:
        revert with 0, 'fee ratio is too high'
    if arg2 > 35:
        revert with 0, 'fee ratio is too high'
    if arg3 > 35:
        revert with 0, 'fee ratio is too high'
    if arg4 > 35:
        revert with 0, 'fee ratio is too high'
    if arg5 > 35:
        revert with 0, 'fee ratio is too high'
    if arg6 > 35:
        revert with 0, 'fee ratio is too high'
    liquidityFee = arg1
    sub_9763eec4 = arg2
    treasuryFee = arg3
    sub_8102c570 = arg4
    sub_7ac82927 = arg5
    sub_e11f49e0 = arg6
    if arg1 > !arg3:
        revert with 0, 17
    if arg1 + arg3 > !arg2:
        revert with 0, 17
    totalBuyFee = arg1 + arg3 + arg2
    if arg1 + arg3 + arg2 > !sub_8102c570:
        revert with 0, 17
    if arg1 + arg3 + arg2 + sub_8102c570 > !sub_7ac82927:
        revert with 0, 17
    if arg1 + arg3 + arg2 + sub_8102c570 + sub_7ac82927 > !sub_e11f49e0:
        revert with 0, 17
    totalSellFee = arg1 + arg3 + arg2 + sub_8102c570 + sub_7ac82927 + sub_e11f49e0
    feeDenominator = arg7
    require totalBuyFee < arg7 / 4
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if not bool(stor10[address(arg1)]) - arg2:
        revert with 0, 'Value already set'
    stor10[address(arg1)] = uint8(arg2)
    if not arg2:
        if 1 >= sub_e1d5584c.length:
            revert with 0, 'Required 1 pair'
        idx = 0
        while idx < sub_e1d5584c.length:
            mem[0] = 9
            if sub_e1d5584c[idx] - arg1:
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_e1d5584c.length < 1:
                revert with 0, 17
            if sub_e1d5584c.length - 1 >= sub_e1d5584c.length:
                revert with 0, 50
            if idx >= sub_e1d5584c.length:
                revert with 0, 50
            sub_e1d5584c[idx] = sub_e1d5584c[sub_e1d5584c.length]
            if not sub_e1d5584c.length:
                revert with 0, 49
            sub_e1d5584c[sub_e1d5584c.length] = 0
            sub_e1d5584c.length--
            emit SetAutomatedMarketMakerPair(arg1, arg2);
    else:
        sub_e1d5584c.length++
        sub_e1d5584c[sub_e1d5584c.length] = arg1
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function sub_61a9d1b1(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if stor34:
        revert with 0, 'Try again'
    if nextRebase > block.timestamp:
        revert with 0, 'Not in time'
    if stor13 < stor38[stor14]:
        revert with 0, 17
    if stor13 - stor38[stor14] < stor38[stor15]:
        revert with 0, 17
    if not stor36:
        revert with 0, 18
    if stor13 - stor38[stor14] - stor38[stor15] / stor36 and sub_0af08314 > -1 / stor13 - stor38[stor14] - stor38[stor15] / stor36:
        revert with 0, 17
    if not sub_d7832b11:
        revert with 0, 18
    if -stor13 - stor38[stor14] - stor38[stor15] / stor36 * sub_0af08314 / sub_d7832b11:
        if stor13 - stor38[stor14] - stor38[stor15] / stor36 * sub_0af08314 / sub_d7832b11 >= 0:
            if totalSupply > !(stor13 - stor38[stor14] - stor38[stor15] / stor36 * sub_0af08314 / sub_d7832b11):
                revert with 0, 17
        else:
            if not (stor13 - stor38[stor14] - stor38[stor15] / stor36 * sub_0af08314 / sub_d7832b11) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if totalSupply < -stor13 - stor38[stor14] - stor38[stor15] / stor36 * sub_0af08314 / sub_d7832b11:
                revert with 0, 17
        totalSupply += stor13 - stor38[stor14] - stor38[stor15] / stor36 * sub_0af08314 / sub_d7832b11
        if not totalSupply:
            revert with 0, 18
        stor36 = stor13 / totalSupply
        if block.timestamp > !sub_89375abf:
            revert with 0, 17
        nextRebase = block.timestamp + sub_89375abf
    emit LogRebase(totalSupply, block.timestamp);
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = 9
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_e1d5584c[idx])
        call sub_e1d5584c[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function name() {
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor0.length):
            if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
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
            if not bool(stor0.length) - (stor0.length.field_1 < 32):
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
    if not bool(stor0.length) - (stor0.length.field_1 < 32):
        revert with 0, 34
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length) * 0.5 < 32):
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
        if not bool(stor0.length) - (stor0.length.field_1 < 32):
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
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
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
            if not bool(stor1.length) - (stor1.length.field_1 < 32):
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
    if not bool(stor1.length) - (stor1.length.field_1 < 32):
        revert with 0, 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length) * 0.5 < 32):
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
        if not bool(stor1.length) - (stor1.length.field_1 < 32):
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
