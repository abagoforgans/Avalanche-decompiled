contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 rate;
uint256 minAmount;
uint8 stor5;
array of struct initial_investors;

function getRate() {
    return rate
}

function initial_investors(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < initial_investors.length
    return initial_investors[arg1].field_0
}

function ico_live() {
    return bool(stor5)
}

function getMinAmount() {
    return minAmount
}

function _fallback() payable {
    revert
}

function stopIco() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Action not Allowed!'
    stor5 = 0
}

function startIco() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Action not Allowed!'
    stor5 = 1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Action not Allowed!'
    rate = arg1
}

function setMinAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Action not Allowed!'
    minAmount = arg1
}

function transferOwnerShip(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Action not Allowed!'
    stor1 = arg1
}

function transferInvestment(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Action not Allowed!'
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function purchase() payable {
    if msg.value < minAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution: Amount must be more than min amount!'
    if not stor5:
        revert with 0, 'Distribution:ICO Ended!'
    if rate and msg.value > -1 / rate:
        revert with 'NH{q', 17
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args stor2, msg.sender, rate * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    initial_investors.length++
    initial_investors[initial_investors.length].field_0 = msg.sender
    emit TokenPurchased((rate * msg.value), stor2, msg.sender);
}

function getHolders() {
    mem[64] = (32 * initial_investors.length) + 128
    mem[96] = initial_investors.length
    if not initial_investors.length:
        mem[(32 * initial_investors.length) + 128] = 32
        mem[(32 * initial_investors.length) + 160] = initial_investors.length
        idx = 0
        s = 128
        t = (32 * initial_investors.length) + 192
        while idx < initial_investors.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * initial_investors.length) + 128
           len (96 * initial_investors.length) + 64
    mem[128] = address(initial_investors.field_0)
    idx = 128
    s = 0
    while (32 * initial_investors.length) + 96 > idx:
        mem[idx + 32] = initial_investors[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * initial_investors.length) + 128] = 32
    mem[(32 * initial_investors.length) + 160] = initial_investors.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < initial_investors.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * initial_investors.length) + -mem[64] + 192
}



}
