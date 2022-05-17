contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18

const getTime = block.timestamp


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address stor6;
uint256 unlockTime;
uint8 stor8;
address stor8;
address uniswapV2RouterAddress; offset 8
address uniswapV2PairAddress;
address liquidityWalletAddress;
address marketWalletAddress;
uint256 swapTokensAtAmount;
uint256 _maxTxAmount;
uint256 maxSellTransactionAmount;
uint256 sub_8c19b37b;
uint256 launchedAt;
uint256 launchedAtTime;
uint256 sub_030b7ca7;
mapping of uint8 stor20;
uint8 swapEnabled;
uint8 swapAndLiquifyEnabled; offset 8
uint256 stor21; offset 8
uint256 liquidityFee;
uint256 totalFees;
mapping of uint8 stor24;
mapping of uint8 stor26;
mapping of uint8 stor27;

function maxSellTransactionAmount() {
    return maxSellTransactionAmount
}

function sub_030b7ca7(?) {
    return sub_030b7ca7
}

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function _paused() {
    return bool(uint8(stor8.field_0))
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor24[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_8c19b37b(?) {
    return sub_8c19b37b
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function liquidityFee() {
    return liquidityFee
}

function launchedAtTime() {
    return launchedAtTime
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor26[arg1])
}

function launchedAt() {
    return launchedAt
}

function liquidityWallet() {
    return liquidityWalletAddress
}

function adminMap(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function marketWallet() {
    return marketWalletAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x738be007: owner, 0
    owner = 0
}

function sub_1dc0e3cb(?) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    sub_030b7ca7 = arg1
}

function sub_47c7d924(?) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    sub_8c19b37b = arg1
}

function sub_a90f44a8(?) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    launchedAtTime = arg1
}

function setLaunchedAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    launchedAt = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    _maxTxAmount = arg1
}

function setswapEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    swapEnabled = uint8(arg1)
}

function updatePaused(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    uint8(stor8.field_0) = uint8(arg1)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    stor21 = Mask(248, 0, arg1)
}

function setLiquidityFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    liquidityFee = arg1
    totalFees = arg1
}

function updateAdmin(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    stor27[address(arg1)] = uint8(arg2)
}

function setMaxSellTransactionAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    maxSellTransactionAmount = arg1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    stor20[address(arg1)] = uint8(arg2)
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = owner
    owner = 0
    unlockTime = arg1 + block.timestamp
    emit 0x738be007 
    emit 0x0 
    emit 0x0 
}

function Sweep(address arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if not eth.balance(this.address):
        revert with 0, 'Insufficient balance'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failure'
}

