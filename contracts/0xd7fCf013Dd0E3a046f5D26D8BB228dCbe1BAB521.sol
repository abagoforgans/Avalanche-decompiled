contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const totalSupply = 10^16

const decimals = 9

const symbol = '', 0

const sub_bc7a2898(?) = 0xbf919525b1bd565e29ab61d33ebd2194


address owner;
address lockedLiquidityAddress;
address devWalletAddress;
address marketingWalletAddress;
address buybackWalletAddress;
mapping of uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor8;
mapping of uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
uint256 maxWalletSize;
uint256 sub_44f74b7c;
uint256 sub_0969a7d3;
uint256 sub_62df4527;
uint256 sub_727fde75;
uint256 sub_3bb9c962;
uint256 sub_80a4aebd;
uint256 sub_ed27be12;
uint256 sub_a8657eac;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 sub_0326730f;
uint256 sub_4f127b30;
uint256 stor31; offset 32
uint256 sub_b7c318e8;
uint256 sub_6264fdf4;
uint256 sub_5e213fd8;
uint256 sub_d2bc7012;
address stor35;
uint256 stor36;
address stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 maxTxAmount;
uint256 numTokensSellToAddToLiquidity;
uint256 stor46;
uint256 stor47;
uint256 stor48;
uint256 sub_e30dec1d;
uint256 totalDevFeesCollected;
uint256 stor51;
uint256 stor52;
uint256 stor53;
uint256 stor54;
uint256 stor55;
uint256 stor56;
uint8 tradingOpen;
uint8 swapAndLiquifyEnabled; offset 8
address uniswapV2RouterAddress; offset 24
uint256 stor57; offset 8
address uniswapV2PairAddress;

function sub_0326730f(?) {
    return sub_0326730f
}

