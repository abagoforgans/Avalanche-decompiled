contract main {




// =====================  Runtime code  =====================


const getVersion = ext_call.return_data[0]

const getPrice = (10^10 * ext_call.return_data[32])


mapping of uint256 addressToAmountFunded;
array of address founders;
address owner;

function addressToAmountFunded(address arg1) {
    require calldata.size - 4 >= 32
    return addressToAmountFunded[arg1]
}

function owner() {
    return owner
}

function founders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < founders.length
    return founders[arg1]
}

function _fallback() payable {
    revert
}

function getConversionRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return (10^10 * ext_call.return_data[32] * arg1 / 10^18)
}

function withdraw() payable {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < founders.length:
        mem[0] = founders[idx]
        mem[32] = 0
        addressToAmountFunded[stor1[idx]] = 0
        idx = idx + 1
        continue 
    founders.length = 0
    idx = 0
    while founders.length > idx:
        founders[idx] = 0
        idx = idx + 1
        continue 
}

function fund() payable {
    require ext_code.size(0x8a753747a1fa494ec906ce90e9f37563a8af630e)
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if 10^10 * ext_call.return_data[32] * msg.value / 10^18 < 5 * 10^18:
        revert with 0, 'You need to spend more ETH!'
    addressToAmountFunded[address(msg.sender)] += msg.value
    founders.length++
    founders[founders.length] = msg.sender
}

function sub_fa42ee88(?) {
    idx = 0
    s = 0
    while idx < founders.length:
        mem[0] = founders[idx]
        mem[32] = 0
        idx = idx + 1
        s = s + addressToAmountFunded[stor1[idx]]
        continue 
    return (s * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length * founders.length)
}



}
