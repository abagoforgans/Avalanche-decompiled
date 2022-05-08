contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address sub_29918b01Address;
address sub_95e206deAddress;
uint256 stor7;
address dividendTrackerAddress;
address sub_526a9a93Address;
address routerAddress;
address pairAddress;
uint256 stor12;
uint256 maxWalletAmount;
uint256 maxBuyAmount;
uint256 maxSellAmount;
uint8 sub_4aa5028b;
uint256 swapThreshold;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint8 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint8 stor29;
address stor29;
address stor29; offset 16
uint256 gasForProcessing;
mapping of uint8 stor31;

function swapThreshold() {
    return swapThreshold
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_29918b01(?) {
    return sub_29918b01Address
}

function dividendTracker() {
    return dividendTrackerAddress
}

function sub_4aa5028b(?) {
    return bool(sub_4aa5028b)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function sub_526a9a93(?) {
    return sub_526a9a93Address
}

function maxSellAmount() {
    return maxSellAmount
}

function isExcludedFromMaxWallet(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function maxBuyAmount() {
    return maxBuyAmount
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_95e206de(?) {
    return address(sub_95e206deAddress)
}

function gasForProcessing() {
    return gasForProcessing
}

function pairAddress() {
    return address(pairAddress)
}

function maxWalletAmount() {
    return maxWalletAmount
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor31[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function router() {
    return routerAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function _fallback() payable {
    revert
}

function buyFees() {
    return stor21, stor22, stor23, stor24
}

function sellFees() {
    return stor25, stor26, stor27, stor28
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_eadb43c9(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_4aa5028b = uint8(arg1)
}

function sub_4d75867c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor18[address(arg1)] = uint8(arg2)
}

function sub_5698526f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor19[address(arg1)] = uint8(arg2)
}

function setSwapThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    swapThreshold = arg1
}

function sub_bba5547f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor20[address(arg1)] = uint8(arg2)
}

function getSumOfBuyFees() {
    if stor22 + stor21 < stor21:
        revert with 0, 'SafeMath: addition overflow'
    if stor23 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stor24 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (stor24 + stor23 + stor22 + stor21)
}

function getSumOfSellFees() {
    if stor26 + stor25 < stor25:
        revert with 0, 'SafeMath: addition overflow'
    if stor27 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if stor28 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (stor28 + stor27 + stor26 + stor25)
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

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getLastProcessedIndex() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xe7841ec0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyback(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_526a9a93Address)
    call sub_526a9a93Address.0x79a9fa1c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x794f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMaxWalletAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x7343616e6e6f7420736574206d61782077616c6c657420616d6f756e7420746f206c657373207468616e20302e3125206f662074686520746f74616c20737570706c,
                    mem[230 len 30]
    maxWalletAmount = arg1
}

function setBuyFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 + arg2 + arg3 + arg4 > 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7353756d206f66206275792066656573206d6179206e6f74206265206f766572203330,
                    mem[199 len 29]
    stor21 = arg1
    stor22 = arg2
    stor23 = arg3
    stor24 = arg4
}

function setSellFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 + arg2 + arg3 + arg4 > 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2553756d206f662073656c6c2066656573206d6179206e6f74206265206f766572203330,
                    mem[200 len 28]
    stor25 = arg1
    stor26 = arg2
    stor27 = arg3
    stor28 = arg4
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 == owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f4d61726b6574696e672077616c6c65742063616e6e6f7420626520746865206f776e65,
                    mem[200 len 28]
    address(stor29.field_16) = arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor19[address(arg1)] = 1
    stor20[address(stor29.field_0)] = 1
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getAccountDividendsInfoAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccountAtIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setMaxTransactionAmounts(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x7943616e6e6f742073656c6c206d61782062757920746f206c657373207468616e20302e3125206f662074686520746f74616c20737570706c,
                    mem[221 len 7]
    if arg2 < totalSupply / 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x7243616e6e6f742073656c6c206d61782073656c6c20746f206c657373207468616e20302e3125206f662074686520746f74616c20737570706c,
                    mem[222 len 6]
    maxBuyAmount = arg1
    maxSellAmount = arg2
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_5e1fa39c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734e65772074696d65207374616b696e672068656c70657220616464726573732063616e6e6f74206265207a6572,
                    mem[210 len 18]
    if sub_29918b01Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x7343616e6e6f7420736574207468652074696d65207374616b696e672068656c706572206164647265737320746f207468652073616d652076616c75,
                    mem[224 len 4]
    sub_29918b01Address = arg1
    require ext_code.size(arg1)
    staticcall arg1.staking() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7))
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x79676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030,
                    mem[216 len 12]
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x79676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030,
                    mem[216 len 12]
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6543616e6e6f742075706461746520676173466f7250726f63657373696e6720746f2073616d652076616c75,
                    mem[208 len 20]
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if address(pairAddress) == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x65546865207061697220616464726573732063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d616b657250616972,
                    mem[229 len 31]
    if arg2 == bool(stor31[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x734175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[220 len 8]
    stor31[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.0x31e79db0 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function launch() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uint8(stor29.field_0):
        revert with 0, 'Token has already launched'
    if balanceOf[address(this.address)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65496e73756666696369656e7420746f6b656e2062616c616e636520666f7220696e697469616c206c69717569646974,
                    mem[212 len 16]
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x74496e73756666696369656e742076616c75652073656e7420666f7220696e697469616c206c69717569646974,
                    mem[209 len 19]
    require ext_code.size(routerAddress)
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    if 1 == bool(stor31[ext_call.return_data[12 len 20]]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x734175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[220 len 8]
    stor31[address(ext_call.return_data[0])] = 1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(address(ext_call.return_data[0]), 1);
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not routerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(this.address)][stor11] = -1
    emit Approval(-1, this.address, routerAddress);
    require ext_code.size(routerAddress)
    call routerAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, balanceOf[address(this.address)], 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    sub_4aa5028b = 1
    swapThreshold = totalSupply / 500
    uint8(stor29.field_0) = 1
}



}