function sub_0969a7d3(?) {
    return sub_0969a7d3
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_3bb9c962(?) {
    return sub_3bb9c962
}

function sub_44f74b7c(?) {
    return sub_44f74b7c
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function sub_4f127b30(?) {
    return sub_4f127b30
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function sub_5e213fd8(?) {
    return sub_5e213fd8
}

function sub_6264fdf4(?) {
    return sub_6264fdf4
}

function sub_62df4527(?) {
    return sub_62df4527
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_727fde75(?) {
    return sub_727fde75
}

function marketingWallet() {
    return marketingWalletAddress
}

function sub_80a4aebd(?) {
    return sub_80a4aebd
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function devWallet() {
    return devWalletAddress
}

function maxWalletSize() {
    return maxWalletSize
}

function sub_a8657eac(?) {
    return sub_a8657eac
}

function lockedLiquidity() {
    return lockedLiquidityAddress
}

function sub_b7c318e8(?) {
    return sub_b7c318e8
}

function totalDevFeesCollected() {
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the dev wallet owner'
    return totalDevFeesCollected
}

function numTokensSellToAddToLiquidity() {
    return numTokensSellToAddToLiquidity
}

function sub_d2bc7012(?) {
    return sub_d2bc7012
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function buybackWallet() {
    return buybackWalletAddress
}

function sub_e30dec1d(?) {
    if marketingWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the marketing wallet owner'
    return sub_e30dec1d
}

function sub_ea2357e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[address(arg1)])
}

function sub_ed27be12(?) {
    return sub_ed27be12
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function tradingOpen() {
    return bool(tradingOpen)
}

function getJackpot() {
    return stor48, stor28
}

function sub_6e5c3dcc(?) {
    return stor54, stor56
}

function sub_89c4485e(?) {
    return stor35, stor36
}

function sub_9c2a7879(?) {
    return stor53, stor55
}

function sub_dcdd93c7(?) {
    return stor51, stor52
}

function sub_297a8dee(?) {
    return stor41, stor42, stor43
}

function sub_5313a10c(?) {
    return stor37, stor38, stor39, stor40
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingOpen = 1
}

function sub_f0b73e11(?) {
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return stor46, stor47, stor48
}

function sub_b56b8931(?) {
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return stor25, stor26, stor27, stor28
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = arg1
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    numTokensSellToAddToLiquidity = arg1
    emit 0x60fdf54b: arg1
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor57 = Mask(248, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function getBuyTax() {
    if sub_44f74b7c > !sub_0969a7d3:
        revert with 0, 17
    if sub_44f74b7c + sub_0969a7d3 > !sub_62df4527:
        revert with 0, 17
    if sub_44f74b7c + sub_0969a7d3 + sub_62df4527 > !sub_727fde75:
        revert with 0, 17
    return (sub_44f74b7c + sub_0969a7d3 + sub_62df4527 + sub_727fde75)
}

function getSellTax() {
    if sub_3bb9c962 > !sub_80a4aebd:
        revert with 0, 17
    if sub_3bb9c962 + sub_80a4aebd > !sub_ed27be12:
        revert with 0, 17
    if sub_3bb9c962 + sub_80a4aebd + sub_ed27be12 > !sub_a8657eac:
        revert with 0, 17
    return (sub_3bb9c962 + sub_80a4aebd + sub_ed27be12 + sub_a8657eac)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
        revert with 0, 'Address is already authorized'
    stor5[address(arg1)] = 1
    emit AuthorizationGranted(arg1);
}

function setUniswapPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    uniswapV2PairAddress = arg1
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not stor9[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = arg1
        stor8[stor8.length].field_160 = 0
        stor9[address(arg1)] = stor8.length
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 < 10^13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Max wallet size must be at least 0.1% of the total supply'
    maxWalletSize = arg1
    emit 0x93ca5ab8: arg1
}

function excludeFromSwapAndLiquify(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor11[address(arg1)]:
        stor10.length++
        stor10[stor10.length].field_0 = arg1
        stor10[stor10.length].field_160 = 0
        stor11[address(arg1)] = stor10.length
}

function setDevWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    emit 0x2a22d8de: devWalletAddress, arg1
    devWalletAddress = arg1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is already NOT authorized'
    stor5[address(arg1)] = 0
    emit AuthorizationRevoked(arg1);
}

function setBuybackWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    emit 0x3b6e60c5: buybackWalletAddress, arg1
    buybackWalletAddress = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 < 10^13:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Maximum transaction limit can't be less than 0.1% of the total supply'
    maxTxAmount = arg1
    emit MaxTransferAmountChanged(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    stor5[address(arg1)] = 1
    emit OwnershipTransferred(owner, arg1);
}

function setMarketingWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must supply a non-zero address'
    emit MarketingWalletChanged(marketingWalletAddress, arg1);
    marketingWalletAddress = arg1
}

function setLockedLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1 - lockedLiquidityAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The same liquidity address is used'
    emit 0x1e611235: lockedLiquidityAddress, arg1
    lockedLiquidityAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_3522a741(?) {
    if stor48 and sub_0326730f > -1 / stor48:
        revert with 0, 17
    if stor48 * sub_0326730f / 10000 and sub_4f127b30 > -1 / stor48 * sub_0326730f / 10000:
        revert with 0, 17
    if stor28 and sub_0326730f > -1 / stor28:
        revert with 0, 17
    if stor28 * sub_0326730f / 10000 and sub_4f127b30 > -1 / stor28 * sub_0326730f / 10000:
        revert with 0, 17
    return stor48 * sub_0326730f / 10000 * sub_4f127b30 / 10000, stor28 * sub_0326730f / 10000 * sub_4f127b30 / 10000
}

function sub_aa927704(?) {
    if marketingWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the marketing wallet owner'
    if sub_e30dec1d > !stor46:
        revert with 0, 17
    sub_e30dec1d += stor46
    call marketingWalletAddress with:
       value stor46 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7d78cd1a: stor46
    stor46 = 0
}

function collectDevFees() {
    if devWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the dev wallet owner'
    if totalDevFeesCollected > !stor47:
        revert with 0, 17
    totalDevFeesCollected += stor47
    call devWalletAddress with:
       value stor47 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DevFeesCollected(stor47);
    stor47 = 0
}

function sub_ac83e481(?) {
    require calldata.size - 4 >= 32
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 < 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot timespan needs to be between 30 and 1200 seconds (20 minutes)'
    if arg1 > 1200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot timespan needs to be between 30 and 1200 seconds (20 minutes)'
    sub_6264fdf4 = arg1
    emit 0x643b4858: arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total fees can not exceed the declared limit'
    sub_44f74b7c = arg1
    sub_0969a7d3 = arg2
    sub_62df4527 = arg3
    sub_727fde75 = arg4
    emit 0x18a7569a: arg1, arg2, arg3, arg4
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total fees can not exceed the declared limit'
    sub_3bb9c962 = arg1
    sub_80a4aebd = arg2
    sub_ed27be12 = arg3
    sub_a8657eac = arg4
    emit 0x5323944a: arg1, arg2, arg3, arg4
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_e26e3e8b(?) {
    if 10000 < sub_4f127b30:
        revert with 0, 17
    if stor48 and sub_0326730f > -1 / stor48:
        revert with 0, 17
    if stor48 * sub_0326730f / 10000 and -sub_4f127b30 + 10000 > -1 / stor48 * sub_0326730f / 10000:
        revert with 0, 17
    if 10000 < sub_4f127b30:
        revert with 0, 17
    if stor28 and sub_0326730f > -1 / stor28:
        revert with 0, 17
    if stor28 * sub_0326730f / 10000 and -sub_4f127b30 + 10000 > -1 / stor28 * sub_0326730f / 10000:
        revert with 0, 17
    return (10000 * stor48 * sub_0326730f / 10000) - (sub_4f127b30 * stor48 * sub_0326730f / 10000) / 10000, 
           (10000 * stor28 * sub_0326730f / 10000) - (sub_4f127b30 * stor28 * sub_0326730f / 10000) / 10000
}

function sub_8571c441(?) payable {
    require calldata.size - 4 >= 32
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have enough tokens to fund the jackpot'
    if stor48 > !msg.value:
        revert with 0, 17
    stor48 += msg.value
    if arg1:
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 17
        balanceOf[address(msg.sender)] -= arg1
        if balanceOf[this.address] > !arg1:
            revert with 0, 17
        balanceOf[address(this.address)] = balanceOf[this.address] + arg1
        emit Transfer(arg1, msg.sender, this.address);
        if stor28 > !arg1:
            revert with 0, 17
        stor28 += arg1
    emit 0x33399ec7: msg.value, arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor9[address(arg1)]:
        if stor9[address(arg1)] < 1:
            revert with 0, 17
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 != stor9[address(arg1)] - 1:
            if stor8.length - 1 >= stor8.length:
                revert with 0, 50
            if stor9[address(arg1)] - 1 >= stor8.length:
                revert with 0, 50
            stor8[stor9[address(arg1)]].field_0 = stor8[stor8.length].field_0
            stor9[stor8[stor8.length].field_0] = stor9[address(arg1)]
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length].field_0 = 0
        stor8.length--
        stor9[address(arg1)] = 0
}

function sub_68aee4e7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11[address(arg1)]:
        if stor11[address(arg1)] < 1:
            revert with 0, 17
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 != stor11[address(arg1)] - 1:
            if stor10.length - 1 >= stor10.length:
                revert with 0, 50
            if stor11[address(arg1)] - 1 >= stor10.length:
                revert with 0, 50
            stor10[stor11[address(arg1)]].field_0 = stor10[stor10.length].field_0
            stor11[stor10[stor10.length].field_0] = stor11[address(arg1)]
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length].field_0 = 0
        stor10.length--
        stor11[address(arg1)] = 0
}

function sub_7baafb36(?) {
    require calldata.size - 4 >= 96
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 < 4000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot cashout percentage needs to be between 40% and 70%'
    if arg1 > 7000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot cashout percentage needs to be between 40% and 70%'
    if arg2 < 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot buyer share percentage needs to be between 50% and 100%'
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot buyer share percentage needs to be between 50% and 100%'
    if arg3 < 5 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot min buy needs to be between 0.05 and 0.5 BNB'
    if arg3 > 5 * 10^17:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot min buy needs to be between 0.05 and 0.5 BNB'
    sub_0326730f = arg1
    sub_4f127b30 = arg2
    sub_b7c318e8 = arg3
    emit 0x8cf24119: arg1, arg2, arg3
}

function sub_0733e389(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _24 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _25 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require (32 * _25) + _24 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _25)] = mem[ceil32(return_data.size) + _24 + 224 len ceil32(32 * _25)]
    if 1 >= _25:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_2e51dc95(?) {
    require calldata.size - 4 >= 32
    if not -sub_b7c318e8:
        return 1
    mem[96] = 2
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = sub_b7c318e8
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args sub_b7c318e8, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 192 len 4], stor31
    require mem[ceil32(return_data.size) + 192 len 4], stor31 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 223 < ceil32(return_data.size) + return_data.size + 192
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], stor31 + 192]
    require (32 * _27) + _26 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _27)] = mem[ceil32(return_data.size) + _26 + 224 len ceil32(32 * _27)]
    if 1 >= _27:
        revert with 0, 50
    if mem[(2 * ceil32(return_data.size)) + 256] and 9975 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    mem[mem[64]] = arg1 >= 9975 * mem[(2 * ceil32(return_data.size)) + 256] / 10000
    return memory
      from mem[64]
       len 32
}

function sub_4dabdcc6(?) {
    require calldata.size - 4 >= 64
    if not stor5[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg1 < 3000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot hard buyback percentage needs to be between 30% and 70%'
    if arg1 > 7000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Jackpot hard buyback percentage needs to be between 30% and 70%'
    sub_d2bc7012 = arg1
    mem[96] = 2
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _36 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193
    require (32 * _36) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _36)] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 224 len ceil32(32 * _36)]
    if 1 >= _36:
        revert with 0, 50
    if mem[(2 * ceil32(return_data.size)) + 256] < 3 * 10^10:
        revert with 0, 'Jackpot hard value limit for the big bang needs to be between 30K and 250K USD'
    if mem[(2 * ceil32(return_data.size)) + 256] > 25 * 10^10:
        revert with 0, 'Jackpot hard value limit for the big bang needs to be between 30K and 250K USD'
    sub_5e213fd8 = arg2
    emit 0xb125ae3c: sub_d2bc7012, arg2
}



}
