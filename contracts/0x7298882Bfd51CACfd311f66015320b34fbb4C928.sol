contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const getTime = block.timestamp


address owner;
address stor1;
address buybackOwner;
uint256 unlockTime;
address marketingAddress;
address deadAddress;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of address stor11;
uint256 totalSupply;
uint256 stor13;
uint256 totalFees;
array of struct stor15;
array of struct stor16;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 marketingDivisor;
uint256 _maxTxAmount;
uint256 minimumTokensBeforeSwapAmount;
uint256 buyBackUpperLimitAmount;
uint256 stor26;
uint256 stor27;
uint8 stor28;
uint8 swapAndLiquifyEnabled; offset 8
uint8 buyBackEnabled; offset 16
address stor28;
address uniswapV2RouterAddress; offset 24
uint256 stor28; offset 16
uint256 stor28; offset 8
address uniswapV2PairAddress;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function deadAddress() {
    return deadAddress
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[address(arg1)])
}

function owner() {
    return owner
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwapAmount
}

function marketingAddress() {
    return marketingAddress
}

function buyBackUpperLimitAmount() {
    return buyBackUpperLimitAmount
}

function marketingDivisor() {
    return marketingDivisor
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function buybackOwner() {
    return buybackOwner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function setBurnAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    deadAddress = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = 1
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingAddress = arg1
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumTokensBeforeSwapAmount = arg1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'Tax rate should be less than 10%'
    _taxFee = arg1
}

function afterPreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor28.field_8) = 1
    emit SwapAndLiquifyEnabledUpdated(1);
    _taxFee = 2
    _liquidityFee = 9
    _maxTxAmount = 3000 * 10^18
}

function prepareForPreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor28.field_8) = 0
    emit SwapAndLiquifyEnabledUpdated(0);
    _taxFee = 0
    _liquidityFee = 0
    _maxTxAmount = 1000000 * 10^18
}

function setBuybackTriggerTokenLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    stor26 = arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liquidity rate should be less than 10%'
    _liquidityFee = arg1
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    Mask(240, 0, stor28.field_16) = Mask(240, 0, arg1)
    emit BuyBackEnabledUpdated(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function setMarketingDivisor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > _liquidityFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Marketing divisor should be less than liquidity fee'
    marketingDivisor = arg1
}

function transferBuybackOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: buybackOwner, arg1
    buybackOwner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0xe045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor11.length < 1:
            revert with 0, 17
        if stor11.length - 1 >= stor11.length:
            revert with 0, 50
        if idx >= stor11.length:
            revert with 0, 50
        stor11[idx] = stor11[stor11.length]
        stor7[address(arg1)] = 0
        stor10[address(arg1)] = 0
        if not stor11.length:
            revert with 0, 49
        stor11[stor11.length] = 0
        stor11.length--
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = arg1
}

function setBuybackMinAvailability(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    if not arg2:
        if not arg1:
            stor27 = 0
        else:
            if arg1 and 10^18 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            stor27 = 10^18 * arg1
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if not 10^arg2:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1 / 10^arg2:
                stor27 = 0
            else:
                if arg1 / 10^arg2 and 10^18 > -1 / arg1 / 10^arg2:
                    revert with 0, 17
                if not arg1 / 10^arg2:
                    revert with 0, 18
                if 10^18 * arg1 / 10^arg2 / arg1 / 10^arg2 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                stor27 = 10^18 * arg1 / 10^arg2
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1 / s * t:
                stor27 = 0
            else:
                if arg1 / s * t and 10^18 > -1 / arg1 / s * t:
                    revert with 0, 17
                if not arg1 / s * t:
                    revert with 0, 18
                if 10^18 * arg1 / s * t / arg1 / s * t != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                stor27 = 10^18 * arg1 / s * t
}

function setBuybackUpperLimit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    if not arg2:
        if not arg1:
            buyBackUpperLimitAmount = 0
        else:
            if arg1 and 10^18 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            buyBackUpperLimitAmount = 10^18 * arg1
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if not 10^arg2:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1 / 10^arg2:
                buyBackUpperLimitAmount = 0
            else:
                if arg1 / 10^arg2 and 10^18 > -1 / arg1 / 10^arg2:
                    revert with 0, 17
                if not arg1 / 10^arg2:
                    revert with 0, 18
                if 10^18 * arg1 / 10^arg2 / arg1 / 10^arg2 != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                buyBackUpperLimitAmount = 10^18 * arg1 / 10^arg2
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1 / s * t:
                buyBackUpperLimitAmount = 0
            else:
                if arg1 / s * t and 10^18 > -1 / arg1 / s * t:
                    revert with 0, 17
                if not arg1 / s * t:
                    revert with 0, 18
                if 10^18 * arg1 / s * t / arg1 / s * t != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                buyBackUpperLimitAmount = 10^18 * arg1 / s * t
}

