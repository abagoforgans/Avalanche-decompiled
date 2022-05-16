contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const totalSupply = 1000000000 * 10^18

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor6;
uint256 stor8;
address stor12;
address stor13;
address stor14;
uint8 stor15; offset 160
uint8 stor15; offset 168
uint128 stor15; offset 184
address stor15;
uint256 stor15;
uint256 sub_5a94a02a;
uint256 sub_bb70e46c;
uint256 sub_7d84e378;
uint256 sub_b1d19bf7;
uint8 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;

function sub_029d377a(?) {
    return bool(stor20)
}

function sub_2c3a825f(?) {
    return bool(stor20)
}

function sub_5a94a02a(?) {
    return sub_5a94a02a
}

function sub_7d84e378(?) {
    return sub_7d84e378
}

function owner() {
    return owner
}

function sub_b1d19bf7(?) {
    return sub_b1d19bf7
}

function sub_bb70e46c(?) {
    return sub_bb70e46c
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor22 = arg1
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function setTokensToSwap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
}

function delBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function setCooldownEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(72, 0, stor15.field_184) = Mask(72, 0, arg1)
}

function sub_5a16db81(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5a94a02a = arg1
    sub_bb70e46c = arg2
    sub_7d84e378 = arg3
    sub_b1d19bf7 = arg4
    if arg1:
        stor20 = 0
    if not sub_5a94a02a:
        stor20 = 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor8 / 1000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor2[address(arg1)] / stor8 / 1000000000 * 10^18)
}

function manualsend() {
    require msg.sender == stor12
    call stor12 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor13 with:
       value eth.balance(this.address) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function setBots(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function manualswap() {
    require msg.sender == stor12
    if stor2[address(this.address)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if not stor8 / 1000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    uint8(stor15.field_168) = 1
    mem[320] = this.address
    require ext_code.size(stor14)
    staticcall stor14.0x73b295c2 with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor14:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor14] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
    emit Approval((stor2[address(this.address)] / stor8 / 1000000000 * 10^18), this.address, stor14);
    mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor8 / 1000000000 * 10^18
    idx = 0
    s = ceil32(return_data.size) + 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor14)
    call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor15.field_168) = 0
}

function openTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor15.field_160):
        revert with 0, 'trading is already open'
    stor14 = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(this.address)][0x60ae616a2155ee3d9a68541ba4544862310933d4] = 1000000000 * 10^18
    emit Approval(1000000000 * 10^18, this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4);
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    address(stor15.field_0) = ext_call.return_data[12 len 20]
    if stor2[address(this.address)] > stor8:
        revert with 0, 'Amount must be less than total reflections'
    if not stor8 / 1000000000 * 10^18:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(stor14)
    call stor14.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), stor2[address(this.address)] / stor8 / 1000000000 * 10^18, 0, 0, owner, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    stor21 = 20000000 * 10^18
    stor22 = 20000000 * 10^18
    uint256(stor15.field_0) = 16842753
    require ext_code.size(address(stor15.field_0))
    call address(stor15.field_0).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor14, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