function unlock() {
    if stor6 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f6300,
                    mem[199 len 29]
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0x738be007: owner, stor6
    owner = stor6
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x738be007: owner, arg1
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if not arg1:
        revert with 0, 'This account is zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if arg2 == bool(stor24[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73506f6c6c656e3a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[214 len 14]
    stor24[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function sub_b87eaa1e(?) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x65506f6c6c656e3a2054686520726f7574657220616c726561647920686173207468617420616464726573,
                    mem[207 len 21]
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    uniswapV2PairAddress = arg2
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 24
        stor24[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]), arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xe045524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x2745524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    65,
                    0x65506f6c6c656e3a2054686520706169722063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d616b657250616972,
                    mem[229 len 31]
    if arg2 == bool(stor26[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    64,
                    0x73506f6c6c656e3a204175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75
    stor26[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function updateMarketWallet(address arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if marketWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73506f6c6c656e3a20546865206c69717569646974792077616c6c657420697320616c7265616479207468697320616464726573,
                    mem[216 len 12]
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if 1 == bool(stor24[stor11]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73506f6c6c656e3a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[214 len 14]
    stor24[stor11] = 1
    emit ExcludeFromFees(1, marketWalletAddress);
    marketWalletAddress = arg1
}

function updateLiquidityWallet(address arg1) {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if liquidityWalletAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x73506f6c6c656e3a20546865206c69717569646974792077616c6c657420697320616c7265616479207468697320616464726573,
                    mem[216 len 12]
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if 1 == bool(stor24[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73506f6c6c656e3a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[214 len 14]
    stor24[address(arg1)] = 1
    emit ExcludeFromFees(1, arg1);
    liquidityWalletAddress = arg1
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6543616e2774206c657420796f752074616b6520616c6c206e617469766520746f6b65,
                    mem[199 len 29]
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function claim(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 27
    if not stor27[msg.sender]:
        revert with 0, 'scaller is not admin'
    mem[96] = 2
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = ext_call.return_data[12 len 20]
    mem[160] = this.address
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _145 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _148 = mem[_145 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_145 + 192])] = mem[_145 + 224 len floor32(mem[_145 + 192])]
    mem[64] = (32 * _148) + ceil32(return_data.size) + 224
    if mem[ceil32(return_data.size) + 192] <= 0:
        revert with 0, 'delegate to claim fail'
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _274 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    if not mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]:
        if this.address == arg2:
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 392 len 28]
            if not uniswapV2RouterAddress:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 390 len 30]
            allowance[address(this.address)][address(stor8.field_0)] = 0
            emit Approval(0, this.address, uniswapV2RouterAddress);
            mem[(32 * _148) + ceil32(return_data.size) + 484 len 0] = None
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(arg3), block.timestamp, 2, mem[(32 * _148) + ceil32(return_data.size) + 484 len 64]
        else:
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 392 len 28]
            if not this.address:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 390 len 30]
            allowance[address(arg2)][address(this.address)] = 0
            emit Approval(0, arg2, this.address);
            if not arg2:
                revert with 0, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 393 len 27]
            if not this.address:
                revert with 0, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 391 len 29]
            if 0 > balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(32 * _148) + ceil32(return_data.size) + 358 len 26],
                            mem[(32 * _148) + ceil32(return_data.size) + 410 len 6]
            if balanceOf[this.address] < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = balanceOf[this.address]
            emit Transfer(0, arg2, this.address);
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 488 len 28]
            if not uniswapV2RouterAddress:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 486 len 30]
            allowance[address(this.address)][address(stor8.field_0)] = 0
            emit Approval(0, this.address, uniswapV2RouterAddress);
            mem[(32 * _148) + ceil32(return_data.size) + 580 len 0] = None
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 0, 0, 160, address(arg3), block.timestamp, 2, mem[(32 * _148) + ceil32(return_data.size) + 580 len 64]
    else:
        if 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] != 12:
            revert with 0, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _148) + ceil32(return_data.size) + 325 len 31]
        if this.address == arg2:
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 392 len 28]
            if not uniswapV2RouterAddress:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 390 len 30]
            allowance[address(this.address)][address(stor8.field_0)] = 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10
            emit Approval((12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10), this.address, uniswapV2RouterAddress);
            mem[(32 * _148) + ceil32(return_data.size) + 484 len 0] = None
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 12 * _274 / 10, 0, 160, address(arg3), block.timestamp, 2, mem[(32 * _148) + ceil32(return_data.size) + 484 len 64]
        else:
            if not arg2:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 392 len 28]
            if not this.address:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 390 len 30]
            allowance[address(arg2)][address(this.address)] = 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10
            emit Approval((12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10), arg2, this.address);
            if not arg2:
                revert with 0, 
                            32,
                            37,
                            0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 393 len 27]
            if not this.address:
                revert with 0, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 391 len 29]
            if 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10 > balanceOf[address(arg2)]:
                revert with 0, 
                            32,
                            38,
                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[(32 * _148) + ceil32(return_data.size) + 358 len 26],
                            mem[(32 * _148) + ceil32(return_data.size) + 410 len 6]
            balanceOf[address(arg2)] -= 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10
            if (12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10) + balanceOf[this.address] < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = (12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10) + balanceOf[this.address]
            emit Transfer((12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10), arg2, this.address);
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 488 len 28]
            if not uniswapV2RouterAddress:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[(32 * _148) + ceil32(return_data.size) + 486 len 30]
            allowance[address(this.address)][address(stor8.field_0)] = 12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10
            emit Approval((12 * mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224] / 10), this.address, uniswapV2RouterAddress);
            mem[(32 * _148) + ceil32(return_data.size) + 580 len 0] = None
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args 12 * _274 / 10, 0, 160, address(arg3), block.timestamp, 2, mem[(32 * _148) + ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
