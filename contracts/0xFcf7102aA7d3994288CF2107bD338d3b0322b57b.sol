contract main {




// =====================  Runtime code  =====================


#
#  - swapToETH(address arg1)
#  - swapQueuedToken()
#
const BASE = 10000


address owner;
address uniRouterAddress;
address routerAddress;
address sub_db72a539Address;
address WETHAddress;
address addr;
uint256 time;
address tokenQueuedAddress;
address tokenSwapToAddress;
uint256 queueDelay;
uint256 totalTries;
address feeGetterAddress;
address feeDiscountTokenAddress;
uint256 feeTokenBalanceNeeded;
uint256 feeDiscountRatio;
uint256 FEE;
uint256 totalETHSwapped;
uint256 totalETHFees;
array of struct stor19;
array of struct stor20;
mapping of uint256 addrSwapStats;
mapping of uint8 stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of uint8 stor25;

function FeeDiscountRatio() {
    return feeDiscountRatio
}

function time() {
    return time
}

function UniRouter() {
    return uniRouterAddress
}

function FeeDiscountToken() {
    return feeDiscountTokenAddress
}

function totalETHSwapped() {
    return totalETHSwapped
}

function FeeTokenBalanceNeeded() {
    return feeTokenBalanceNeeded
}

function feeGetter() {
    return feeGetterAddress
}

function totalETHFees() {
    return totalETHFees
}

function addrSwapStats(address arg1) {
    require calldata.size - 4 >= 32
    return addrSwapStats[arg1]
}

function addr() {
    return addr
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function tokenHasBurn(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor24[arg1])
}

function FEE() {
    return FEE
}

function tokenSwapTo() {
    return tokenSwapToAddress
}

function QueueDelay() {
    return queueDelay
}

function sub_db72a539(?) {
    return sub_db72a539Address
}

function totalTries() {
    return totalTries
}

function tokenTried(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor23[arg1])
}

function tokenQueued() {
    return tokenQueuedAddress
}

function router() {
    return routerAddress
}

function tokenSwappedSuccess(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor22[arg1])
}

function whitelistedExecutors(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor25[arg1])
}

function _fallback() payable {
    revert
}

function isQueueEmpty() {
    if not addr:
        return not addr
    return block.timestamp >= time
}

function getTimeLeftToTimeout() {
    if block.timestamp <= time:
        return 0
    if not time:
        return 0
    return (block.timestamp - time)
}

function clearQueueFromOwner() {
    require stor25[address(msg.sender)]
    time = 0
    addr = 0
    tokenQueuedAddress = addr
    emit QueueCleared(msg.sender);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setQueueDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    queueDelay = arg1
}

function setServicefee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    FEE = arg1
    emit ServiceFeeChanged(arg1);
}

function setFeeGetter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeGetterAddress = arg1
    emit FeeGetterChanged(arg1);
}

function addWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = 1
    emit AddedWhitelistAddr(arg1);
}

function revokeWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = 0
    emit RevokedWhitelistAddr(arg1);
}

function setFeeDiscountRatio(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeDiscountRatio = arg1
    emit DiscountTokenRatioChanged(arg1);
}

function setFeeDiscountToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeDiscountTokenAddress = arg1
    emit DiscountTokenChanged(arg1);
}

function setTokensForFeeDiscount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeTokenBalanceNeeded = arg1
    emit DiscountTokenBalanceChanged(arg1);
}

function queue(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if addr:
        if block.timestamp < time:
            revert with 0, 'Queue Full'
    addr = msg.sender
    time = block.timestamp + queueDelay
    tokenQueuedAddress = arg1
    tokenSwapToAddress = arg2
    totalTries++
    emit TokenQueued(addr, tokenQueuedAddress, block.timestamp);
}

