contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - airdrop(address[] arg1, uint256[] arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const totalSupply = 1000 * 10^18

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address stor8;
uint256 stor9;
mapping of uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address sub_2ae894baAddress;
address sub_3e7cffd9Address;
address uniswapV2RouterAddress;
uint8 stor23; offset 160
uint8 tradingActive; offset 176
address uniswapV2PairAddress;
uint256 _maxTxAmount;
uint256 _maxWalletSize;
uint256 _swapTokensAtAmount;

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_2ae894ba(?) {
    return sub_2ae894baAddress
}

function _swapTokensAtAmount() {
    return _swapTokensAtAmount
}

function sub_3e7cffd9(?) {
    return sub_3e7cffd9Address
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function _isExcludedMaxTxAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function _maxTxAmount() {
    return _maxTxAmount
}

function owner() {
    return owner
}

function _maxWalletSize() {
    return _maxWalletSize
}

function tradingActive() {
    return bool(tradingActive)
}

function bots(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxTxAmount = arg1
}

function setMaxWalletSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _maxWalletSize = arg1
}

function setMinSwapTokensThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _swapTokensAtAmount = arg1
}

function unblockBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function excludeFromMaxTxAmount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
}

function sub_8aec071f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_3e7cffd9Address:
        revert with 0, '_growth cannot be 0'
    stor5[address(arg1)] = 0
    stor5[stor21] = 1
    emit 0x396eeb40: sub_3e7cffd9Address
}

function sub_90bd58da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_2ae894baAddress:
        revert with 0, '_YWRLDTreasury cannot be 0'
    stor5[address(arg1)] = 0
    stor5[stor20] = 1
    emit 0xec3d6dfe: sub_2ae894baAddress
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
    if stor2[address(arg1)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor9 / 1000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor9 / 1000 * 10^18)
}

function setFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
    stor13 = arg3
    stor14 = arg2
    stor15 = arg4
    if arg1 > !arg3:
        revert with 0, 17
    require arg1 + arg3 <= 25
    if stor14 > !stor15:
        revert with 0, 17
    require stor14 + stor15 <= 25
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

function manualSend() {
    if sub_2ae894baAddress != msg.sender:
        require msg.sender == sub_3e7cffd9Address
    call sub_2ae894baAddress with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sub_3e7cffd9Address with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function includeInReflection(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Account is not excluded from reflection'
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 >= stor8.length:
            revert with 0, 50
        if idx >= stor8.length:
            revert with 0, 50
        stor8[idx] = stor8[stor8.length]
        stor3[address(arg1)] = 0
        stor7[address(arg1)] = 0
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length] = 0
        stor8.length--
}

function blockBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function excludeFromReflection(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if 1 > !stor8.length:
        revert with 0, 17
    if stor8.length + 1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
    if stor2[address(arg1)]:
        if stor2[address(arg1)] > stor9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        if not stor9 / 1000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        stor3[address(arg1)] = stor2[address(arg1)] / stor9 / 1000 * 10^18
    stor7[address(arg1)] = 1
    stor8.length++
    stor8[stor8.length] = arg1
}

function manualSwap() {
    require msg.sender == sub_2ae894baAddress
    if stor2[address(this.address)] > stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor9 / 1000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    stor23 = 1
    mem[320] = this.address
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor22] = stor2[address(this.address)] / stor9 / 1000 * 10^18
    emit Approval((stor2[address(this.address)] / stor9 / 1000 * 10^18), this.address, uniswapV2RouterAddress);
    mem[ceil32(return_data.size) + 384] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor9 / 1000 * 10^18
    idx = 0
    s = ceil32(return_data.size) + 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor9 / 1000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor23 = 0
}



}
