contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0


address owner;
address stor1;
uint256 unlockTime;
address routerAddress;
address pairAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address dividendTrackerAddress; offset 8
address marketingFeeReceiverAddress;
address liquidityWalletAddress;
uint256 swapTokensAtAmount;
uint256 rewardsFee;
uint256 liquidityFee;
uint256 marketingFee;
uint256 totalFees;
uint256 sub_bb8d5131;
uint256 sellLiquidityFee;
uint256 sellMarketingFee;
uint256 sellTotalFees;
uint256 sub_77a3b609;
uint256 buyLiquidityFee;
uint256 buyMarketingFee;
uint256 buyTotalFees;
uint256 maxTransactionAmount;
uint256 maxWallet;
uint8 tradingActive; offset 160
uint8 swapEnabled; offset 168
uint16 stor26; offset 160
uint128 stor26; offset 168
address defaultTokenAddress;
uint256 gasForProcessing;
mapping of uint8 stor28;
mapping of uint8 stor29;

function _isExcludedMaxTransactionAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor29[arg1])
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function rewardsFee() {
    return rewardsFee
}

function dividendTracker() {
    return dividendTrackerAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor28[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function sellTotalFees() {
    return sellTotalFees
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function defaultToken() {
    return defaultTokenAddress
}

function sub_77a3b609(?) {
    return sub_77a3b609
}

function buyMarketingFee() {
    return buyMarketingFee
}

function getOwner() {
    return owner
}

function sellMarketingFee() {
    return sellMarketingFee
}

function liquidityFee() {
    return liquidityFee
}

function gasForProcessing() {
    return gasForProcessing
}

function pair() {
    return pairAddress
}

function sub_bb8d5131(?) {
    return sub_bb8d5131
}

function tradingActive() {
    return bool(tradingActive)
}

function maxTransactionAmount() {
    return maxTransactionAmount
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function buyTotalFees() {
    return buyTotalFees
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function buyLiquidityFee() {
    return buyLiquidityFee
}

function sellLiquidityFee() {
    return sellLiquidityFee
}

function router() {
    return routerAddress
}

function maxWallet() {
    return maxWallet
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, '!OWNER'
    uint16(stor26.field_160) = 257
}

function setDefaultToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    defaultTokenAddress = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    Mask(88, 0, stor26.field_168) = Mask(88, 0, arg1)
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor28[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function sub_a4e13071(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function excludeFromMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor29[address(arg1)] = uint8(arg2)
    emit ExcludedMaxTransactionAmount(arg2, arg1);
}

function unsetRewardToken() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.unsetRewardToken(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getClaimWait() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.claimWait() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f7baf3c5(?) {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function getTotalDividendsDistributed() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfDividendTokenHolders() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getDividendTokensMinimum() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.minimumTokenBalanceForDividends() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function includeInDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xc0f306ef with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBNBDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xb882d59c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3012fd7b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x212929fb with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.holderBalance(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateMaxWalletAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 <= totalSupply / 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set maxWallet lower than 1%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    maxWallet = 10^9 * arg1
}

function updateBuyFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyMarketingFee = arg1
    sub_77a3b609 = arg2
    buyLiquidityFee = arg3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 > !arg1:
        revert with 0, 17
    buyTotalFees = arg2 + arg3 + arg1
    if 20 < arg2 + arg3 + arg1:
        revert with 0, 'Must keep fees at 20% or less'
}

function updateSellFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMarketingFee = arg1
    sub_bb8d5131 = arg2
    sellLiquidityFee = arg3
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 > !arg1:
        revert with 0, 17
    sellTotalFees = arg2 + arg3 + arg1
    if 20 < arg2 + arg3 + arg1:
        revert with 0, 'Must keep fees at 20% or less'
}

function updateMaxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if 10^9 * arg1 <= totalSupply / 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot set maxTransactionAmount lower than 0.5%'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    maxTransactionAmount = 10^9 * arg1
}

function processDividendTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1, 0, tx.origin);
}

function getUserHasCustomRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xaa9582d3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getUserCurrentRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xaddee51e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function updateMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if marketingFeeReceiverAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '$HEIST: The operations wallet is already this address'
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor28[stor9] = 1
    emit ExcludeFromFees(1, marketingFeeReceiverAddress);
    marketingFeeReceiverAddress = arg1
}

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if liquidityWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '$HEIST: The liquidity wallet is already this address'
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor28[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    emit LiquidityWalletUpdated(arg1, liquidityWalletAddress);
    liquidityWalletAddress = arg1
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'gasForProcessing must be between 200,000 and 500,000'
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot update gasForProcessing to same value'
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function setRewardToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is a wallet, not a contract.'
    if not ext_code.hash(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address is a wallet, not a contract.'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set reward token as this token due to Router limitations.'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.setRewardToken(address arg1, address arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function updateSwapTokensAtAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg1 >= totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Swap amount cannot be higher than total supply.'
    if totalSupply > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if arg1 < 5 * totalSupply / 100000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Swap amount cannot be lower than 0.005% total supply.'
    if totalSupply > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if arg1 > 5 * totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Swap amount cannot be higher than 0.5% total supply.'
    swapTokensAtAmount = arg1
    return 1
}



}
