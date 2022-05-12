contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Arcade Capital', 0

const totalSupply = 1500 * 10^18

const decimals = 9

const symbol = 'AC', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
address stor12;
address stor13;
address stor14;
address stor15;
uint128 stor16; offset 176
uint128 stor16; offset 168
uint128 stor16; offset 160

function owner() {
    return owner
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

function includeToFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor12
    stor5[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor12
    stor5[address(arg1)] = 1
}

function setTaxFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor12
    require arg1 <= 25
    stor8 = arg1
}

function setTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor12
    require arg1 <= 25
    stor9 = arg1
}

function setCCCWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor13
    stor13 = arg1
    stor5[stor13] = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRoyaltyWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor14
    stor14 = arg1
    stor5[stor14] = 1
}

function setTreasuryWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor12
    stor12 = arg1
    stor5[stor12] = 1
}

function setCanSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor16.field_168) = Mask(88, 0, arg1)
}

function setTradingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor16.field_160) = Mask(96, 0, arg1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor6 / 1500 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / 1500 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor6 / 1500 * 10^18)
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

function manualsend() {
    require msg.sender == stor12
    call stor14 with:
       value eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) < eth.balance(this.address) / 100:
        revert with 'NH{q', 17
    call stor12 with:
       value eth.balance(this.address) - (eth.balance(this.address) / 100) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor13 with:
       value eth.balance(this.address) - (eth.balance(this.address) / 100) / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function manualswap() {
    require msg.sender == stor12
    if stor2[address(this.address)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor6 / 1500 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / 1500 * 10^18:
        revert with 'NH{q', 18
    Mask(80, 0, stor16.field_176) = 1
    mem[320] = this.address
    require ext_code.size(stor15)
    staticcall stor15.0x73b295c2 with:
            gas gas_remaining wei
    mem[384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[352] = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not stor15:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor15] = stor2[address(this.address)] / stor6 / 1500 * 10^18
    emit Approval((stor2[address(this.address)] / stor6 / 1500 * 10^18), this.address, stor15);
    mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor6 / 1500 * 10^18
    idx = 0
    s = 320
    t = ceil32(return_data.size) + 580
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor15)
    call stor15.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args stor2[address(this.address)] / stor6 / 1500 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(80, 0, stor16.field_176) = 0
}



}
