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
uint8 stor2; offset 168
uint8 stor2; offset 176
uint8 stor2; offset 184
uint8 stor2; offset 192
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
address sub_7e93507aAddress;
address routerAddress;
address pairAddress;
array of uint256 sub_cea74edf;
array of uint256 sub_a046bc78;
array of uint256 sub_368128d1;
array of uint256 sub_8158feec;
array of uint256 sub_6508654f;
array of uint256 burnFee;
uint256 feeDenominator;
uint256 stor47;
uint256 stor48;
uint8 stor49;
uint256 totalSupply;
uint256 stor51;
uint256 stor52;
mapping of uint256 stor53;
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

function sub_368128d1(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_368128d1[arg1]
}

function burnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return burnFee[arg1]
}

function feesOnNormalTransfers() {
    return bool(uint8(stor2.field_192))
}

function sub_6508654f(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_6508654f[arg1]
}

function swapEnabled() {
    return bool(uint8(stor2.field_176))
}

function sub_7d4b5017(?) {
    return sub_7d4b5017Address
}

function sub_7e93507a(?) {
    return sub_7e93507aAddress
}

function sub_8158feec(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_8158feec[arg1]
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
    return bool(uint8(stor2.field_184))
}

function sub_a046bc78(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_a046bc78[arg1]
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

function sub_cea74edf(?) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return sub_cea74edf[arg1]
}

function initialDistributionFinished() {
    return bool(uint8(stor2.field_168))
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

function sub_e1d5584c(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e1d5584c.length
    return sub_e1d5584c[arg1]
}

function router() {
    return routerAddress
}

function checkSwapThreshold() {
    if not stor51:
        revert with 0, 18
    return (stor52 / stor51)
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
        return stor53[address(arg1)]
    if not stor51:
        revert with 0, 18
    return (stor53[address(arg1)] / stor51)
}

function setNextRebase(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    nextRebase = arg1
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
    if stor13 < stor53[stor14]:
        revert with 0, 17
    if stor13 - stor53[stor14] < stor53[stor15]:
        revert with 0, 17
    if not stor51:
        revert with 0, 18
    return (stor13 - stor53[stor14] - stor53[stor15] / stor51)
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
    stor47 = arg1
    stor48 = arg2
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
    if arg1 == bool(uint8(stor2.field_184)):
        revert with 0, 'Not changed'
    Mask(72, 0, stor2.field_184) = Mask(72, 0, arg1)
}

function setFeesOnNormalTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg1 == bool(uint8(stor2.field_192)):
        revert with 0, 'Not changed'
    uint64(stor2.field_192) = uint64(arg1)
}

function sub_1276089b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if bool(arg1) == bool(uint8(stor2.field_168)):
        revert with 0, 'Not changed'
    Mask(88, 0, stor2.field_168) = Mask(88, 0, bool(arg1))
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg2 == bool(stor8[address(arg1)]):
        revert with 0, 'Not changed'
    stor8[address(arg1)] = uint8(arg2)
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
        if idx == -1:
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
    stor52 = stor13 / arg3 * arg2
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    liquidityReceiverAddress = arg1
    sub_08b1fd8fAddress = arg2
    sub_7d4b5017Address = arg3
    sub_7e93507aAddress = arg4
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    require ext_code.size(arg1)
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
        mem[32] = 53
        if stor10[stor9[idx]]:
            if 0 > !(stor53[stor9[idx]] / 10^9):
                revert with 0, 17
        else:
            if not stor51:
                revert with 0, 18
            if 0 > !(stor53[stor9[idx]] / stor51 / 10^9):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor13 < stor53[stor14]:
        revert with 0, 17
    if stor13 - stor53[stor14] < stor53[stor15]:
        revert with 0, 17
    if not stor51:
        revert with 0, 18
    if arg1 and 0 > -1 / arg1:
        revert with 0, 17
    if not stor13 - stor53[stor14] - stor53[stor15] / stor51 / 10^9:
        revert with 0, 18
    return (0 / stor13 - stor53[stor14] - stor53[stor15] / stor51 / 10^9)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    while idx < sub_e1d5584c.length:
        mem[0] = sub_e1d5584c[idx]
        mem[32] = 53
        if stor10[stor9[idx]]:
            if 0 > !(stor53[stor9[idx]] / 10^9):
                revert with 0, 17
        else:
            if not stor51:
                revert with 0, 18
            if 0 > !(stor53[stor9[idx]] / stor51 / 10^9):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if stor13 < stor53[stor14]:
        revert with 0, 17
    if stor13 - stor53[stor14] < stor53[stor15]:
        revert with 0, 17
    if not stor51:
        revert with 0, 18
    if arg2 and 0 > -1 / arg2:
        revert with 0, 17
    if not stor13 - stor53[stor14] - stor53[stor15] / stor51 / 10^9:
        revert with 0, 18
    return (0 / stor13 - stor53[stor14] - stor53[stor15] / stor51 / 10^9 > arg1)
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg2 == bool(stor10[address(arg1)]):
        revert with 0, 'Value already set'
    stor10[address(arg1)] = uint8(arg2)
    if not arg2:
        if 1 >= sub_e1d5584c.length:
            revert with 0, 'Required 1 pair'
        idx = 0
        while idx < sub_e1d5584c.length:
            mem[0] = 9
            if sub_e1d5584c[idx] != arg1:
                if idx == -1:
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

