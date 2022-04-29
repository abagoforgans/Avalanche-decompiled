contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - initialize()
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor54;
array of struct stor55;
address owner;
address stor151;
address sub_d7f352e6Address;
mapping of uint8 stor153;
address stor154;
uint8 stor155; offset 160
address stor155;
uint16 stor156;
uint16 stor156; offset 16
uint16 stor156; offset 32
uint16 stor156; offset 48
uint16 stor156; offset 64
uint16 stor157;
uint16 stor157; offset 16
uint16 stor157; offset 32
uint16 stor157; offset 48
uint16 stor157; offset 64
uint16 stor158;
uint16 stor158; offset 16
uint16 stor158; offset 32
uint16 stor158; offset 48
uint16 stor158; offset 64
uint16 sub_eae268e7;
uint16 sub_fbc6acf3; offset 16
address dividendTrackerAddress; offset 32
uint256 maxSellTransactionAmount;
uint256 maxBuyTransactionAmount;
uint256 swapTokensAtAmount;
uint256 antiWhale;
uint256 buyBackUpperLimit;
uint16 stor165;
uint16 stor165; offset 16
uint16 stor165; offset 32
uint256 sub_a6a5b41e;
uint256 sub_70c45d7b;
uint8 swapEnabled; offset 16
uint8 sub_08fd3d05; offset 24
uint8 buyBackEnabled; offset 32
uint16 sub_f3de371d;
uint256 stor168; offset 32
uint256 stor168; offset 24
uint256 stor168; offset 16
mapping of uint8 stor169;
mapping of uint8 stor170;
mapping of uint8 stor171;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function sub_08fd3d05(?) {
    return bool(sub_08fd3d05)
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor153[arg1])
}

function dividendTracker() {
    return dividendTrackerAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor169[address(arg1)])
}

function maxBuyTransactionAmount() {
    return maxBuyTransactionAmount
}

function buyBackEnabled() {
    return bool(buyBackEnabled)
}

function AntiWhale() {
    return antiWhale
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_70c45d7b(?) {
    return sub_70c45d7b
}

function buyBackUpperLimit() {
    return buyBackUpperLimit
}

function owner() {
    return owner
}

function sub_a6a5b41e(?) {
    return sub_a6a5b41e
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor171[arg1])
}

function sub_d7f352e6(?) {
    return sub_d7f352e6Address
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

function sub_e550573d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor170[arg1])
}

function sub_eae268e7(?) {
    return sub_eae268e7
}

function sub_f3de371d(?) {
    return sub_f3de371d
}

function sub_fbc6acf3(?) {
    return sub_fbc6acf3
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeWalletLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    antiWhale = arg1
}

function changePreSalePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a6a5b41e = arg1
}

function setSwapTokensAmt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAtAmount = arg1
}

function setMaxBuyTxAMount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxBuyTransactionAmount = arg1
}

function buyFee() {
    return uint16(stor156.field_0), 
           uint16(stor156.field_0),
           uint16(stor156.field_0),
           uint16(stor156.field_0),
           uint16(stor156.field_64)
}

function sellFee() {
    return uint16(stor157.field_0), 
           uint16(stor157.field_0),
           uint16(stor157.field_0),
           uint16(stor157.field_0),
           uint16(stor157.field_64)
}

function setMaxSellTxAMount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxSellTransactionAmount = arg1
}

function sub_f90d625c(?) {
    return uint16(stor158.field_0), 
           uint16(stor158.field_0),
           uint16(stor158.field_0),
           uint16(stor158.field_0),
           uint16(stor158.field_64)
}

function setJumperFeeLimit(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eae268e7 = arg1
}

function changeInternalFee(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fbc6acf3 = arg1
}

function removeFromBlackList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor153[address(arg1)] = 0
}

function OpenTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor168.field_24) = Mask(232, 0, arg1)
}

function setSwapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor168.field_16) = Mask(240, 0, arg1)
}

function setBuyBackEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(224, 0, stor168.field_32) = Mask(224, 0, arg1)
}

function changeWallets(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154 = arg1
    address(stor155.field_0) = arg2
}

function setBuybackUpperLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    buyBackUpperLimit = 10^15 * arg1
}

function excludeFromLimits(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor170[address(arg1)] = uint8(arg2)
    emit ExcludeFromLimits(arg2, arg1);
}