function name() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function symbol() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        else:
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 0, 34
            if stor16.length.field_1:
                if 31 < stor16.length.field_1:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * stor16.length.field_8
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[ceil32(uint255(stor16.length) * 0.5) + (uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 0, 34
        if stor16.length.field_1:
            if 31 < stor16.length.field_1:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)])
            mem[128] = 256 * stor16.length.field_8
    mem[ceil32(stor16.length.field_1) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) > stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1)], mem[(2 * ceil32(stor16.length.field_1)) + 192 len 2 * ceil32(stor16.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor13
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 6
        if stor6[stor11[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _96 + 68] = mem[idx + _92 + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (arg1 / stor13 / totalSupply)
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 7
        if stor7[stor11[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _103 + 68] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                mem[_103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _103 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (arg1 / stor13 / totalSupply)
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 6
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor11[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _97 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if t < stor6[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 7
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor11[idx]] <= s:
            if s < stor7[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor11[idx]]
            t = t - stor6[stor11[idx]]
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _132 + 68] = mem[idx + _127 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 98] = 0
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor13 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor13 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor13 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[address(arg1)]:
        return stor7[address(arg1)]
    mem[0] = arg1
    mem[32] = 6
    if stor6[address(arg1)] > stor13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor13
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 6
        if stor6[stor11[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _101 + 68] = mem[idx + _97 + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 26
            mem[_122 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (stor6[address(arg1)] / stor13 / totalSupply)
            _131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _131 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_131 + 94] = 0
            revert with memory
              from mem[64]
               len _131 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 7
        if stor7[stor11[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor13 / totalSupply:
                return (stor6[address(arg1)] / stor13 / totalSupply)
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _138 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 94] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 6
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor11[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _102 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        if t < stor6[stor11[idx]]:
            revert with 0, 17
        if idx >= stor11.length:
            revert with 0, 50
        mem[0] = stor11[idx]
        mem[32] = 7
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor11[idx]] <= s:
            if s < stor7[stor11[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor11[idx]]
            t = t - stor6[stor11[idx]]
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _137 + 68] = mem[idx + _132 + 32]
            idx = idx + 32
            continue 
        mem[_137 + 98] = 0
        revert with memory
          from mem[64]
           len _137 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor13 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor6[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor13 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor6[address(arg1)] / stor13 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor10[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor6[address(arg1)]:
        mem[0] = arg1
        mem[32] = 6
        if stor6[address(arg1)] > stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor13
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 6
            if stor6[stor11[idx]] > t:
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 26
                mem[_100 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _104 + 68] = mem[idx + _100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_104 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _104 + -mem[64] + 100
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor13 / totalSupply:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor13 / totalSupply
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _134 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 94] = 0
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 7
            if stor7[stor11[idx]] > s:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _111 + 68] = mem[idx + _106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor13 / totalSupply:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor13 / totalSupply
                    stor10[address(arg1)] = 1
                    stor11.length++
                    stor175B[stor11.length] = arg1
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 6
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor11[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _105 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 98] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            if t < stor6[stor11[idx]]:
                revert with 0, 17
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 7
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor7[stor11[idx]] <= s:
                if s < stor7[stor11[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor7[stor11[idx]]
                t = t - stor6[stor11[idx]]
                continue 
            _140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _140 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_140 + 98] = 0
            revert with memory
              from mem[64]
               len _140 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor13 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor13 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / stor13 / totalSupply
    stor10[address(arg1)] = 1
    stor11.length++
    stor175B[stor11.length] = arg1
}

function manualBuyback(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    if not arg2:
        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        uint8(stor28.field_0) = 1
        if 10^18 * arg1:
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[192] = ext_call.return_data[12 len 20]
            mem[224] = this.address
            if block.timestamp > -301:
                revert with 0, 17
            if block.timestamp + 300 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 260] = 0
            mem[ceil32(return_data.size) + 388] = 2
            idx = 0
            s = 192
            t = ceil32(return_data.size) + 420
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 324] = deadAddress
            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value 10^18 * arg1 wei
                 gas gas_remaining wei
                args 0, 128, deadAddress, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 256] = 10^18 * arg1
            idx = 0
            s = 192
            t = ceil32(return_data.size) + 352
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapETHForTokens(10^18 * arg1, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if not 10^arg2:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 / 10^arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            uint8(stor28.field_0) = 1
            if 10^18 * arg1 / 10^arg2:
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[192] = ext_call.return_data[12 len 20]
                mem[224] = this.address
                if block.timestamp > -301:
                    revert with 0, 17
                if block.timestamp + 300 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 260] = 0
                mem[ceil32(return_data.size) + 388] = 2
                idx = 0
                s = 192
                t = ceil32(return_data.size) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = deadAddress
                mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^18 * arg1 / 10^arg2 wei
                     gas gas_remaining wei
                    args 0, 128, deadAddress, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 256] = 10^18 * arg1 / 10^arg2
                idx = 0
                s = 192
                t = ceil32(return_data.size) + 352
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapETHForTokens(10^18 * arg1 / 10^arg2, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 / s * t > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            uint8(stor28.field_0) = 1
            if 10^18 * arg1 / s * t:
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[256] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[192] = ext_call.return_data[12 len 20]
                mem[224] = this.address
                if block.timestamp > -301:
                    revert with 0, 17
                if block.timestamp + 300 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 260] = 0
                mem[ceil32(return_data.size) + 388] = 2
                idx = 0
                u = 192
                v = ceil32(return_data.size) + 420
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[ceil32(return_data.size) + 324] = deadAddress
                mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value 10^18 * arg1 / s * t wei
                     gas gas_remaining wei
                    args 0, 128, deadAddress, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 256] = 10^18 * arg1 / s * t
                idx = 0
                u = 192
                v = ceil32(return_data.size) + 352
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                emit SwapETHForTokens(10^18 * arg1 / s * t, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
    uint8(stor28.field_0) = 0
}

function buyTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    if not arg4:
        if not arg3:
            if not arg2:
                if arg2:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    mem[224] = arg1
                    if block.timestamp > -301:
                        revert with 0, 17
                    if block.timestamp + 300 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 260] = 0
                    mem[ceil32(return_data.size) + 388] = 2
                    idx = 0
                    s = 192
                    t = ceil32(return_data.size) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 256] = 0
                    idx = 0
                    s = 192
                    t = ceil32(return_data.size) + 352
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                          0,
                                          64,
                                          2,
                                          mem[ceil32(return_data.size) + 352 len 64],
                else:
                    mem[164] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = 2
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = arg1
                    if block.timestamp > -301:
                        revert with 0, 17
                    if block.timestamp + 300 < block.timestamp:
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 32
                        mem[(2 * ceil32(return_data.size)) + 292] = 27
                        mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 256
                           len ceil32(return_data.size) + 100
                    mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                    mem[(2 * ceil32(return_data.size)) + 292] = 128
                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (2 * ceil32(return_data.size)) + 420
                    while idx < mem[ceil32(return_data.size) + 160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256] = 0
                    mem[(2 * ceil32(return_data.size)) + 288] = 64
                    _800 = mem[ceil32(return_data.size) + 160]
                    mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (2 * ceil32(return_data.size)) + 352
                    while idx < _800:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                          0,
                                          64,
                                          mem[(2 * ceil32(return_data.size)) + 320 len (32 * _800) + 32],
            else:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 / arg2 != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[192] = ext_call.return_data[12 len 20]
                    mem[224] = arg1
                    if block.timestamp > -301:
                        revert with 0, 17
                    if block.timestamp + 300 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 260] = 0
                    mem[ceil32(return_data.size) + 388] = 2
                    idx = 0
                    s = 192
                    t = ceil32(return_data.size) + 420
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(return_data.size) + 324] = this.address
                    mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 256] = arg2
                    idx = 0
                    s = 192
                    t = ceil32(return_data.size) + 352
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(arg2, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                else:
                    mem[164] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = 2
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = arg1
                    if block.timestamp > -301:
                        revert with 0, 17
                    if block.timestamp + 300 < block.timestamp:
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 32
                        mem[(2 * ceil32(return_data.size)) + 292] = 27
                        mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 256
                           len ceil32(return_data.size) + 100
                    mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                    mem[(2 * ceil32(return_data.size)) + 292] = 128
                    mem[(2 * ceil32(return_data.size)) + 388] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (2 * ceil32(return_data.size)) + 420
                    while idx < mem[ceil32(return_data.size) + 160]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 324] = this.address
                    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value arg2 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256] = arg2
                    mem[(2 * ceil32(return_data.size)) + 288] = 64
                    _798 = mem[ceil32(return_data.size) + 160]
                    mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (2 * ceil32(return_data.size)) + 352
                    while idx < _798:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                          arg2,
                                          64,
                                          mem[(2 * ceil32(return_data.size)) + 320 len (32 * _798) + 32],
        else:
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if not 10^arg3:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg2 / 10^arg3:
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = 0
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[ceil32(return_data.size) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _796 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < _796:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _796) + 32],
                else:
                    if arg2 / 10^arg3 and 1 > -1 / arg2 / 10^arg3:
                        revert with 0, 17
                    if not arg2 / 10^arg3:
                        revert with 0, 18
                    if arg2 / 10^arg3 / arg2 / 10^arg3 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 / 10^arg3 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = arg2 / 10^arg3
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(arg2 / 10^arg3, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 / 10^arg3 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _794 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < _794:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg2 / 10^arg3,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _794) + 32],
            else:
                s = 10
                t = 1
                idx = arg3
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg2 / s * t:
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = 0
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[ceil32(return_data.size) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _1346 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < _1346:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1346) + 32],
                else:
                    if arg2 / s * t and 1 > -1 / arg2 / s * t:
                        revert with 0, 17
                    if not arg2 / s * t:
                        revert with 0, 18
                    if arg2 / s * t / arg2 / s * t != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        u = 192
                        v = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 / s * t wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = arg2 / s * t
                        idx = 0
                        u = 192
                        v = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapETHForTokens(arg2 / s * t, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 / s * t wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 / s * t
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _1344 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (2 * ceil32(return_data.size)) + 352
                        while idx < _1344:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg2 / s * t,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1344) + 32],
    else:
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if not arg3:
                if not arg2:
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = 0
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[ceil32(return_data.size) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _792 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < _792:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _792) + 32],
                else:
                    if arg2 and 10^arg4 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * 10^arg4 / arg2 != 10^arg4:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 * 10^arg4 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = arg2 * 10^arg4
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(arg2 * 10^arg4, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 * 10^arg4 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 * 10^arg4
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _790 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < _790:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg2 * 10^arg4,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _790) + 32],
            else:
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if not 10^arg3:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / 10^arg3:
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = 0
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[ceil32(return_data.size) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _788 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < _788:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _788) + 32],
                    else:
                        if arg2 / 10^arg3 and 10^arg4 > -1 / arg2 / 10^arg3:
                            revert with 0, 17
                        if not arg2 / 10^arg3:
                            revert with 0, 18
                        if arg2 / 10^arg3 * 10^arg4 / arg2 / 10^arg3 != 10^arg4:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / 10^arg3 * 10^arg4 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = arg2 / 10^arg3 * 10^arg4
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(arg2 / 10^arg3 * 10^arg4, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / 10^arg3 * 10^arg4 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3 * 10^arg4
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _786 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < _786:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg2 / 10^arg3 * 10^arg4,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _786) + 32],
                else:
                    s = 10
                    t = 1
                    idx = arg3
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / s * t:
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = 0
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[ceil32(return_data.size) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _1342 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < _1342:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1342) + 32],
                    else:
                        if arg2 / s * t and 10^arg4 > -1 / arg2 / s * t:
                            revert with 0, 17
                        if not arg2 / s * t:
                            revert with 0, 18
                        if arg2 / s * t * 10^arg4 / arg2 / s * t != 10^arg4:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            u = 192
                            v = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / s * t * 10^arg4 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = arg2 / s * t * 10^arg4
                            idx = 0
                            u = 192
                            v = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(arg2 / s * t * 10^arg4, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / s * t * 10^arg4 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / s * t * 10^arg4
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _1340 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (2 * ceil32(return_data.size)) + 352
                            while idx < _1340:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg2 / s * t * 10^arg4,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1340) + 32],
        else:
            s = 10
            t = 1
            idx = arg4
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not arg3:
                if not arg2:
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = 0
                        idx = 0
                        s = 192
                        t = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[ceil32(return_data.size) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _1338 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < _1338:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1338) + 32],
                else:
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * s * t / arg2 != s * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[192] = ext_call.return_data[12 len 20]
                        mem[224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 260] = 0
                        mem[ceil32(return_data.size) + 388] = 2
                        idx = 0
                        u = 192
                        v = ceil32(return_data.size) + 420
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[ceil32(return_data.size) + 324] = this.address
                        mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 * s * t wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 256] = arg2 * s * t
                        idx = 0
                        u = 192
                        v = ceil32(return_data.size) + 352
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapETHForTokens(arg2 * s * t, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = arg1
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 32
                            mem[(2 * ceil32(return_data.size)) + 292] = 27
                            mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 256
                               len ceil32(return_data.size) + 100
                        mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292] = 128
                        mem[(2 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (2 * ceil32(return_data.size)) + 420
                        while idx < mem[ceil32(return_data.size) + 160]:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 324] = this.address
                        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg2 * s * t wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 * s * t
                        mem[(2 * ceil32(return_data.size)) + 288] = 64
                        _1336 = mem[ceil32(return_data.size) + 160]
                        mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (2 * ceil32(return_data.size)) + 352
                        while idx < _1336:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg2 * s * t,
                                              64,
                                              mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1336) + 32],
            else:
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if not 10^arg3:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / 10^arg3:
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = 0
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[ceil32(return_data.size) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _1334 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < _1334:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1334) + 32],
                    else:
                        if arg2 / 10^arg3 and s * t > -1 / arg2 / 10^arg3:
                            revert with 0, 17
                        if not arg2 / 10^arg3:
                            revert with 0, 18
                        if arg2 / 10^arg3 * s * t / arg2 / 10^arg3 != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            u = 192
                            v = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / 10^arg3 * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = arg2 / 10^arg3 * s * t
                            idx = 0
                            u = 192
                            v = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(arg2 / 10^arg3 * s * t, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / 10^arg3 * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3 * s * t
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _1332 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (2 * ceil32(return_data.size)) + 352
                            while idx < _1332:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg2 / 10^arg3 * s * t,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1332) + 32],
                else:
                    u = 10
                    v = 1
                    idx = arg3
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if not u * v:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / u * v:
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = 0
                            idx = 0
                            s = 192
                            t = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[ceil32(return_data.size) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _1512 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < _1512:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1512) + 32],
                    else:
                        if arg2 / u * v and s * t > -1 / arg2 / u * v:
                            revert with 0, 17
                        if not arg2 / u * v:
                            revert with 0, 18
                        if arg2 / u * v * s * t / arg2 / u * v != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            mem[224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            w = 192
                            x = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = this.address
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / u * v * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 256] = arg2 / u * v * s * t
                            idx = 0
                            w = 192
                            x = ceil32(return_data.size) + 352
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            emit SwapETHForTokens(arg2 / u * v * s * t, Array(len=2, data=mem[ceil32(return_data.size) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = arg1
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(2 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 27
                                mem[(2 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 256
                                   len ceil32(return_data.size) + 100
                            mem[(2 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292] = 128
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            w = ceil32(return_data.size) + 192
                            x = (2 * ceil32(return_data.size)) + 420
                            while idx < mem[ceil32(return_data.size) + 160]:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = this.address
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg2 / u * v * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, mem[(2 * ceil32(return_data.size)) + 388 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / u * v * s * t
                            mem[(2 * ceil32(return_data.size)) + 288] = 64
                            _1510 = mem[ceil32(return_data.size) + 160]
                            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            w = ceil32(return_data.size) + 192
                            x = (2 * ceil32(return_data.size)) + 352
                            while idx < _1510:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg2 / u * v * s * t,
                                                  64,
                                                  mem[(2 * ceil32(return_data.size)) + 320 len (32 * _1510) + 32],
}

function sellTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    if not arg4:
        if not arg3:
            if not arg2:
                if arg2:
                    mem[192] = arg1
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[224] = ext_call.return_data[12 len 20]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor28.field_0), 0
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = 0
                    mem[(2 * ceil32(return_data.size)) + 324] = 160
                    idx = 0
                    s = 192
                    t = (2 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 356] = this.address
                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256] = 0
                    idx = 0
                    s = 192
                    t = (2 * ceil32(return_data.size)) + 352
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          0,
                                          64,
                                          2,
                                          mem[(2 * ceil32(return_data.size)) + 352 len 64],
                else:
                    mem[164] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = arg1
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 256] = 0
                    mem[(4 * ceil32(return_data.size)) + 288] = 64
                    _872 = mem[ceil32(return_data.size) + 160]
                    mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 352
                    while idx < _872:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          0,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 320 len (32 * _872) + 32],
            else:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 / arg2 != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2:
                    mem[192] = arg1
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[224] = ext_call.return_data[12 len 20]
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor28.field_0), arg2
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 260] = arg2
                    mem[(2 * ceil32(return_data.size)) + 324] = 160
                    idx = 0
                    s = 192
                    t = (2 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(2 * ceil32(return_data.size)) + 356] = this.address
                    mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 256] = arg2
                    idx = 0
                    s = 192
                    t = (2 * ceil32(return_data.size)) + 352
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(arg2, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                else:
                    mem[164] = this.address
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = arg1
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                    mem[(2 * ceil32(return_data.size)) + 292] = arg2
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = arg2
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg2, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 256] = arg2
                    mem[(4 * ceil32(return_data.size)) + 288] = 64
                    _870 = mem[ceil32(return_data.size) + 160]
                    mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 352
                    while idx < _870:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          arg2,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 320 len (32 * _870) + 32],
        else:
            if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                if not 10^arg3:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg2 / 10^arg3:
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), 0
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[(2 * ceil32(return_data.size)) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _868 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _868:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _868) + 32],
                else:
                    if arg2 / 10^arg3 and 1 > -1 / arg2 / 10^arg3:
                        revert with 0, 17
                    if not arg2 / 10^arg3:
                        revert with 0, 18
                    if arg2 / 10^arg3 / arg2 / 10^arg3 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), arg2 / 10^arg3
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg2 / 10^arg3
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 / 10^arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(arg2 / 10^arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg2 / 10^arg3
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg2 / 10^arg3
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 / 10^arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _866 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _866:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg2 / 10^arg3,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _866) + 32],
            else:
                s = 10
                t = 1
                idx = arg3
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg2 / s * t:
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), 0
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[(2 * ceil32(return_data.size)) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1458 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1458:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1458) + 32],
                else:
                    if arg2 / s * t and 1 > -1 / arg2 / s * t:
                        revert with 0, 17
                    if not arg2 / s * t:
                        revert with 0, 18
                    if arg2 / s * t / arg2 / s * t != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), arg2 / s * t
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg2 / s * t
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        u = 192
                        v = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 / s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 / s * t
                        idx = 0
                        u = 192
                        v = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(arg2 / s * t, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg2 / s * t
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg2 / s * t
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 / s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg2 / s * t
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1456 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 352
                        while idx < _1456:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg2 / s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1456) + 32],
    else:
        if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
            if not arg3:
                if not arg2:
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), 0
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[(2 * ceil32(return_data.size)) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _864 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _864:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _864) + 32],
                else:
                    if arg2 and 10^arg4 > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * 10^arg4 / arg2 != 10^arg4:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), arg2 * 10^arg4
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg2 * 10^arg4
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 * 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 * 10^arg4
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(arg2 * 10^arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg2 * 10^arg4
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg2 * 10^arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 * 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg2 * 10^arg4
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _862 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _862:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg2 * 10^arg4,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _862) + 32],
            else:
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if not 10^arg3:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / 10^arg3:
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), 0
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[(2 * ceil32(return_data.size)) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _860 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _860:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _860) + 32],
                    else:
                        if arg2 / 10^arg3 and 10^arg4 > -1 / arg2 / 10^arg3:
                            revert with 0, 17
                        if not arg2 / 10^arg3:
                            revert with 0, 18
                        if arg2 / 10^arg3 * 10^arg4 / arg2 / 10^arg3 != 10^arg4:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), arg2 / 10^arg3 * 10^arg4
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = arg2 / 10^arg3 * 10^arg4
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / 10^arg3 * 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3 * 10^arg4
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(arg2 / 10^arg3 * 10^arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg2 / 10^arg3 * 10^arg4
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg2 / 10^arg3 * 10^arg4
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / 10^arg3 * 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3 * 10^arg4
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _858 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _858:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg2 / 10^arg3 * 10^arg4,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _858) + 32],
                else:
                    s = 10
                    t = 1
                    idx = arg3
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / s * t:
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), 0
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[(2 * ceil32(return_data.size)) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1454 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1454:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1454) + 32],
                    else:
                        if arg2 / s * t and 10^arg4 > -1 / arg2 / s * t:
                            revert with 0, 17
                        if not arg2 / s * t:
                            revert with 0, 18
                        if arg2 / s * t * 10^arg4 / arg2 / s * t != 10^arg4:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), arg2 / s * t * 10^arg4
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = arg2 / s * t * 10^arg4
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            u = 192
                            v = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / s * t * 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / s * t * 10^arg4
                            idx = 0
                            u = 192
                            v = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapTokensForETH(arg2 / s * t * 10^arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg2 / s * t * 10^arg4
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg2 / s * t * 10^arg4
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / s * t * 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg2 / s * t * 10^arg4
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1452 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 352
                            while idx < _1452:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg2 / s * t * 10^arg4,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1452) + 32],
        else:
            s = 10
            t = 1
            idx = arg4
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not arg3:
                if not arg2:
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), 0
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = 0
                        idx = 0
                        s = 192
                        t = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              2,
                                              mem[(2 * ceil32(return_data.size)) + 352 len 64],
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1450 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1450:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1450) + 32],
                else:
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    if not arg2:
                        revert with 0, 18
                    if arg2 * s * t / arg2 != s * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        mem[192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[224] = ext_call.return_data[12 len 20]
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor28.field_0), arg2 * s * t
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 260] = arg2 * s * t
                        mem[(2 * ceil32(return_data.size)) + 324] = 160
                        idx = 0
                        u = 192
                        v = (2 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2 * s * t
                        idx = 0
                        u = 192
                        v = (2 * ceil32(return_data.size)) + 352
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(arg2 * s * t, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                    else:
                        mem[164] = this.address
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg2 * s * t
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg2 * s * t
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg2 * s * t
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1448 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 352
                        while idx < _1448:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg2 * s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1448) + 32],
            else:
                if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
                    if not 10^arg3:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / 10^arg3:
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), 0
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[(2 * ceil32(return_data.size)) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1446 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1446:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1446) + 32],
                    else:
                        if arg2 / 10^arg3 and s * t > -1 / arg2 / 10^arg3:
                            revert with 0, 17
                        if not arg2 / 10^arg3:
                            revert with 0, 18
                        if arg2 / 10^arg3 * s * t / arg2 / 10^arg3 != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), arg2 / 10^arg3 * s * t
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = arg2 / 10^arg3 * s * t
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            u = 192
                            v = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / 10^arg3 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3 * s * t
                            idx = 0
                            u = 192
                            v = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapTokensForETH(arg2 / 10^arg3 * s * t, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg2 / 10^arg3 * s * t
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg2 / 10^arg3 * s * t
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / 10^arg3 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg2 / 10^arg3 * s * t
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1444 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 352
                            while idx < _1444:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg2 / 10^arg3 * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1444) + 32],
                else:
                    u = 10
                    v = 1
                    idx = arg3
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if not u * v:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg2 / u * v:
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), 0
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = 0
                            idx = 0
                            s = 192
                            t = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  2,
                                                  mem[(2 * ceil32(return_data.size)) + 352 len 64],
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1632 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1632:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1632) + 32],
                    else:
                        if arg2 / u * v and s * t > -1 / arg2 / u * v:
                            revert with 0, 17
                        if not arg2 / u * v:
                            revert with 0, 18
                        if arg2 / u * v * s * t / arg2 / u * v != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2:
                            mem[192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[224] = ext_call.return_data[12 len 20]
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor28.field_0), arg2 / u * v * s * t
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = arg2 / u * v * s * t
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            idx = 0
                            w = 192
                            x = (2 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / u * v * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2 / u * v * s * t
                            idx = 0
                            w = 192
                            x = (2 * ceil32(return_data.size)) + 352
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            emit SwapTokensForETH(arg2 / u * v * s * t, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 352 len 64]));
                        else:
                            mem[164] = this.address
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg2 / u * v * s * t
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg2 / u * v * s * t
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            w = ceil32(return_data.size) + 192
                            x = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg2 / u * v * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg2 / u * v * s * t
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1630 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            w = ceil32(return_data.size) + 192
                            x = (4 * ceil32(return_data.size)) + 352
                            while idx < _1630:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg2 / u * v * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1630) + 32],
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 0, 17
                idx = 0
                s = totalSupply
                t = stor13
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    if stor6[stor11[idx]] > t:
                        _2470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2470] = 26
                        mem[_2470 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2508 + 68] = mem[idx + _2470 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if not arg1:
                            return 0
                        if arg1 and stor13 / totalSupply > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2938] = 30
                        mem[_2938 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _2996 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2996 + 68] = mem[idx + _2938 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2996 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2996 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3243] = 30
                        mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3366 + 68] = mem[idx + _3243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3366 + -mem[64] + 100
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    if stor7[stor11[idx]] <= s:
                        if idx >= stor11.length:
                            revert with 0, 50
                        mem[0] = stor11[idx]
                        mem[32] = 6
                        _2509 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2509] = 30
                        mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor11[idx]] > t:
                            _2549 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2549 + 68] = mem[idx + _2509 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2549 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2549 + -mem[64] + 100
                        if t < stor6[stor11[idx]]:
                            revert with 0, 17
                        if idx >= stor11.length:
                            revert with 0, 50
                        mem[0] = stor11[idx]
                        mem[32] = 7
                        _2726 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2726] = 30
                        mem[_2726 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor11[idx]] <= s:
                            if s < stor7[stor11[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor11[idx]]
                            t = t - stor6[stor11[idx]]
                            continue 
                        _2750 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2750 + 68] = mem[idx + _2726 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2750 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2750 + -mem[64] + 100
                    _2510 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2510] = 26
                    mem[_2510 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2550 + 68] = mem[idx + _2510 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2550 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2550 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2998] = 30
                    mem[_2998 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3050 + 68] = mem[idx + _2998 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3050 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3050 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3367 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3367] = 30
                    mem[_3367 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3496 + 68] = mem[idx + _3367 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3496 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3496 + -mem[64] + 100
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if t >= stor13 / totalSupply:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor13 / totalSupply)
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > t:
                    _2469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2469] = 26
                    mem[_2469 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2505 + 68] = mem[idx + _2469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2505 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2505 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2934] = 30
                        mem[_2934 + 32] = 'SafeMath: subtraction overflow'
                        _3237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3237] = 30
                        mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor13 / totalSupply)
                        _3361 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3361 + 68] = mem[idx + _3237 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3361 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3361 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2933 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2933] = 30
                        mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _2992 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2992 + 68] = mem[idx + _2933 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2992 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2992 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3235] = 30
                        mem[_3235 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3360 + 68] = mem[idx + _3235 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3360 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3131 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3131] = 30
                    mem[_3131 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3234 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3234 + 68] = mem[idx + _3131 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3234 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3234 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3649] = 30
                    mem[_3649 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                    _3819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3819 + 68] = mem[idx + _3649 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3819 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3819 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                if stor7[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2506 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2506] = 30
                    mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] > t:
                        _2546 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2546 + 68] = mem[idx + _2506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2546 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2546 + -mem[64] + 100
                    if t < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    _2723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2723] = 30
                    mem[_2723 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor11[idx]] <= s:
                        if s < stor7[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor11[idx]]
                        t = t - stor6[stor11[idx]]
                        continue 
                    _2747 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2747 + 68] = mem[idx + _2723 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2747 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2747 + -mem[64] + 100
                _2507 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2507] = 26
                mem[_2507 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2547 + 68] = mem[idx + _2507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2547 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2547 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2995] = 30
                    mem[_2995 + 32] = 'SafeMath: subtraction overflow'
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor13 / totalSupply)
                    _3495 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3495 + 68] = mem[idx + _3365 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3495 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3495 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2994] = 30
                    mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3048 + 68] = mem[idx + _2994 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3363] = 30
                    mem[_3363 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3494 + 68] = mem[idx + _3363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3494 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3494 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3238 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3238] = 30
                mem[_3238 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    _3362 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3362 + 68] = mem[idx + _3238 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3362 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3362 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                _3822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3822] = 30
                mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                    if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                _3972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3972 + 68] = mem[idx + _3822 + 32]
                    idx = idx + 32
                    continue 
                mem[_3972 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3972 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _liquidityFee / 100:
                    return 0
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                return (-1 * arg1 * _liquidityFee / 100 * stor13 / totalSupply)
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor13 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > t:
                    _2468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2468] = 26
                    mem[_2468 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2502 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2502 + 68] = mem[idx + _2468 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2502 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2502 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2930] = 30
                        mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            _2987 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2987 + 68] = mem[idx + _2930 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2987 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2987 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        _3227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3227] = 30
                        mem[_3227 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor13 / totalSupply)
                        _3352 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3352 + 68] = mem[idx + _3227 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3352 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3352 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2929] = 30
                        mem[_2929 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _2986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2986 + 68] = mem[idx + _2929 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2986 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2986 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3225] = 30
                        mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3351 + 68] = mem[idx + _3225 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3351 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3351 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3126 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3126] = 30
                    mem[_3126 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _3224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3224 + 68] = mem[idx + _3126 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3224 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3224 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3638] = 30
                    mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply))
                    _3809 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3809 + 68] = mem[idx + _3638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3809 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3809 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                if stor7[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2503] = 30
                    mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] > t:
                        _2543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2543 + 68] = mem[idx + _2503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2543 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2543 + -mem[64] + 100
                    if t < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    _2720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2720] = 30
                    mem[_2720 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor11[idx]] <= s:
                        if s < stor7[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor11[idx]]
                        t = t - stor6[stor11[idx]]
                        continue 
                    _2744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2744 + 68] = mem[idx + _2720 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2744 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2744 + -mem[64] + 100
                _2504 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2504] = 26
                mem[_2504 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2544 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2544 + 68] = mem[idx + _2504 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2544 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2544 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                        _3043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3043 + 68] = mem[idx + _2991 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3043 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3043 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor13 / totalSupply)
                    _3491 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3491 + 68] = mem[idx + _3356 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3491 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3491 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3042 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3042 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3042 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3042 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3490 + 68] = mem[idx + _3354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3490 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3490 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3229 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3229] = 30
                mem[_3229 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _3353 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3353 + 68] = mem[idx + _3229 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3353 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3353 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                _3812 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3812] = 30
                mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply))
                _3969 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3969 + 68] = mem[idx + _3812 + 32]
                    idx = idx + 32
                    continue 
                mem[_3969 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3969 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor13 / totalSupply)
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor13 / totalSupply)
            if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply))
        if arg1 and _liquidityFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _liquidityFee / arg1 != _liquidityFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _taxFee / 100:
            revert with 0, 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
            revert with 0, 17
        idx = 0
        s = totalSupply
        t = stor13
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 6
            if stor6[stor11[idx]] > t:
                _2467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2467] = 26
                mem[_2467 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2499 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2499 + 68] = mem[idx + _2467 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2499 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2499 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2922] = 30
                        mem[_2922 + 32] = 'SafeMath: subtraction overflow'
                        _3214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3214] = 30
                        mem[_3214 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor13 / totalSupply)
                        _3342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3342 + 68] = mem[idx + _3214 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3342 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2921] = 30
                        mem[_2921 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            _2980 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2980 + 68] = mem[idx + _2921 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2980 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2980 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        _3212 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3212] = 30
                        mem[_3212 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (-1 * arg1 * _taxFee / 100 * stor13 / totalSupply)
                        _3341 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3341 + 68] = mem[idx + _3212 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3341 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3341 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                        _3211 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3211 + 68] = mem[idx + _3117 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3211 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3211 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3624] = 30
                    mem[_3624 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((-1 * arg1 * _taxFee / 100 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                    _3794 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3794 + 68] = mem[idx + _3624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3794 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3794 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2920 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2920] = 30
                        mem[_2920 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _2979 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2979 + 68] = mem[idx + _2920 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2979 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2979 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3209] = 30
                        mem[_3209 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3340 + 68] = mem[idx + _3209 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3340 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3340 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3116 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3116] = 30
                    mem[_3116 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3208 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3208 + 68] = mem[idx + _3116 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3208 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3208 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3622] = 30
                    mem[_3622 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                    _3792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3792 + 68] = mem[idx + _3622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3792 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3792 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3115] = 30
                    mem[_3115 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _3207 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3207 + 68] = mem[idx + _3115 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3207 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3207 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3620] = 30
                    mem[_3620 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply))
                    _3791 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3791 + 68] = mem[idx + _3620 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3791 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3791 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3483] = 30
                mem[_3483 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _3619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3619 + 68] = mem[idx + _3483 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3619 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3619 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                _4115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4115] = 30
                mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                _4265 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4265 + 68] = mem[idx + _4115 + 32]
                    idx = idx + 32
                    continue 
                mem[_4265 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4265 + -mem[64] + 100
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = stor11[idx]
            mem[32] = 7
            if stor7[stor11[idx]] <= s:
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 6
                _2500 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2500] = 30
                mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor11[idx]] > t:
                    _2540 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2540 + 68] = mem[idx + _2500 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2540 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2540 + -mem[64] + 100
                if t < stor6[stor11[idx]]:
                    revert with 0, 17
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                _2717 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2717] = 30
                mem[_2717 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor11[idx]] <= s:
                    if s < stor7[stor11[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor7[stor11[idx]]
                    t = t - stor6[stor11[idx]]
                    continue 
                _2741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2741 + 68] = mem[idx + _2717 + 32]
                    idx = idx + 32
                    continue 
                mem[_2741 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2741 + -mem[64] + 100
            _2501 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2501] = 26
            mem[_2501 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _2541 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _2541 + 68] = mem[idx + _2501 + 32]
                    idx = idx + 32
                    continue 
                mem[_2541 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2541 + -mem[64] + 100
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    _3350 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3350] = 30
                    mem[_3350 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor13 / totalSupply)
                    _3487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3487 + 68] = mem[idx + _3350 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3487 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3487 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2984] = 30
                    mem[_2984 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                        _3040 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3040 + 68] = mem[idx + _2984 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3040 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3040 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3348 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3348] = 30
                    mem[_3348 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (-1 * arg1 * _taxFee / 100 * stor13 / totalSupply)
                    _3486 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3486 + 68] = mem[idx + _3348 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3486 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3486 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3217 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3217] = 30
                mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                    _3347 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3347 + 68] = mem[idx + _3217 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3347 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3347 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                _3802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3802] = 30
                mem[_3802 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                    if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((-1 * arg1 * _taxFee / 100 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                _3966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3966 + 68] = mem[idx + _3802 + 32]
                    idx = idx + 32
                    continue 
                mem[_3966 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3966 + -mem[64] + 100
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    _2983 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2983] = 30
                    mem[_2983 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3039 + 68] = mem[idx + _2983 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3039 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3039 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3345] = 30
                    mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3485 + 68] = mem[idx + _3345 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3485 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3485 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3216] = 30
                mem[_3216 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    _3344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3344 + 68] = mem[idx + _3216 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3344 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3344 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                _3800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3800] = 30
                mem[_3800 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                    if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
                _3964 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3964 + 68] = mem[idx + _3800 + 32]
                    idx = idx + 32
                    continue 
                mem[_3964 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3964 + -mem[64] + 100
            if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                _3215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3215] = 30
                mem[_3215 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _3343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3343 + 68] = mem[idx + _3215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3343 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3343 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                _3798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3798] = 30
                mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply))
                _3963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3963 + 68] = mem[idx + _3798 + 32]
                    idx = idx + 32
                    continue 
                mem[_3963 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3963 + -mem[64] + 100
            if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3627 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3627] = 30
            mem[_3627 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                _3797 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3797 + 68] = mem[idx + _3627 + 32]
                    idx = idx + 32
                    continue 
                mem[_3797 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3797 + -mem[64] + 100
            if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            _4269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4269] = 30
            mem[_4269 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
            _4373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4373 + 68] = mem[idx + _4269 + 32]
                idx = idx + 32
                continue 
            mem[_4373 + 98] = 0
            revert with memory
              from mem[64]
               len _4373 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor13 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * t / s < 0:
                        revert with 0, 17
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    return (arg1 * t / s)
                if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                    revert with 0, 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                    revert with 0, 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                revert with 0, 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    return 0
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                return (-1 * arg1 * _liquidityFee / 100 * stor13 / totalSupply)
            if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                revert with 0, 17
            if not arg1 * _taxFee / 100:
                revert with 0, 18
            if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (-1 * arg1 * _taxFee / 100 * stor13 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply > -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            return ((-1 * arg1 * _taxFee / 100 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
        if arg1 and stor13 / totalSupply > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                return (arg1 * stor13 / totalSupply)
            if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                revert with 0, 17
            if not arg1 * _liquidityFee / 100:
                revert with 0, 18
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0:
                revert with 0, 17
            if arg1 * _liquidityFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
        if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
            revert with 0, 17
        if not arg1 * _taxFee / 100:
            revert with 0, 18
        if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                revert with 0, 17
            if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                revert with 0, 17
            return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply))
        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
            revert with 0, 17
        if not arg1 * _liquidityFee / 100:
            revert with 0, 18
        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
            revert with 0, 17
        if arg1 * _liquidityFee / 100 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
            revert with 0, 17
        return ((arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) - (arg1 * _liquidityFee / 100 * stor13 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > t:
                    _2474 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2474] = 26
                    mem[_2474 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2520 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2520 + 68] = mem[idx + _2474 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2520 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2520 + -mem[64] + 100
                    if not arg1:
                        return 0
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2962] = 30
                    mem[_2962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3016 + 68] = mem[idx + _2962 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3016 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3287] = 30
                    mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3400 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3400 + 68] = mem[idx + _3287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3400 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3400 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                if stor7[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2521 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2521] = 30
                    mem[_2521 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] > t:
                        _2561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2561 + 68] = mem[idx + _2521 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2561 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2561 + -mem[64] + 100
                    if t < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    _2738 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2738] = 30
                    mem[_2738 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor11[idx]] <= s:
                        if s < stor7[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor11[idx]]
                        t = t - stor6[stor11[idx]]
                        continue 
                    _2762 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2762 + 68] = mem[idx + _2738 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2762 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2762 + -mem[64] + 100
                _2522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2522] = 26
                mem[_2522 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2562 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2562 + 68] = mem[idx + _2522 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2562 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2562 + -mem[64] + 100
                if not arg1:
                    return 0
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3018] = 30
                mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    _3067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3067 + 68] = mem[idx + _3018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3067 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3067 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                _3401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3401] = 30
                mem[_3401 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor13 / totalSupply:
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _3516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3516 + 68] = mem[idx + _3401 + 32]
                    idx = idx + 32
                    continue 
                mem[_3516 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3516 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0:
                revert with 0, 17
            if 0 > arg1 * stor13 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor13 / totalSupply < 0:
                revert with 0, 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > t:
                    _2473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2473] = 26
                    mem[_2473 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2517 + 68] = mem[idx + _2473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2958] = 30
                        mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                        _3281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3281] = 30
                        mem[_3281 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3395 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3395 + 68] = mem[idx + _3281 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3395 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3395 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2957] = 30
                        mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _3012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3012 + 68] = mem[idx + _2957 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3012 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3012 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3279] = 30
                        mem[_3279 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3394 + 68] = mem[idx + _3279 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3394 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3394 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3159] = 30
                    mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3278 + 68] = mem[idx + _3159 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3278 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3278 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3703] = 30
                    mem[_3703 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3865 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3865 + 68] = mem[idx + _3703 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3865 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3865 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                if stor7[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 30
                    mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] > t:
                        _2558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2558 + 68] = mem[idx + _2518 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2558 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2558 + -mem[64] + 100
                    if t < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    _2735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2735] = 30
                    mem[_2735 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor11[idx]] <= s:
                        if s < stor7[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor11[idx]]
                        t = t - stor6[stor11[idx]]
                        continue 
                    _2759 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2759 + 68] = mem[idx + _2735 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2759 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2759 + -mem[64] + 100
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 26
                mem[_2519 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2559 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2559 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2559 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2559 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3015 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3015] = 30
                    mem[_3015 + 32] = 'SafeMath: subtraction overflow'
                    _3399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3399] = 30
                    mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3515 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3515 + 68] = mem[idx + _3399 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3515 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3515 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3014] = 30
                    mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3065 + 68] = mem[idx + _3014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3065 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3065 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3397] = 30
                    mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3514 + 68] = mem[idx + _3397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3514 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3514 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3282] = 30
                mem[_3282 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    _3396 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3396 + 68] = mem[idx + _3282 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3396 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3396 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                _3868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3868] = 30
                mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                    if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _3987 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3987 + 68] = mem[idx + _3868 + 32]
                    idx = idx + 32
                    continue 
                mem[_3987 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3987 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * _liquidityFee / 100:
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > t:
                    _2472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2472] = 26
                    mem[_2472 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2514 + 68] = mem[idx + _2472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2514 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2514 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2954] = 30
                        mem[_2954 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            _3007 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3007 + 68] = mem[idx + _2954 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3007 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3007 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3386 + 68] = mem[idx + _3271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3386 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3386 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2953] = 30
                        mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _3006 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3006 + 68] = mem[idx + _2953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3006 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3006 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3269] = 30
                        mem[_3269 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3385 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3385 + 68] = mem[idx + _3269 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3385 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3385 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3154 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3154] = 30
                    mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _3268 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3268 + 68] = mem[idx + _3154 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3268 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3268 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3692] = 30
                    mem[_3692 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3855 + 68] = mem[idx + _3692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3855 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3855 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                if stor7[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] > t:
                        _2555 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2555 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2555 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2555 + -mem[64] + 100
                    if t < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor11[idx]] <= s:
                        if s < stor7[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor11[idx]]
                        t = t - stor6[stor11[idx]]
                        continue 
                    _2756 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2756 + 68] = mem[idx + _2732 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2756 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2756 + -mem[64] + 100
                _2516 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2516] = 26
                mem[_2516 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2556 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2556 + 68] = mem[idx + _2516 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2556 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2556 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3011 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3011] = 30
                    mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                        _3060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3060 + 68] = mem[idx + _3011 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3060 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3390] = 30
                    mem[_3390 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        else:
                            return 0
                    _3511 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3511 + 68] = mem[idx + _3390 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3511 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3511 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _3010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3010] = 30
                    mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3059 + 68] = mem[idx + _3010 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3059 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3059 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3388] = 30
                    mem[_3388 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3510 + 68] = mem[idx + _3388 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3510 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3510 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3273 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3273] = 30
                mem[_3273 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _3387 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3387 + 68] = mem[idx + _3273 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3387 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3387 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                _3858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3858] = 30
                mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _3984 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3984 + 68] = mem[idx + _3858 + 32]
                    idx = idx + 32
                    continue 
                mem[_3984 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3984 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 0, 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 0, 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
                if 0 > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < 0:
                    revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                    revert with 0, 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor13
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 6
                if stor6[stor11[idx]] > t:
                    _2471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2471] = 26
                    mem[_2471 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2511 + 68] = mem[idx + _2471 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2511 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2511 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2946 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2946] = 30
                            mem[_2946 + 32] = 'SafeMath: subtraction overflow'
                            _3258 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3258] = 30
                            mem[_3258 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3376 + 68] = mem[idx + _3258 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3376 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3376 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2945] = 30
                            mem[_2945 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                                _3000 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3000 + 68] = mem[idx + _2945 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3000 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3000 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            _3256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3256] = 30
                            mem[_3256 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                else:
                                    return 0
                            _3375 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3375 + 68] = mem[idx + _3256 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3375 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3375 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3145] = 30
                        mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            _3255 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3255 + 68] = mem[idx + _3145 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3255 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3255 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        _3678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3678] = 30
                        mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3840 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3840 + 68] = mem[idx + _3678 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3840 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3840 + -mem[64] + 100
                    if arg1 and stor13 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2944 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2944] = 30
                            mem[_2944 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor13 / totalSupply:
                                _2999 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2999 + 68] = mem[idx + _2944 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2999 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2999 + -mem[64] + 100
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            _3253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3253] = 30
                            mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor13 / totalSupply:
                                if arg1 * stor13 / totalSupply < 0:
                                    revert with 0, 17
                                return (arg1 * stor13 / totalSupply)
                            _3374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3374 + 68] = mem[idx + _3253 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3374 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3144 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3144] = 30
                        mem[_3144 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _3252 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3252 + 68] = mem[idx + _3144 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3252 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3252 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 30
                        mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3838 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3838 + 68] = mem[idx + _3676 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3838 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3838 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _3143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3143] = 30
                        mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                            _3251 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3251 + 68] = mem[idx + _3143 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3251 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3251 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        _3674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3674] = 30
                        mem[_3674 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                            if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3837 + 68] = mem[idx + _3674 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3837 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3837 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3503 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3503] = 30
                    mem[_3503 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _3673 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3673 + 68] = mem[idx + _3503 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3673 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3673 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _4155 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4155] = 30
                    mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _4307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4307 + 68] = mem[idx + _4155 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4307 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4307 + -mem[64] + 100
                if idx >= stor11.length:
                    revert with 0, 50
                mem[0] = stor11[idx]
                mem[32] = 7
                if stor7[stor11[idx]] <= s:
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 6
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor11[idx]] > t:
                        _2552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2552 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2552 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2552 + -mem[64] + 100
                    if t < stor6[stor11[idx]]:
                        revert with 0, 17
                    if idx >= stor11.length:
                        revert with 0, 50
                    mem[0] = stor11[idx]
                    mem[32] = 7
                    _2729 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2729] = 30
                    mem[_2729 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor11[idx]] <= s:
                        if s < stor7[stor11[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor11[idx]]
                        t = t - stor6[stor11[idx]]
                        continue 
                    _2753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2753 + 68] = mem[idx + _2729 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2753 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2753 + -mem[64] + 100
                _2513 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2513] = 26
                mem[_2513 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2553 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2553 + 68] = mem[idx + _2513 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2553 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2553 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3005] = 30
                        mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                        _3384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3384] = 30
                        mem[_3384 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                                revert with 0, 17
                            else:
                                return 0
                        _3507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3507 + 68] = mem[idx + _3384 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3507 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3507 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _3004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3004] = 30
                        mem[_3004 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            _3057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3057 + 68] = mem[idx + _3004 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3057 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3057 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        _3382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3382] = 30
                        mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            else:
                                return 0
                        _3506 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3506 + 68] = mem[idx + _3382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3506 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3506 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3261] = 30
                    mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                        _3381 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3381 + 68] = mem[idx + _3261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3381 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3381 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3848] = 30
                    mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        else:
                            return 0
                    _3981 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3981 + 68] = mem[idx + _3848 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3981 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3981 + -mem[64] + 100
                if arg1 and stor13 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3003] = 30
                        mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor13 / totalSupply:
                            _3056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3056 + 68] = mem[idx + _3003 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3056 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3056 + -mem[64] + 100
                        if arg1 * stor13 / totalSupply < 0:
                            revert with 0, 17
                        _3379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3379] = 30
                        mem[_3379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor13 / totalSupply:
                            if arg1 * stor13 / totalSupply < 0:
                                revert with 0, 17
                            return (arg1 * stor13 / totalSupply)
                        _3505 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3505 + 68] = mem[idx + _3379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3505 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3505 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3260 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3260] = 30
                    mem[_3260 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        _3378 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3378 + 68] = mem[idx + _3260 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3378 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3378 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    _3846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3846] = 30
                    mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= arg1 * stor13 / totalSupply:
                        if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3979 + 68] = mem[idx + _3846 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3979 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3979 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _3259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3259] = 30
                    mem[_3259 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        _3377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3377 + 68] = mem[idx + _3259 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3377 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3377 + -mem[64] + 100
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    _3844 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3844] = 30
                    mem[_3844 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                            revert with 0, 17
                        return (arg1 * stor13 / totalSupply)
                    _3978 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3978 + 68] = mem[idx + _3844 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3978 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3978 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3681 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3681] = 30
                mem[_3681 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                    _3843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3843 + 68] = mem[idx + _3681 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3843 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3843 + -mem[64] + 100
                if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                    revert with 0, 17
                _4311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4311] = 30
                mem[_4311 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor13 / totalSupply <= (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    return (arg1 * stor13 / totalSupply)
                _4379 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4379 + 68] = mem[idx + _4311 + 32]
                    idx = idx + 32
                    continue 
                mem[_4379 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4379 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor13 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                return (arg1 * t / s)
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                else:
                    if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor13 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * stor13 / totalSupply > -1 * arg1 * _taxFee / 100 * stor13 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                            revert with 0, 17
                return 0
            if arg1 and stor13 / totalSupply > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * stor13 / totalSupply / arg1 != stor13 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
            else:
                if arg1 * _taxFee / 100 and stor13 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor13 / totalSupply / arg1 * _taxFee / 100 != stor13 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    if 0 > (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < 0:
                        revert with 0, 17
                else:
                    if arg1 * _liquidityFee / 100 and stor13 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply / arg1 * _liquidityFee / 100 != stor13 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor13 / totalSupply > arg1 * stor13 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor13 / totalSupply < arg1 * _taxFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
                    if arg1 * _liquidityFee / 100 * stor13 / totalSupply > (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor13 / totalSupply) - (arg1 * _taxFee / 100 * stor13 / totalSupply) < arg1 * _liquidityFee / 100 * stor13 / totalSupply:
                        revert with 0, 17
    return (arg1 * stor13 / totalSupply)
}

function swapTokens(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if buybackOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the buyback owner'
    if not arg5:
        if not arg4:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg3:
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = arg1
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                    mem[(2 * ceil32(return_data.size)) + 292] = 0
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 256] = 0
                    mem[(4 * ceil32(return_data.size)) + 288] = 64
                    _1336 = mem[ceil32(return_data.size) + 160]
                    mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 352
                    while idx < _1336:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          0,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1336) + 32],
                else:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 224] = arg2
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 32
                            mem[(4 * ceil32(return_data.size)) + 292] = 27
                            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 256
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 128
                        mem[(4 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = (4 * ceil32(return_data.size)) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1335 = mem[(2 * ceil32(return_data.size)) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1335:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1335) + 32],
                    else:
                        mem[(2 * ceil32(return_data.size)) + 160] = 3
                        mem[(2 * ceil32(return_data.size)) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2
                        mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -121:
                            revert with 0, 17
                        if block.timestamp + 120 < block.timestamp:
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 32
                            mem[(4 * ceil32(return_data.size)) + 324] = 27
                            mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 288
                               len (7 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1308 = mem[64]
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = 64
                        _1334 = mem[(2 * ceil32(return_data.size)) + 160]
                        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = mem[64] + 96
                        while idx < _1334:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                 mem[mem[64] len _1308 + (32 * _1334) + -mem[64] + 96],
            else:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                if not arg3:
                    revert with 0, 18
                if arg3 / arg3 != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if arg2 == ext_call.return_data[12 len 20]:
                    mem[ceil32(return_data.size) + 160] = 2
                    mem[ceil32(return_data.size) + 192] = arg1
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                    mem[(2 * ceil32(return_data.size)) + 292] = arg3
                    require ext_code.size(arg1)
                    call arg1.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = arg3
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 452
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 256] = arg3
                    mem[(4 * ceil32(return_data.size)) + 288] = 64
                    _1333 = mem[ceil32(return_data.size) + 160]
                    mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = (4 * ceil32(return_data.size)) + 352
                    while idx < _1333:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                          arg3,
                                          64,
                                          mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1333) + 32],
                else:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg1 == ext_call.return_data[12 len 20]:
                        mem[(2 * ceil32(return_data.size)) + 160] = 2
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 224] = arg2
                        if block.timestamp > -301:
                            revert with 0, 17
                        if block.timestamp + 300 < block.timestamp:
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 32
                            mem[(4 * ceil32(return_data.size)) + 292] = 27
                            mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 256
                               len (5 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 128
                        mem[(4 * ceil32(return_data.size)) + 388] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = (4 * ceil32(return_data.size)) + 420
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 324] = this.address
                        mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value arg3 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg3
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1332 = mem[(2 * ceil32(return_data.size)) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1332:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              arg3,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1332) + 32],
                    else:
                        mem[(2 * ceil32(return_data.size)) + 160] = 3
                        mem[(2 * ceil32(return_data.size)) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 256] = arg2
                        mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                        mem[(4 * ceil32(return_data.size)) + 324] = arg3
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 288
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if block.timestamp > -121:
                            revert with 0, 17
                        if block.timestamp + 120 < block.timestamp:
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 32
                            mem[(4 * ceil32(return_data.size)) + 324] = 27
                            mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 288
                               len (7 * ceil32(return_data.size)) + 100
                        mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 292] = arg3
                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                        mem[(4 * ceil32(return_data.size)) + 452] = 3
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = (4 * ceil32(return_data.size)) + 484
                        while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1305 = mem[64]
                        mem[mem[64]] = arg3
                        mem[mem[64] + 32] = 64
                        _1331 = mem[(2 * ceil32(return_data.size)) + 160]
                        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 192
                        t = mem[64] + 96
                        while idx < _1331:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                 mem[mem[64] len _1305 + (32 * _1331) + -mem[64] + 96],
        else:
            if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if not 10^arg4:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg3 / 10^arg4:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1330 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1330:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1330) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1329 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1329:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1329) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1302 = mem[64]
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = 64
                            _1328 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _1328:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _1302 + (32 * _1328) + -mem[64] + 96],
                else:
                    if arg3 / 10^arg4 and 1 > -1 / arg3 / 10^arg4:
                        revert with 0, 17
                    if not arg3 / 10^arg4:
                        revert with 0, 18
                    if arg3 / 10^arg4 / arg3 / 10^arg4 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 10^arg4
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 / 10^arg4
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / 10^arg4, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg3 / 10^arg4
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1327 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1327:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 / 10^arg4,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1327) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 / 10^arg4 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 / 10^arg4
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1326 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1326:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 / 10^arg4,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1326) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = arg3 / 10^arg4
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3 / 10^arg4
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1299 = mem[64]
                            mem[mem[64]] = arg3 / 10^arg4
                            mem[mem[64] + 32] = 64
                            _1325 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _1325:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _1299 + (32 * _1325) + -mem[64] + 96],
            else:
                s = 10
                t = 1
                idx = arg4
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if not s * t:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg3 / s * t:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _2226 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _2226:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2226) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2225 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _2225:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2225) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2199 = mem[64]
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = 64
                            _2224 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _2224:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2199 + (32 * _2224) + -mem[64] + 96],
                else:
                    if arg3 / s * t and 1 > -1 / arg3 / s * t:
                        revert with 0, 17
                    if not arg3 / s * t:
                        revert with 0, 18
                    if arg3 / s * t / arg3 / s * t != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg3 / s * t
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 / s * t
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 / s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg3 / s * t
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _2223 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 352
                        while idx < _2223:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 / s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2223) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 192
                            v = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 / s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 / s * t
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2222 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 192
                            v = (4 * ceil32(return_data.size)) + 352
                            while idx < _2222:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 / s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2222) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = arg3 / s * t
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3 / s * t
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 192
                            v = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2196 = mem[64]
                            mem[mem[64]] = arg3 / s * t
                            mem[mem[64] + 32] = 64
                            _2221 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _2221:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2196 + (32 * _2221) + -mem[64] + 96],
    else:
        if bool(bool(arg5 < 78)) or bool(bool(arg5 < 32)):
            if not arg4:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if not arg3:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1324 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1324:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1324) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1323 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1323:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1323) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1296 = mem[64]
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = 64
                            _1322 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _1322:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _1296 + (32 * _1322) + -mem[64] + 96],
                else:
                    if arg3 and 10^arg5 > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * 10^arg5 / arg3 != 10^arg5:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg3 * 10^arg5
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 * 10^arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg3 * 10^arg5
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _1321 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _1321:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 * 10^arg5,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1321) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 * 10^arg5 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1320 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1320:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 * 10^arg5,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1320) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = arg3 * 10^arg5
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3 * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1293 = mem[64]
                            mem[mem[64]] = arg3 * 10^arg5
                            mem[mem[64] + 32] = 64
                            _1319 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _1319:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _1293 + (32 * _1319) + -mem[64] + 96],
            else:
                if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not 10^arg4:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3 / 10^arg4:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1318 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1318:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1318) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = 0
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _1317 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 352
                                while idx < _1317:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      0,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1317) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 0
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1290 = mem[64]
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = 64
                                _1316 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _1316:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _1290 + (32 * _1316) + -mem[64] + 96],
                    else:
                        if arg3 / 10^arg4 and 10^arg5 > -1 / arg3 / 10^arg4:
                            revert with 0, 17
                        if not arg3 / 10^arg4:
                            revert with 0, 18
                        if arg3 / 10^arg4 * 10^arg5 / arg3 / 10^arg4 != 10^arg5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 10^arg4 * 10^arg5
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / 10^arg4 * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3 / 10^arg4 * 10^arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 / 10^arg4 * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _1315 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _1315:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg3 / 10^arg4 * 10^arg5,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1315) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value arg3 / 10^arg4 * 10^arg5 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = arg3 / 10^arg4 * 10^arg5
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _1314 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 352
                                while idx < _1314:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      arg3 / 10^arg4 * 10^arg5,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _1314) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = arg3 / 10^arg4 * 10^arg5
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = arg3 / 10^arg4 * 10^arg5
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1287 = mem[64]
                                mem[mem[64]] = arg3 / 10^arg4 * 10^arg5
                                mem[mem[64] + 32] = 64
                                _1313 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _1313:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _1287 + (32 * _1313) + -mem[64] + 96],
                else:
                    s = 10
                    t = 1
                    idx = arg4
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not s * t:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3 / s * t:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2220 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _2220:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2220) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = 0
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _2219 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 352
                                while idx < _2219:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      0,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2219) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 0
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2193 = mem[64]
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = 64
                                _2218 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _2218:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _2193 + (32 * _2218) + -mem[64] + 96],
                    else:
                        if arg3 / s * t and 10^arg5 > -1 / arg3 / s * t:
                            revert with 0, 17
                        if not arg3 / s * t:
                            revert with 0, 18
                        if arg3 / s * t * 10^arg5 / arg3 / s * t != 10^arg5:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg3 / s * t * 10^arg5
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / s * t * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3 / s * t * 10^arg5, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 / s * t * 10^arg5
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2217 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 352
                            while idx < _2217:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg3 / s * t * 10^arg5,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2217) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                u = (2 * ceil32(return_data.size)) + 192
                                v = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value arg3 / s * t * 10^arg5 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = arg3 / s * t * 10^arg5
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _2216 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                u = (2 * ceil32(return_data.size)) + 192
                                v = (4 * ceil32(return_data.size)) + 352
                                while idx < _2216:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      arg3 / s * t * 10^arg5,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2216) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = arg3 / s * t * 10^arg5
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = arg3 / s * t * 10^arg5
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                u = (2 * ceil32(return_data.size)) + 192
                                v = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2190 = mem[64]
                                mem[mem[64]] = arg3 / s * t * 10^arg5
                                mem[mem[64] + 32] = 64
                                _2215 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _2215:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _2190 + (32 * _2215) + -mem[64] + 96],
        else:
            s = 10
            t = 1
            idx = arg5
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not arg4:
                mem[96] = 26
                mem[128] = 'SafeMath: division by zero'
                if not arg3:
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = 0
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = 0
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = 0
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _2214 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        s = ceil32(return_data.size) + 192
                        t = (4 * ceil32(return_data.size)) + 352
                        while idx < _2214:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              0,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2214) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2213 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _2213:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2213) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2187 = mem[64]
                            mem[mem[64]] = 0
                            mem[mem[64] + 32] = 64
                            _2212 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _2212:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2187 + (32 * _2212) + -mem[64] + 96],
                else:
                    if arg3 and s * t > -1 / arg3:
                        revert with 0, 17
                    if not arg3:
                        revert with 0, 18
                    if arg3 * s * t / arg3 != s * t:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if arg2 == ext_call.return_data[12 len 20]:
                        mem[ceil32(return_data.size) + 160] = 2
                        mem[ceil32(return_data.size) + 192] = arg1
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                        mem[(2 * ceil32(return_data.size)) + 292] = arg3 * s * t
                        require ext_code.size(arg1)
                        call arg1.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 260] = arg3 * s * t
                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                        mem[(4 * ceil32(return_data.size)) + 324] = 160
                        mem[(4 * ceil32(return_data.size)) + 420] = 2
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 452
                        while idx < 2:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 356] = this.address
                        mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 256] = arg3 * s * t
                        mem[(4 * ceil32(return_data.size)) + 288] = 64
                        _2211 = mem[ceil32(return_data.size) + 160]
                        mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                        idx = 0
                        u = ceil32(return_data.size) + 192
                        v = (4 * ceil32(return_data.size)) + 352
                        while idx < _2211:
                            mem[v] = mem[u + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                              arg3 * s * t,
                                              64,
                                              mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2211) + 32],
                    else:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg1 == ext_call.return_data[12 len 20]:
                            mem[(2 * ceil32(return_data.size)) + 160] = 2
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = arg2
                            if block.timestamp > -301:
                                revert with 0, 17
                            if block.timestamp + 300 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 32
                                mem[(4 * ceil32(return_data.size)) + 292] = 27
                                mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 256
                                   len (5 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 128
                            mem[(4 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 192
                            v = (4 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 324] = this.address
                            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value arg3 * s * t wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 * s * t
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2210 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 192
                            v = (4 * ceil32(return_data.size)) + 352
                            while idx < _2210:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  arg3 * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2210) + 32],
                        else:
                            mem[(2 * ceil32(return_data.size)) + 160] = 3
                            mem[(2 * ceil32(return_data.size)) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 256] = arg2
                            mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                            mem[(4 * ceil32(return_data.size)) + 324] = arg3 * s * t
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 288
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if block.timestamp > -121:
                                revert with 0, 17
                            if block.timestamp + 120 < block.timestamp:
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 32
                                mem[(4 * ceil32(return_data.size)) + 324] = 27
                                mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 288
                                   len (7 * ceil32(return_data.size)) + 100
                            mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 292] = arg3 * s * t
                            mem[(4 * ceil32(return_data.size)) + 324] = 0
                            mem[(4 * ceil32(return_data.size)) + 356] = 160
                            mem[(4 * ceil32(return_data.size)) + 452] = 3
                            idx = 0
                            u = (2 * ceil32(return_data.size)) + 192
                            v = (4 * ceil32(return_data.size)) + 484
                            while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 388] = this.address
                            mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2184 = mem[64]
                            mem[mem[64]] = arg3 * s * t
                            mem[mem[64] + 32] = 64
                            _2209 = mem[(2 * ceil32(return_data.size)) + 160]
                            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 192
                            t = mem[64] + 96
                            while idx < _2209:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                     mem[mem[64] len _2184 + (32 * _2209) + -mem[64] + 96],
            else:
                if bool(bool(arg4 < 78)) or bool(bool(arg4 < 32)):
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not 10^arg4:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3 / 10^arg4:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2208 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _2208:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2208) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = 0
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _2207 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 352
                                while idx < _2207:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      0,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2207) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 0
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2181 = mem[64]
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = 64
                                _2206 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _2206:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _2181 + (32 * _2206) + -mem[64] + 96],
                    else:
                        if arg3 / 10^arg4 and s * t > -1 / arg3 / 10^arg4:
                            revert with 0, 17
                        if not arg3 / 10^arg4:
                            revert with 0, 18
                        if arg3 / 10^arg4 * s * t / arg3 / 10^arg4 != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg3 / 10^arg4 * s * t
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / 10^arg4 * s * t
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3 / 10^arg4 * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 / 10^arg4 * s * t
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2205 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            u = ceil32(return_data.size) + 192
                            v = (4 * ceil32(return_data.size)) + 352
                            while idx < _2205:
                                mem[v] = mem[u + 12 len 20]
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg3 / 10^arg4 * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2205) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                u = (2 * ceil32(return_data.size)) + 192
                                v = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value arg3 / 10^arg4 * s * t wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = arg3 / 10^arg4 * s * t
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _2204 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                u = (2 * ceil32(return_data.size)) + 192
                                v = (4 * ceil32(return_data.size)) + 352
                                while idx < _2204:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      arg3 / 10^arg4 * s * t,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2204) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = arg3 / 10^arg4 * s * t
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = arg3 / 10^arg4 * s * t
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                u = (2 * ceil32(return_data.size)) + 192
                                v = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2178 = mem[64]
                                mem[mem[64]] = arg3 / 10^arg4 * s * t
                                mem[mem[64] + 32] = 64
                                _2203 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _2203:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _2178 + (32 * _2203) + -mem[64] + 96],
                else:
                    u = 10
                    v = 1
                    idx = arg4
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    mem[96] = 26
                    mem[128] = 'SafeMath: division by zero'
                    if not u * v:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not arg3 / u * v:
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = 0
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = 0
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = 0
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2488 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            s = ceil32(return_data.size) + 192
                            t = (4 * ceil32(return_data.size)) + 352
                            while idx < _2488:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  0,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2488) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = 0
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _2487 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 352
                                while idx < _2487:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      0,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2487) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = 0
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2480 = mem[64]
                                mem[mem[64]] = 0
                                mem[mem[64] + 32] = 64
                                _2486 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _2486:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _2480 + (32 * _2486) + -mem[64] + 96],
                    else:
                        if arg3 / u * v and s * t > -1 / arg3 / u * v:
                            revert with 0, 17
                        if not arg3 / u * v:
                            revert with 0, 18
                        if arg3 / u * v * s * t / arg3 / u * v != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if arg2 == ext_call.return_data[12 len 20]:
                            mem[ceil32(return_data.size) + 160] = 2
                            mem[ceil32(return_data.size) + 192] = arg1
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(return_data.size) + 224] = ext_call.return_data[12 len 20]
                            mem[(2 * ceil32(return_data.size)) + 260] = uniswapV2RouterAddress
                            mem[(2 * ceil32(return_data.size)) + 292] = arg3 / u * v * s * t
                            require ext_code.size(arg1)
                            call arg1.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 260 len ceil32(return_data.size) + 64]
                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[(4 * ceil32(return_data.size)) + 256] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 260] = arg3 / u * v * s * t
                            mem[(4 * ceil32(return_data.size)) + 292] = 0
                            mem[(4 * ceil32(return_data.size)) + 324] = 160
                            mem[(4 * ceil32(return_data.size)) + 420] = 2
                            idx = 0
                            w = ceil32(return_data.size) + 192
                            x = (4 * ceil32(return_data.size)) + 452
                            while idx < 2:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 356] = this.address
                            mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args arg3 / u * v * s * t, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 256] = arg3 / u * v * s * t
                            mem[(4 * ceil32(return_data.size)) + 288] = 64
                            _2485 = mem[ceil32(return_data.size) + 160]
                            mem[(4 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 160]
                            idx = 0
                            w = ceil32(return_data.size) + 192
                            x = (4 * ceil32(return_data.size)) + 352
                            while idx < _2485:
                                mem[x] = mem[w + 12 len 20]
                                idx = idx + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                                  arg3 / u * v * s * t,
                                                  64,
                                                  mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2485) + 32],
                        else:
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if arg1 == ext_call.return_data[12 len 20]:
                                mem[(2 * ceil32(return_data.size)) + 160] = 2
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = arg2
                                if block.timestamp > -301:
                                    revert with 0, 17
                                if block.timestamp + 300 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 260] = 32
                                    mem[(4 * ceil32(return_data.size)) + 292] = 27
                                    mem[(4 * ceil32(return_data.size)) + 324] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 256
                                       len (5 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 256] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 260] = 0
                                mem[(4 * ceil32(return_data.size)) + 292] = 128
                                mem[(4 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                w = (2 * ceil32(return_data.size)) + 192
                                x = (4 * ceil32(return_data.size)) + 420
                                while idx < 2:
                                    mem[x] = mem[w + 12 len 20]
                                    idx = idx + 1
                                    w = w + 32
                                    x = x + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 324] = this.address
                                mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 300
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value arg3 / u * v * s * t wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 256] = arg3 / u * v * s * t
                                mem[(4 * ceil32(return_data.size)) + 288] = 64
                                _2484 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                w = (2 * ceil32(return_data.size)) + 192
                                x = (4 * ceil32(return_data.size)) + 352
                                while idx < _2484:
                                    mem[x] = mem[w + 12 len 20]
                                    idx = idx + 1
                                    w = w + 32
                                    x = x + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      arg3 / u * v * s * t,
                                                      64,
                                                      mem[(4 * ceil32(return_data.size)) + 320 len (32 * _2484) + 32],
                            else:
                                mem[(2 * ceil32(return_data.size)) + 160] = 3
                                mem[(2 * ceil32(return_data.size)) + 192] = arg1
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 256] = arg2
                                mem[(4 * ceil32(return_data.size)) + 292] = uniswapV2RouterAddress
                                mem[(4 * ceil32(return_data.size)) + 324] = arg3 / u * v * s * t
                                require ext_code.size(arg1)
                                call arg1.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if block.timestamp > -121:
                                    revert with 0, 17
                                if block.timestamp + 120 < block.timestamp:
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 32
                                    mem[(4 * ceil32(return_data.size)) + 324] = 27
                                    mem[(4 * ceil32(return_data.size)) + 356] = 'SafeMath: addition overflow'
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 288
                                       len (7 * ceil32(return_data.size)) + 100
                                mem[(4 * ceil32(return_data.size)) + 288] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 292] = arg3 / u * v * s * t
                                mem[(4 * ceil32(return_data.size)) + 324] = 0
                                mem[(4 * ceil32(return_data.size)) + 356] = 160
                                mem[(4 * ceil32(return_data.size)) + 452] = 3
                                idx = 0
                                w = (2 * ceil32(return_data.size)) + 192
                                x = (4 * ceil32(return_data.size)) + 484
                                while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                                    mem[x] = mem[w + 12 len 20]
                                    idx = idx + 1
                                    w = w + 32
                                    x = x + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp + 120
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 576]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2477 = mem[64]
                                mem[mem[64]] = arg3 / u * v * s * t
                                mem[mem[64] + 32] = 64
                                _2483 = mem[(2 * ceil32(return_data.size)) + 160]
                                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 160]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 192
                                t = mem[64] + 96
                                while idx < _2483:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                                         mem[mem[64] len _2477 + (32 * _2483) + -mem[64] + 96],
}



}
