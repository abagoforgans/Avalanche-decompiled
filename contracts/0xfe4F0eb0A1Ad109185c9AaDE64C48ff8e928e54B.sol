contract main {




// =====================  Runtime code  =====================


const vbzrxTokenAddress = 0

const wethToken = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const bzrxTokenAddress = 0


address owner;
address priceFeedsAddress;
address swapsImplAddress;
mapping of address logicTargets;
mapping of struct loans;
mapping of struct loanParams;
mapping of struct lenderOrders;
mapping of struct borrowerOrders;
mapping of uint8 stor9;
mapping of struct lenderInterest;
mapping of struct loanInterest;
mapping of uint256 stor12;
array of struct stor13;
address feesControllerAddress;
uint256 lendingFeePercent;
mapping of uint256 lendingFeeTokensHeld;
mapping of uint256 lendingFeeTokensPaid;
uint256 tradingFeePercent;
mapping of uint256 tradingFeeTokensHeld;
mapping of uint256 tradingFeeTokensPaid;
uint256 borrowingFeePercent;
mapping of uint256 borrowingFeeTokensHeld;
mapping of uint256 borrowingFeeTokensPaid;
uint256 protocolTokenHeld;
uint256 protocolTokenPaid;
uint256 affiliateFeePercent;
mapping of uint256 liquidationIncentivePercent;
mapping of address loanPoolToUnderlying;
mapping of address underlyingToLoanPool;
mapping of uint8 stor37;
uint256 maxDisagreement;
uint256 sourceBufferPercent;
uint256 maxSwapSize;

function borrowerOrders(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return borrowerOrders[arg1][arg2].field_0, 
           borrowerOrders[arg1][arg2].field_256,
           borrowerOrders[arg1][arg2].field_512,
           borrowerOrders[arg1][arg2].field_768,
           borrowerOrders[arg1][arg2].field_1024,
           borrowerOrders[arg1][arg2].field_1280
}

function logicTargets(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return logicTargets[arg1]
}

function underlyingToLoanPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return underlyingToLoanPool[arg1]
}

function tradingFeePercent() {
    return tradingFeePercent
}

function protocolTokenPaid() {
    return protocolTokenPaid
}

function lenderOrders(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return lenderOrders[arg1][arg2].field_0, 
           lenderOrders[arg1][arg2].field_256,
           lenderOrders[arg1][arg2].field_512,
           lenderOrders[arg1][arg2].field_768,
           lenderOrders[arg1][arg2].field_1024,
           lenderOrders[arg1][arg2].field_1280
}

function tradingFeeTokensPaid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tradingFeeTokensPaid[arg1]
}

function delegatedManagers(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor9[arg1][arg2])
}

function lendingFeeTokensHeld(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lendingFeeTokensHeld[arg1]
}

function lendingFeePercent() {
    return lendingFeePercent
}

function maxSwapSize() {
    return maxSwapSize
}

function loanInterest(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return loanInterest[arg1].field_0, loanInterest[arg1].field_256, loanInterest[arg1].field_512
}

function lenderInterest(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return lenderInterest[arg1][arg2].field_0, 
           lenderInterest[arg1][arg2].field_256,
           lenderInterest[arg1][arg2].field_512,
           lenderInterest[arg1][arg2].field_768,
           lenderInterest[arg1][arg2].field_1024
}

function supportedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor37[arg1])
}

function sourceBufferPercent() {
    return sourceBufferPercent
}

function swapsImpl() {
    return swapsImplAddress
}

function priceFeeds() {
    return priceFeedsAddress
}

function protocolTokenHeld() {
    return protocolTokenHeld
}

function owner() {
    return owner
}

function loanPoolToUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return loanPoolToUnderlying[arg1]
}

function lendingFeeTokensPaid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lendingFeeTokensPaid[arg1]
}

function affiliateFeePercent() {
    return affiliateFeePercent
}

function borrowingFeeTokensPaid(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return borrowingFeeTokensPaid[arg1]
}

function borrowingFeeTokensHeld(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return borrowingFeeTokensHeld[arg1]
}

function loans(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return loans[arg1].field_0, 
           loans[arg1].field_256,
           loans[arg1].field_512,
           loans[arg1].field_768,
           loans[arg1].field_1024,
           loans[arg1].field_1280,
           loans[arg1].field_1536,
           loans[arg1].field_1792,
           loans[arg1].field_2048,
           loans[arg1].field_2304,
           loans[arg1].field_2560,
           bool(loans[arg1].field_2720)
}

function loanParams(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return loanParams[arg1].field_0, 
           bool(loanParams[arg1].field_256),
           loanParams[arg1].field_256,
           loanParams[arg1].field_512,
           loanParams[arg1].field_768,
           loanParams[arg1].field_1024,
           loanParams[arg1].field_1280,
           loanParams[arg1].field_1536
}

function maxDisagreement() {
    return maxDisagreement
}

function tradingFeeTokensHeld(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tradingFeeTokensHeld[arg1]
}

function getTarget(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return logicTargets[Mask(32, 224, sha3(arg1[all]))]
}

function feesController() {
    return feesControllerAddress
}

function borrowingFeePercent() {
    return borrowingFeePercent
}

function liquidationIncentivePercent(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return liquidationIncentivePercent[arg1][arg2]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function replaceContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[164 len 64] = initialize(address rg1), address(arg1) << 64, 0, mem[164 len 28]
    delegate arg1.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    if not delegate.return_code:
        revert with 0, 'setup failed'
}

function _fallback() payable {
    if gas_remaining <= 2300:
    if not logicTargets[call.func_hash]:
        revert with 0, 'target not active'
    delegate logicTargets[call.func_hash] with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function setTargets(string[] arg1, address[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2.length != arg1.length:
        revert with 0, 'count mismatch'
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 32 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 32] = 0
        _23 = mem[64]
        mem[mem[64]] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        mem[64] = cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + mem[64] + 32
        _25 = sha3(mem[_23 + 32 len mem[_23]])
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[0] = Mask(32, 224, sha3(mem[_23 + 32 len mem[_23]]))
        logicTargets[mem[0]] = address(cd[((32 * idx) + arg2 + 36)])
        mem[0] = Mask(32, 224, _25)
        mem[32] = 12
        if address(cd[((32 * idx) + arg2 + 36)]):
            if not stor12[Mask(32, 224, _25)]:
                stor13.length++
                stor13[stor13.length].field_0 = 0
                stor13[stor13.length].field_224 = Mask(32, 224, _25) >> 224
                mem[0] = Mask(32, 224, _25)
                mem[32] = 12
                stor12[Mask(32, 224, _25)] = stor13.length + 1
        else:
            if stor12[Mask(32, 224, _25)]:
                if stor12[Mask(32, 224, _25)] - 1 != stor13.length - 1:
                    require stor13.length - 1 < stor13.length
                    require stor12[Mask(32, 224, _25)] - 1 < stor13.length
                    stor13[stor12[Mask(32, 224, _25)]].field_0 = stor13[stor13.length].field_0
                    stor12[stor13[stor13.length].field_0] = stor12[Mask(32, 224, _25)]
                mem[32] = 12
                stor12[Mask(32, 224, _25)] = 0
                require stor13.length
                mem[0] = 13
                stor13[stor13.length].field_0 = 0
                stor13.length--
        idx = idx + 1
        continue 
}



}
