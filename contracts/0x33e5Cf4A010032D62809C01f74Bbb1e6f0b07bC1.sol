contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'testing', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = 'tst', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint8 stor16;
mapping of uint256 sub_7f2feddc;
address stor18;
address stor19;
address joeRouter02Address;
uint128 stor21; offset 176
uint128 stor21; offset 168
uint128 stor21; offset 160
address joePairAddress;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 _swapTokensAtAmount;

function _swapTokensAtAmount() {
    return _swapTokensAtAmount
}

function JoeRouter02() {
    return joeRouter02Address
}

function joePair() {
    return joePairAddress
}

function _maxTxAmount() {
    return _maxTxAmount
}

function sub_7f2feddc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7f2feddc[arg1]
}

function owner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function bots(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxTxnAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function unblockBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 0
}

function setMaxWalletSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxWalletSize = arg1
}

function setMinSwapTokensThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _swapTokensAtAmount = arg1
}

function toggleSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor21.field_176) = Mask(80, 0, arg1)
}

function setTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor21.field_160) = Mask(96, 0, arg1)
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = arg1
    stor10 = arg2
    stor9 = arg3
    stor11 = arg4
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

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor6 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / 1000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor6 / 1000 * 10^18)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function blockBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        stor16[mem[(32 * idx) + 140 len 20]] = 1
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function manualsend() {
    if stor18 != msg.sender:
        require msg.sender == stor19
    if not eth.balance(this.address):
        if 0 > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if eth.balance(this.address) < 0:
            revert with 'NH{q', 17
        call stor18 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor19 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if eth.balance(this.address) and 16 > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if not eth.balance(this.address):
            revert with 'NH{q', 18
        if 16 * eth.balance(this.address) / eth.balance(this.address) != 16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 16 * eth.balance(this.address) / 100 > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if eth.balance(this.address) < 16 * eth.balance(this.address) / 100:
            revert with 'NH{q', 17
        call stor18 with:
           value 16 * eth.balance(this.address) / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor19 with:
           value eth.balance(this.address) - (16 * eth.balance(this.address) / 100) wei
             gas 2300 * is_zero(value) wei
}

function manualswap() {
    if stor18 != msg.sender:
        require msg.sender == stor19
    if stor2[address(this.address)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor6 / 1000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / 1000 * 10^18:
        revert with 'NH{q', 18
    Mask(88, 0, stor21.field_168) = 1
    mem[320] = this.address
    staticcall joeRouter02Address.WAVAX() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not joeRouter02Address:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor20] = stor2[address(this.address)] / stor6 / 1000 * 10^18
    emit Approval((stor2[address(this.address)] / stor6 / 1000 * 10^18), this.address, joeRouter02Address);
    mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor6 / 1000 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouter02Address)
    call joeRouter02Address.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor6 / 1000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor21.field_168) = 0
}



}
