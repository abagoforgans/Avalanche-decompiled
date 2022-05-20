contract main {




// =====================  Runtime code  =====================


address owner;
uint256 maxTickets;
uint256 price;
uint256 sub_747a717c;
uint256 totalTicketsSold;
uint256 sub_052dd085;
address winnerAddress;
address sub_d714db6cAddress;
address sub_8ee2de2cAddress;
mapping of address winners;
uint8 stor10;
uint8 stor10; offset 8
uint256 stor10; offset 8

function sub_052dd085(?) {
    return sub_052dd085
}

function totalTicketsSold() {
    return totalTicketsSold
}

function sub_361c5259(?) {
    return bool(uint8(stor10.field_0))
}

function sub_747a717c(?) {
    return sub_747a717c
}

function owner() {
    return owner
}

function sub_8ee2de2c(?) {
    return sub_8ee2de2cAddress
}

function maxTickets() {
    return maxTickets
}

function price() {
    return price
}

function winners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return winners[arg1]
}

function sub_aef8b7eb(?) {
    return bool(uint8(stor10.field_8))
}

function sub_d714db6c(?) {
    return sub_d714db6cAddress
}

function winner() {
    return winnerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_10a3e8e2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(stor10.field_0)
    uint8(stor10.field_0) = 0
}

function sub_b118f356(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
}

function sub_845466fe(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(stor10.field_8)
    Mask(248, 0, stor10.field_8) = 0
}

function sub_b5b8cc47(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor10.field_8)
    Mask(248, 0, stor10.field_8) = 1
}

function sub_7a31cbf4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_747a717c = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function setMaxTickets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTickets = arg1
}

function startLotto() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
    if sub_052dd085 == -1:
        revert with 'NH{q', 17
    sub_052dd085++
}

function sub_375df52b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_d714db6cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'thou shall not pass, you are not the raffler'
    sub_d714db6cAddress = address(arg1)
}

function endLotto() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(stor10.field_0)
    if price and totalTicketsSold > -1 / price:
        revert with 'NH{q', 17
    emit 0xacfa0382: sub_052dd085, totalTicketsSold, price * totalTicketsSold
    uint8(stor10.field_0) = 0
    totalTicketsSold = 0
}

function withdrawAvax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7436a614(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_d714db6cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'thou shall not pass, you are not the raffler'
    require not winners[arg2]
    winners[arg2] = address(arg1)
    winnerAddress = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_f66545ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_8ee2de2cAddress)
    staticcall sub_8ee2de2cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_8ee2de2cAddress)
    call sub_8ee2de2cAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_746d89ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor10.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'thou shall not pass, buying tickets with Avax is turned off'
    require uint8(stor10.field_0)
    require arg1 > 0
    if totalTicketsSold > -arg1 - 1:
        revert with 'NH{q', 17
    if totalTicketsSold + arg1 > maxTickets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'thou shall not pass, try less tickets'
    if arg1 and sub_747a717c > -1 / arg1:
        revert with 'NH{q', 17
    if msg.value < arg1 * sub_747a717c:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'thou shall not pass, not enough AVAX sent'
    if totalTicketsSold > -arg1 - 1:
        revert with 'NH{q', 17
    totalTicketsSold += arg1
    emit 0x91f4d151: sub_052dd085, totalTicketsSold, arg1, msg.sender
}

function buyTickets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor10.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'thou shall not pass, lotto is not live'
    require arg1 > 0
    if totalTicketsSold > -arg1 - 1:
        revert with 'NH{q', 17
    if totalTicketsSold + arg1 > maxTickets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'thou shall not pass, try less tickets'
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    require ext_code.size(sub_8ee2de2cAddress)
    call sub_8ee2de2cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), price * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalTicketsSold > -arg1 - 1:
        revert with 'NH{q', 17
    totalTicketsSold += arg1
    emit 0x91f4d151: sub_052dd085, totalTicketsSold, arg1, msg.sender
}



}
