contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const decimals = 2

const symbol = ''


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
address stor5;
address stor6;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 totalFee;
uint256 stor20;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor23;
uint256 stor24;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint8 sub_7321f3e3;
address stor28; offset 8
uint256 stor29;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor30; offset 16
uint8 swapEnabled;
uint256 swapThreshold;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function totalFee() {
    return totalFee
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function sub_7321f3e3(?) {
    return bool(sub_7321f3e3)
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function sub_7d41d40a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sub_7321f3e3 = uint8(arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor2[address(arg1)] = uint8(arg2)
}

function setMaxWalletPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    _maxWalletToken = totalSupply * arg1 / 100
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor29 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
    stor24 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor13[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor30 = Mask(240, 16, arg1) >> 16
}

function getCirculatingSupply() {
    if balanceOf[stor5] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor6] > totalSupply - balanceOf[stor5]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor5] - balanceOf[stor6])
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor28)
    call stor28.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    stor18 = arg3
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg3 + arg2 + arg1
    stor20 = arg4
    require totalFee < arg4 / 4
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor15[address(arg1)] = uint8(arg2)
    require ext_code.size(stor28)
    if not arg2:
        call stor28.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor28.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor5] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor6] > totalSupply - balanceOf[stor5]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor26]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor5] - balanceOf[stor6])
    if 2 * balanceOf[stor26] / balanceOf[stor26] != 2:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor5] - balanceOf[stor6])
    if 2 * balanceOf[stor26] * arg1 / arg1 != 2 * balanceOf[stor26]:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor26] * arg1 / totalSupply - balanceOf[stor5] - balanceOf[stor6])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor5] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor6] > totalSupply - balanceOf[stor5]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[stor26]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor5] - balanceOf[stor6] > arg1)
    if 2 * balanceOf[stor26] / balanceOf[stor26] != 2:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor5] - balanceOf[stor6] > arg1)
    if 2 * balanceOf[stor26] * arg2 / arg2 != 2 * balanceOf[stor26]:
        revert with 0, 32, 33, 0x70536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not totalSupply - balanceOf[stor5] - balanceOf[stor6]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[stor26] * arg2 / totalSupply - balanceOf[stor5] - balanceOf[stor6] > arg1)
}

function airdrop(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = cd[((32 * idx) + arg3 + 36)] + s
        continue 
    mem[0] = arg1
    mem[32] = 10
    if balanceOf[address(arg1)] < cd[((32 * arg2.length) + arg3 + 36)] * arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x734e6f7420656e6f75676820746f6b656e7320696e2077616c6c657420666f722061697264726f,
                    mem[203 len 25]
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 20
        mem[_63 + 32] = 'Insufficient Balance' << 96
        mem[32] = 10
        if cd[((32 * idx) + arg3 + 36)] > balanceOf[address(arg1)]:
            _65 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 20
            idx = 0
            while idx < 20:
                mem[idx + _65 + 68] = mem[idx + _63 + 32]
                idx = idx + 32
                continue 
            mem[_65 + 68] = mem[_65 + 80 len 20]
            revert with memory
              from mem[64]
               len _65 + -mem[64] + 100
        balanceOf[address(arg1)] -= cd[((32 * idx) + arg3 + 36)]
        if cd[((32 * idx) + arg3 + 36)] + balanceOf[address(cd[((32 * idx) + arg2 + 36)])] < balanceOf[address(cd[((32 * idx) + arg2 + 36)])]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)]
        mem[mem[64]] = cd[((32 * idx) + arg3 + 36)]
        emit Transfer(cd[((32 * idx) + arg3 + 36)], arg1, address(cd[((32 * idx) + arg2 + 36)]));
        require idx < arg2.length
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = 15
        if not stor15[address(cd[((32 * idx) + arg2 + 36)])]:
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 10
            mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
            require ext_code.size(stor28)
            call stor28.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), balanceOf[address(cd[((32 * idx) + arg2 + 36)])]
        idx = idx + 1
        continue 
    if not stor15[address(arg1)]:
        require ext_code.size(stor28)
        call stor28.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}



}