function getWETHBalance() {
    require ext_code.size(0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4)
    delegate 0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4.getTokenBalance(address arg1) with:
         gas gas_remaining wei
        args WETHAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function isAwaitingSwap() {
    if not tokenQueuedAddress:
        return not not tokenQueuedAddress
    require ext_code.size(0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4)
    delegate 0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4.getTokenBalance(address arg1) with:
         gas gas_remaining wei
        args tokenQueuedAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function shouldClearQueue() {
    if addr:
        if block.timestamp < time:
            return block.timestamp >= time
    if not tokenQueuedAddress:
        return not not tokenQueuedAddress
    require ext_code.size(0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4)
    delegate 0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4.getTokenBalance(address arg1) with:
         gas gas_remaining wei
        args tokenQueuedAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0] <= 0
}

function IsEligibleForFeeDiscount(address arg1) {
    require calldata.size - 4 >= 32
    if not feeDiscountTokenAddress:
        return not not feeDiscountTokenAddress
    require ext_code.size(0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4)
    delegate 0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4.getTokenBalanceOfAddr(address arg1, address arg2) with:
         gas gas_remaining wei
        args feeDiscountTokenAddress, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0] >= feeTokenBalanceNeeded
}

function recoverTokens(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        require msg.sender == addr
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25[address(arg1)] = 1
    emit AddedWhitelistAddr(arg1);
    stor25[address(msg.sender)] = 0
    emit RevokedWhitelistAddr(msg.sender);
}

function getUsers() {
    if not stor19.length:
        mem[(32 * stor19.length) + 128] = 32
        mem[(32 * stor19.length) + 160] = stor19.length
        mem[(32 * stor19.length) + 192 len floor32(stor19.length)] = mem[128 len floor32(stor19.length)]
        return memory
          from (32 * stor19.length) + 128
           len (96 * stor19.length) + 64
    mem[128] = address(stor19.field_0)
    idx = 128
    s = 0
    while (32 * stor19.length) + 96 > idx:
        mem[idx + 32] = stor19[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor19.length) + 192 len floor32(stor19.length)] = mem[128 len floor32(stor19.length)]
    return Array(len=stor19.length, data=mem[128 len floor32(stor19.length)], mem[(32 * stor19.length) + floor32(stor19.length) + 192 len (32 * stor19.length) - floor32(stor19.length)]), 
}

function getTokens() {
    if not stor20.length:
        mem[(32 * stor20.length) + 128] = 32
        mem[(32 * stor20.length) + 160] = stor20.length
        mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
        return memory
          from (32 * stor20.length) + 128
           len (96 * stor20.length) + 64
    mem[128] = address(stor20.field_0)
    idx = 128
    s = 0
    while (32 * stor20.length) + 96 > idx:
        mem[idx + 32] = stor20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
    return Array(len=stor20.length, data=mem[128 len floor32(stor20.length)], mem[(32 * stor20.length) + floor32(stor20.length) + 192 len (32 * stor20.length) - floor32(stor20.length)]), 
}

function checkPerm(address arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if arg1 == addr:
        if arg2 <= time:
            if arg3 == tokenQueuedAddress:
                if tokenSwapToAddress == arg4:
                    require ext_code.size(0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4)
                    delegate 0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4.getTokenBalance(address arg1) with:
                         gas gas_remaining wei
                        args arg3
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if delegate.return_data[0] > 0:
                        return (delegate.return_data[0] > 0)
    return bool(stor25[address(arg1)])
}

function getSendAfterFee(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not feeDiscountTokenAddress:
        if arg3 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg1 - arg3)
    require ext_code.size(0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4)
    delegate 0x16b6f7dc42f7628a54f86229f4c74c5e75774ae4.getTokenBalanceOfAddr(address arg1, address arg2) with:
         gas gas_remaining wei
        args feeDiscountTokenAddress, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < feeTokenBalanceNeeded:
        if arg3 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg1 - arg3)
    if not arg3:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return arg1
    require arg3
    if arg3 * feeDiscountRatio / arg3 != feeDiscountRatio:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg3 * feeDiscountRatio / 10000 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 - (arg3 * feeDiscountRatio / 10000))
}



}