function getClaimWait() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x6f2789ec with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    staticcall dividendTrackerAddress.0x85a6b3ae with:
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

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xbc4c4b37 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_89cd72f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151 == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EPS: The router already has that address'
    emit 0x4aee3245: address(arg1), stor151
    stor151 = address(arg1)
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 == bool(stor169[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EPS: Account is already the value of 'excluded''
    stor169[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addToBlackList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 153
        stor153[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getAccountDividendsInfoAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x5183d6fd with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xfbcbc0f1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_d7f352e6Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'EPS: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor171[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'EPS: Automated market maker pair is already set to that value'
    stor171[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.0x31e79db0 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 169
        stor169[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 192
    t = arg1 + 36
    while idx < arg1.length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=mem[192 len 32 * arg1.length]), arg2);
}

function setBuyFees(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4, uint16 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor156.field_0) = arg1
    uint16(stor156.field_16) = arg2
    uint16(stor156.field_32) = arg3
    uint16(stor156.field_48) = arg4
    uint16(stor156.field_64) = arg5
    if uint16(stor156.field_0) > -uint16(stor156.field_16) + 65535:
        revert with 0, 17
    if uint16(uint16(stor156.field_16) + uint16(stor156.field_0)) > -uint16(stor156.field_32) + 65535:
        revert with 0, 17
    if uint16(uint16(stor156.field_32) + uint16(uint16(stor156.field_16) + uint16(stor156.field_0))) > -uint16(stor156.field_48) + 65535:
        revert with 0, 17
    if uint16(uint16(stor156.field_48) + uint16(uint16(stor156.field_32) + uint16(uint16(stor156.field_16) + uint16(stor156.field_0)))) > -uint16(stor156.field_64) + 65535:
        revert with 0, 17
    uint16(stor165.field_0) = uint16(uint16(stor156.field_64) + uint16(uint16(stor156.field_48) + uint16(uint16(stor156.field_32) + uint16(uint16(stor156.field_16) + uint16(stor156.field_0)))))
}

function setSellFees(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4, uint16 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor157.field_0) = arg1
    uint16(stor157.field_16) = arg2
    uint16(stor157.field_32) = arg3
    uint16(stor157.field_48) = arg4
    uint16(stor157.field_64) = arg5
    if uint16(stor157.field_0) > -uint16(stor157.field_16) + 65535:
        revert with 0, 17
    if uint16(uint16(stor157.field_16) + uint16(stor157.field_0)) > -uint16(stor157.field_32) + 65535:
        revert with 0, 17
    if uint16(uint16(stor157.field_32) + uint16(uint16(stor157.field_16) + uint16(stor157.field_0))) > -uint16(stor157.field_48) + 65535:
        revert with 0, 17
    if uint16(uint16(stor157.field_48) + uint16(uint16(stor157.field_32) + uint16(uint16(stor157.field_16) + uint16(stor157.field_0)))) > -uint16(stor157.field_64) + 65535:
        revert with 0, 17
    uint16(stor165.field_16) = uint16(uint16(stor157.field_64) + uint16(uint16(stor157.field_48) + uint16(uint16(stor157.field_32) + uint16(uint16(stor157.field_16) + uint16(stor157.field_0)))))
}

function setJumperFees(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4, uint16 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint16(stor158.field_0) = arg1
    uint16(stor158.field_16) = arg2
    uint16(stor158.field_32) = arg3
    uint16(stor158.field_48) = arg4
    uint16(stor158.field_64) = arg5
    if uint16(stor158.field_0) > -uint16(stor158.field_16) + 65535:
        revert with 0, 17
    if uint16(uint16(stor158.field_16) + uint16(stor158.field_0)) > -uint16(stor158.field_32) + 65535:
        revert with 0, 17
    if uint16(uint16(stor158.field_32) + uint16(uint16(stor158.field_16) + uint16(stor158.field_0))) > -uint16(stor158.field_48) + 65535:
        revert with 0, 17
    if uint16(uint16(stor158.field_48) + uint16(uint16(stor158.field_32) + uint16(uint16(stor158.field_16) + uint16(stor158.field_0)))) > -uint16(stor158.field_64) + 65535:
        revert with 0, 17
    uint16(stor165.field_32) = uint16(uint16(stor158.field_64) + uint16(uint16(stor158.field_48) + uint16(uint16(stor158.field_32) + uint16(uint16(stor158.field_16) + uint16(stor158.field_0)))))
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EPS: The dividend tracker already has that address'
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args stor151
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args 57005
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdateDividendTracker(arg1, dividendTrackerAddress);
    dividendTrackerAddress = arg1
    if 1 == bool(stor171[stor152]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'EPS: Automated market maker pair is already set to that value'
    stor171[stor152] = 1
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args sub_d7f352e6Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(sub_d7f352e6Address, 1);
}

function triggerBuyBack(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor155.field_160) = 1
    require ext_code.size(stor151)
    staticcall stor151.0x73b295c2 with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    if block.timestamp > -301:
        revert with 0, 17
    if block.timestamp + 300 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    mem[ceil32(return_data.size) + 324] = 2
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = 57005
    mem[ceil32(return_data.size) + 292] = block.timestamp + 300
    require ext_code.size(stor151)
    call stor151.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, 57005, block.timestamp + 300, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192] = arg1
    idx = 0
    s = 128
    t = ceil32(return_data.size) + 288
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit SwapETHForTokens(arg1, Array(len=2, data=mem[ceil32(return_data.size) + 288 len 64]));
    uint8(stor155.field_160) = 0
}

