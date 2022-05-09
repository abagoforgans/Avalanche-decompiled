contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'test', 0

const totalSupply = 2000 * 10^18

const decimals = 9

const symbol = 'test', 0


address owner;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 allowance;
mapping of uint8 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor9;
address stor12;
address stor13;
address stor14;
uint128 stor15; offset 176
uint128 stor15; offset 168
uint128 stor15; offset 160
mapping of uint8 stor16;
array of address stor17;

function owner() {
    return owner
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[address(arg1)])
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketingWallet(address arg1) {
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
    Mask(88, 0, stor15.field_168) = Mask(88, 0, arg1)
}

function setTradingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor15.field_160) = Mask(96, 0, arg1)
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
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16[address(arg1)]:
        return stor3[address(arg1)]
    if stor2[address(arg1)] > stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    if stor6 / 2000 * 10^18 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor6 / 2000 * 10^18:
        revert with 'NH{q', 18
    return (stor2[address(arg1)] / stor6 / 2000 * 10^18)
}

function excludeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor2[address(arg1)] > 0:
        if stor2[address(arg1)] > stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        if stor6 / 2000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor6 / 2000 * 10^18:
            revert with 'NH{q', 18
        stor3[address(arg1)] = stor2[address(arg1)] / stor6 / 2000 * 10^18
    stor16[address(arg1)] = 1
    stor17.length++
    stor17[stor17.length] = arg1
}

function includeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor16[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor17.length:
        mem[0] = 17
        if stor17[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor17.length < 1:
            revert with 'NH{q', 17
        if stor17.length - 1 >= stor17.length:
            revert with 'NH{q', 50
        if idx >= stor17.length:
            revert with 'NH{q', 50
        stor17[idx] = stor17[stor17.length]
        stor3[address(arg1)] = 0
        stor16[address(arg1)] = 0
        if not stor17.length:
            revert with 'NH{q', 49
        stor17[stor17.length] = 0
        stor17.length--
}

function manualswap() {
    require msg.sender == stor12
    if stor16[address(this.address)]:
        Mask(80, 0, stor15.field_176) = 1
        mem[128] = this.address
        staticcall stor14.0x73b295c2 with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        if not stor14:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(this.address)][stor14] = stor3[address(this.address)]
        emit Approval(stor3[address(this.address)], this.address, stor14);
        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = stor3[address(this.address)]
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor14)
        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args stor3[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
    else:
        if stor2[address(this.address)] > stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        if stor6 / 2000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor6 / 2000 * 10^18:
            revert with 'NH{q', 18
        Mask(80, 0, stor15.field_176) = 1
        mem[320] = this.address
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
        allowance[address(this.address)][stor14] = stor2[address(this.address)] / stor6 / 2000 * 10^18
        emit Approval((stor2[address(this.address)] / stor6 / 2000 * 10^18), this.address, stor14);
        mem[ceil32(return_data.size) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 388] = stor2[address(this.address)] / stor6 / 2000 * 10^18
        idx = 0
        s = 320
        t = ceil32(return_data.size) + 580
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor14)
        call stor14.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args stor2[address(this.address)] / stor6 / 2000 * 10^18, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 580 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(80, 0, stor15.field_176) = 0
}



}
