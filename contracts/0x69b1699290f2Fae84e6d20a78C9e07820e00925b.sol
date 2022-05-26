contract main {




// =====================  Runtime code  =====================


const name = 'Penny DAO', 0

const decimals = 18

const symbol = 'APNY', 0


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address treasuryAddress;
uint256 price;
uint8 stor6;

function totalSupply() {
    return totalSupply
}

function isOpen() {
    return bool(stor6)
}

function treasury() {
    return treasuryAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor6 = uint8(arg1)
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    treasuryAddress = arg1
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

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint() payable {
    require stor6
    require msg.value > 0
    if msg.value and 10^18 > -1 / msg.value:
        revert with 'NH{q', 17
    if not price:
        revert with 'NH{q', 18
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -(10^18 * msg.value / price) - 1:
        revert with 'NH{q', 17
    totalSupply += 10^18 * msg.value / price
    if balanceOf[address(msg.sender)] > -(10^18 * msg.value / price) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 10^18 * msg.value / price
    emit Transfer((10^18 * msg.value / price), 0, msg.sender);
    if eth.balance(this.address) and 101 * 10^16 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    price = 101 * 10^16 * eth.balance(this.address) / totalSupply
}

function reset(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1 > 0
    require arg1 < price
    if totalSupply <= 0:
        price = arg1
    else:
        if balanceOf[stor3] and 10500 > -1 / balanceOf[stor3]:
            revert with 'NH{q', 17
        require 10500 * balanceOf[stor3] / 10000 > totalSupply
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if eth.balance(this.address) < totalSupply * arg1:
            revert with 'NH{q', 17
        call treasuryAddress with:
           value eth.balance(this.address) - (totalSupply * arg1) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) and 101 * 10^16 > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        price = 101 * 10^16 * eth.balance(this.address) / totalSupply
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor6
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    if price and 10000 > -1 / price:
        revert with 'NH{q', 17
    if arg1 and 10000 * price / 10100 > -1 / arg1:
        revert with 'NH{q', 17
    call treasuryAddress with:
       value arg1 * 10000 * price / 10100 / 10^18 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 * 10000 * price / 10100 / 10^18 < arg1 * 10000 * price / 10100 / 10^18 / 100:
        revert with 'NH{q', 17
    call msg.sender with:
       value (arg1 * 10000 * price / 10100 / 10^18) - (arg1 * 10000 * price / 10100 / 10^18 / 100) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 101 * 10^16 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    price = 101 * 10^16 * eth.balance(this.address) / totalSupply
}



}