function sub_12765792(?) {
    require calldata.size - 4 >= 224
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if arg2 > 35:
        revert with 0, 'buyFee is not allowed'
    if arg3 > !arg4:
        revert with 0, 17
    if arg3 + arg4 > !arg5:
        revert with 0, 17
    if arg3 + arg4 + arg5 > !arg6:
        revert with 0, 17
    if arg3 + arg4 + arg5 + arg6 > !arg7:
        revert with 0, 17
    if arg3 + arg4 + arg5 + arg6 + arg7 != 100:
        revert with 0, 'subFee is not allowed'
    if arg2 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    sub_cea74edf.length = 100 * arg2
    if arg2 and arg3 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_a046bc78[uint8(arg1)] = arg2 * arg3
    if arg2 and arg5 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_368128d1[uint8(arg1)] = arg2 * arg5
    if arg2 and arg4 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_8158feec[uint8(arg1)] = arg2 * arg4
    if arg2 and arg6 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    sub_6508654f[uint8(arg1)] = arg2 * arg6
    if arg2 and arg7 > -1 / arg2:
        revert with 0, 17
    if uint8(arg1) >= 4:
        revert with 0, 50
    burnFee[uint8(arg1)] = arg2 * arg7
}

function sub_61a9d1b1(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AstroToken: Caller is not owner the contract.'
    if stor49:
        revert with 0, 'Try again'
    if nextRebase > block.timestamp:
        revert with 0, 'Not in time'
    if stor13 < stor53[stor14]:
        revert with 0, 17
    if stor13 - stor53[stor14] < stor53[stor15]:
        revert with 0, 17
    if not stor51:
        revert with 0, 18
    if stor13 - stor53[stor14] - stor53[stor15] / stor51 and sub_0af08314 > -1 / stor13 - stor53[stor14] - stor53[stor15] / stor51:
        revert with 0, 17
    if not sub_d7832b11:
        revert with 0, 18
    if stor13 - stor53[stor14] - stor53[stor15] / stor51 * sub_0af08314 / sub_d7832b11:
        if stor13 - stor53[stor14] - stor53[stor15] / stor51 * sub_0af08314 / sub_d7832b11 >= 0:
            if totalSupply > !(stor13 - stor53[stor14] - stor53[stor15] / stor51 * sub_0af08314 / sub_d7832b11):
                revert with 0, 17
        else:
            if stor13 - stor53[stor14] - stor53[stor15] / stor51 * sub_0af08314 / sub_d7832b11 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if totalSupply < -stor13 - stor53[stor14] - stor53[stor15] / stor51 * sub_0af08314 / sub_d7832b11:
                revert with 0, 17
        totalSupply += stor13 - stor53[stor14] - stor53[stor15] / stor51 * sub_0af08314 / sub_d7832b11
        if not totalSupply:
            revert with 0, 18
        stor51 = stor13 / totalSupply
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
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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



}