function name() {
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor54.length):
            if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor54.length):
                if 31 < uint255(stor54.length) * 0.5:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor54.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        else:
            if bool(stor54.length) == stor54.length.field_1 < 32:
                revert with 0, 34
            if stor54.length.field_1:
                if 31 < stor54.length.field_1:
                    mem[128] = uint256(stor54.field_0)
                    idx = 128
                    s = 0
                    while stor54.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor54[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)])
                mem[128] = 256 * stor54.length.field_8
        mem[ceil32(uint255(stor54.length) * 0.5) + 192 len ceil32(uint255(stor54.length) * 0.5)] = mem[128 len ceil32(uint255(stor54.length) * 0.5)]
        if ceil32(uint255(stor54.length) * 0.5) > uint255(stor54.length) * 0.5:
            mem[ceil32(uint255(stor54.length) * 0.5) + (uint255(stor54.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor54.length), data=mem[128 len ceil32(uint255(stor54.length) * 0.5)], mem[(2 * ceil32(uint255(stor54.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor54.length) * 0.5)]), 
    if bool(stor54.length) == stor54.length.field_1 < 32:
        revert with 0, 34
    if bool(stor54.length):
        if bool(stor54.length) == uint255(stor54.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor54.length):
            if 31 < uint255(stor54.length) * 0.5:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while (uint255(stor54.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    else:
        if bool(stor54.length) == stor54.length.field_1 < 32:
            revert with 0, 34
        if stor54.length.field_1:
            if 31 < stor54.length.field_1:
                mem[128] = uint256(stor54.field_0)
                idx = 128
                s = 0
                while stor54.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor54[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)])
            mem[128] = 256 * stor54.length.field_8
    mem[ceil32(stor54.length.field_1) + 192 len ceil32(stor54.length.field_1)] = mem[128 len ceil32(stor54.length.field_1)]
    if ceil32(stor54.length.field_1) > stor54.length.field_1:
        mem[ceil32(stor54.length.field_1) + stor54.length.field_1 + 192] = 0
    return Array(len=stor54.length % 128, data=mem[128 len ceil32(stor54.length.field_1)], mem[(2 * ceil32(stor54.length.field_1)) + 192 len 2 * ceil32(stor54.length.field_1)]), 
}

function symbol() {
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor55.length):
            if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor55.length):
                if 31 < uint255(stor55.length) * 0.5:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor55.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        else:
            if bool(stor55.length) == stor55.length.field_1 < 32:
                revert with 0, 34
            if stor55.length.field_1:
                if 31 < stor55.length.field_1:
                    mem[128] = uint256(stor55.field_0)
                    idx = 128
                    s = 0
                    while stor55.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor55[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)])
                mem[128] = 256 * stor55.length.field_8
        mem[ceil32(uint255(stor55.length) * 0.5) + 192 len ceil32(uint255(stor55.length) * 0.5)] = mem[128 len ceil32(uint255(stor55.length) * 0.5)]
        if ceil32(uint255(stor55.length) * 0.5) > uint255(stor55.length) * 0.5:
            mem[ceil32(uint255(stor55.length) * 0.5) + (uint255(stor55.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor55.length), data=mem[128 len ceil32(uint255(stor55.length) * 0.5)], mem[(2 * ceil32(uint255(stor55.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor55.length) * 0.5)]), 
    if bool(stor55.length) == stor55.length.field_1 < 32:
        revert with 0, 34
    if bool(stor55.length):
        if bool(stor55.length) == uint255(stor55.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor55.length):
            if 31 < uint255(stor55.length) * 0.5:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while (uint255(stor55.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    else:
        if bool(stor55.length) == stor55.length.field_1 < 32:
            revert with 0, 34
        if stor55.length.field_1:
            if 31 < stor55.length.field_1:
                mem[128] = uint256(stor55.field_0)
                idx = 128
                s = 0
                while stor55.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor55[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)])
            mem[128] = 256 * stor55.length.field_8
    mem[ceil32(stor55.length.field_1) + 192 len ceil32(stor55.length.field_1)] = mem[128 len ceil32(stor55.length.field_1)]
    if ceil32(stor55.length.field_1) > stor55.length.field_1:
        mem[ceil32(stor55.length.field_1) + stor55.length.field_1 + 192] = 0
    return Array(len=stor55.length % 128, data=mem[128 len ceil32(stor55.length.field_1)], mem[(2 * ceil32(stor55.length.field_1)) + 192 len 2 * ceil32(stor55.length.field_1)]), 
}

function transferBeforeSale(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_08fd3d05:
        revert with 0, 'Pre sale has ended'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 and sub_a6a5b41e > -1 / arg3:
        revert with 0, 17
    if arg3 * sub_a6a5b41e > msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of ether is lower than price x quantity'
    if arg3 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if balanceOf[stor101] < 10^9 * arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance of owner has been exhausted'
    if stor153[address(arg2)]:
        revert with 0, ' recipient is black listed'
    if not 10^9 * arg3:
        if 10^9 * arg3 < 0:
            revert with 0, 17
        if not owner:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor101] < 10^9 * arg3:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor101] += -1 * 10^9 * arg3
        if balanceOf[arg2] > !(10^9 * arg3):
            revert with 0, 17
        balanceOf[arg2] += 10^9 * arg3
        emit Transfer((10^9 * arg3), owner, arg2);
    else:
        if 10^9 * arg3 and sub_f3de371d > -1 / 10^9 * arg3:
            revert with 0, 17
        if not 10^9 * arg3:
            revert with 0, 18
        if 10^9 * arg3 * sub_f3de371d / 10^9 * arg3 != sub_f3de371d:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10^9 * arg3 < 10^9 * arg3 * sub_f3de371d / 100:
            revert with 0, 17
        if not owner:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor101] < (10^9 * arg3) - (10^9 * arg3 * sub_f3de371d / 100):
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor101] = balanceOf[stor101] - (10^9 * arg3) + (10^9 * arg3 * sub_f3de371d / 100)
        if balanceOf[arg2] > !((10^9 * arg3) - (10^9 * arg3 * sub_f3de371d / 100)):
            revert with 0, 17
        balanceOf[arg2] = balanceOf[arg2] + (10^9 * arg3) - (10^9 * arg3 * sub_f3de371d / 100)
        emit Transfer(((10^9 * arg3) - (10^9 * arg3 * sub_f3de371d / 100)), owner, arg2);
    if not 10^9 * arg3:
        if not owner:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor101] < 0:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        if balanceOf[arg1] > -1:
            revert with 0, 17
        emit Transfer(0, owner, arg1);
    else:
        if 10^9 * arg3 and sub_70c45d7b > -1 / 10^9 * arg3:
            revert with 0, 17
        if not 10^9 * arg3:
            revert with 0, 18
        if 10^9 * arg3 * sub_70c45d7b / 10^9 * arg3 != sub_70c45d7b:
            revert with 0, 'SafeMath: multiplication overflow'
        if not owner:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[stor101] < 10^9 * arg3 * sub_70c45d7b / 100:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[stor101] -= 10^9 * arg3 * sub_70c45d7b / 100
        if balanceOf[arg1] > !(10^9 * arg3 * sub_70c45d7b / 100):
            revert with 0, 17
        balanceOf[arg1] += 10^9 * arg3 * sub_70c45d7b / 100
        emit Transfer((10^9 * arg3 * sub_70c45d7b / 100), owner, arg1);
    if not msg.value:
        call arg1 with:
             gas 2300 wei
    else:
        if msg.value and sub_70c45d7b > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if msg.value * sub_70c45d7b / msg.value != sub_70c45d7b:
            revert with 0, 'SafeMath: multiplication overflow'
        call arg1 with:
           value msg.value * sub_70c45d7b / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.value:
        if msg.value < 0:
            revert with 0, 17
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        if msg.value and sub_70c45d7b > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if msg.value * sub_70c45d7b / msg.value != sub_70c45d7b:
            revert with 0, 'SafeMath: multiplication overflow'
        if msg.value < msg.value * sub_70c45d7b / 100:
            revert with 0, 17
        call owner with:
           value msg.value - (msg.value * sub_70c45d7b / 100) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
