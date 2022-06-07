contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint8 stor1;
address tokenAddress;
address adminAddress;
uint256 end;
uint256 price;
uint256 availableTokens;
uint256 minPurchase;
uint256 maxPurchase;
uint8 released;

function minPurchase() {
    return minPurchase
}

function availableTokens() {
    return availableTokens
}

function investors(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function released() {
    return bool(released)
}

function maxPurchase() {
    return maxPurchase
}

function price() {
    return price
}

function end() {
    return end
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    stor1[address(arg1)] = 1
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if end <= 0:
        revert with 0, 'ICO must have ended'
    if block.timestamp < end:
        if availableTokens:
            revert with 0, 'ICO must have ended'
    if bool(released) != 1:
        revert with 0, 'Tokens must have been released'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function release() {
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if end <= 0:
        revert with 0, 'ICO must have ended'
    if block.timestamp < end:
        if availableTokens:
            revert with 0, 'ICO must have ended'
    if released:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79546f6b656e73206d757374204e4f542068617665206265656e2072656c65617365,
                    mem[198 len 30]
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        mem[100] = stor0[idx].field_0
        mem[132] = stor0[idx].field_256
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor0[idx].field_0, stor0[idx].field_256
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function buy() payable {
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'only investors'
    if end <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= end:
        revert with 0, 'ICO must be active'
    if availableTokens <= 0:
        revert with 0, 'ICO must be active'
    require price
    if msg.value % price:
        revert with 0, 'have to send a multiple of price'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe6861766520746f2073656e64206265747765656e206d696e507572636861736520616e64206d617850757263686173,
                    mem[212 len 16]
    if msg.value > maxPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xfe6861766520746f2073656e64206265747765656e206d696e507572636861736520616e64206d617850757263686173,
                    mem[212 len 16]
    if price * msg.value > availableTokens:
        revert with 0, 'Not enough tokens left for sale'
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_256 = price * msg.value
}

function start(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if end:
        revert with 0, 'ICO should not be active'
    if arg1 <= 0:
        revert with 0, 'duration should be > 0'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73746f74616c537570706c792073686f756c64206265203e203020616e64203c3d20746f74616c537570706c,
                    mem[208 len 20]
    if arg3 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73746f74616c537570706c792073686f756c64206265203e203020616e64203c3d20746f74616c537570706c,
                    mem[208 len 20]
    if arg4 <= 0:
        revert with 0, '_minPurchase should > 0'
    if arg5 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x655f6d617850757263686173652073686f756c64206265203e203020616e64203c3d205f617661696c61626c65546f6b656e,
                    mem[214 len 14]
    if arg5 > arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x655f6d617850757263686173652073686f756c64206265203e203020616e64203c3d205f617661696c61626c65546f6b656e,
                    mem[214 len 14]
    end = arg1 + block.timestamp
    price = arg2
    availableTokens = arg3
    minPurchase = arg4
    maxPurchase = arg5
}



}
