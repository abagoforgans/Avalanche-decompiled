contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 price;
array of struct stor2;
uint256 numEntries;
address tokenAddress;

function getNumEntries() {
    return numEntries
}

function _price() {
    return price
}

function getPrice() {
    return price
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    price = arg1
}

function withdrawAll() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0b58d1d9(?) {
    require msg.sender == stor0
    if not numEntries:
        revert with 'NH{q', 18
    if sha3(block.timestamp, block.difficulty) % numEntries >= stor2.length:
        revert with 'NH{q', 50
    emit 0xac853ae2: stor2[('map', 'timestamp', 'difficulty') % stor3].field_0, 0
}

function sub_0c032607(?) {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_aae59cf6(?) {
    require msg.sender == stor0
    if not numEntries:
        revert with 'NH{q', 18
    if sha3(block.timestamp, block.difficulty) % numEntries and 7 > -1 / sha3(block.timestamp, block.difficulty) % numEntries:
        revert with 'NH{q', 17
    if not numEntries:
        revert with 'NH{q', 18
    if sha3(block.timestamp, block.difficulty) % numEntries >= stor2.length:
        revert with 'NH{q', 50
    if 7 * sha3(block.timestamp, block.difficulty) % numEntries % numEntries >= stor2.length:
        revert with 'NH{q', 50
    call stor2[('map', 'timestamp', 'difficulty') % stor3].field_0 with:
       value eth.balance(this.address) / 5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor2[7 * ('map', 'timestamp', 'difficulty') % stor3 % stor3].field_0 with:
       value eth.balance(this.address) / 20 wei
         gas 2300 * is_zero(value) wei
    emit 0xac853ae2: stor2[('map', 'timestamp', 'difficulty') % stor3].field_0, eth.balance(this.address) / 5
    emit 0xac853ae2: stor2[7 * ('map', 'timestamp', 'difficulty') % stor3 % stor3].field_0, eth.balance(this.address) / 20
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only buy 200 tokens at a time'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if price and arg1 > -1 / price:
        revert with 'NH{q', 17
    if msg.value < price * arg1:
        revert with 0, 'Insufficient ether'
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Not enough tokens in the reserve'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < arg1:
        stor2.length++
        mem[0] = 2
        stor2[stor2.length].field_0 = msg.sender
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if numEntries > -arg1 - 1:
        revert with 'NH{q', 17
    numEntries += arg1
    emit Bought(arg1);
}



}
