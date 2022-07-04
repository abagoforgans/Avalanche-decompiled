contract main {




// =====================  Runtime code  =====================


#
#  - sub_8aecc864(?)
#
address owner;
address traderAddress;
address uniswapRouterAddress;
address comptrollerAddress;
uint256 sub_4d8e939a;

function trader() {
    return traderAddress
}

function sub_4d8e939a(?) {
    return sub_4d8e939a
}

function comptroller() {
    return comptrollerAddress
}

function uniswapRouter() {
    return uniswapRouterAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isTrader() {
    return (msg.sender == traderAddress)
}

function sub_c64daaf6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    sub_4d8e939a = arg1
}

function sub_a71eef1b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    comptrollerAddress = arg1
}

function updateTrader(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    traderAddress = arg1
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    uniswapRouterAddress = arg1
}

function sub_8b4c5aee(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length == 2:
        require 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + 288 len 0] = None
        return Array(len=2, data=mem[(32 * arg1.length) + 288 len 64])
    require 2 < arg1.length
    require 1 < arg1.length
    require 0 < arg1.length
    mem[(32 * arg1.length) + 320 len 0] = None
    return Array(len=3, data=mem[(32 * arg1.length) + 320 len 96])
}

function redeem(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c02d0eb2(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5ffbdf10(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function redeemAll(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function repayBorrow(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function depositToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa0712d68 with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0455d56d(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if traderAddress != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x2146756e6374696f6e2061636365737369626c65206f6e6c7920627920746865207472616465722021,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    if arg4 <= block.timestamp:
        revert with 0, 'Pending too long'
    require 1 < arg2.length
    _8 = mem[(32 * arg1.length) + 192]
    require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
    staticcall mem[(32 * arg1.length) + 204 len 20].borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = ext_call.return_data[0] * sub_4d8e939a / 100000
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] * sub_4d8e939a / 100000, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _102 = mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]
    _105 = mem[_102 + (32 * arg1.length) + (32 * arg2.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_102 + (32 * arg1.length) + (32 * arg2.length) + 160])] = mem[_102 + (32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[_102 + (32 * arg1.length) + (32 * arg2.length) + 160])]
    require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
    if mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] >= arg3:
        revert with 0, 'Slippage to Low'
    require 0 < arg1.length
    require 0 < arg2.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + 172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] >= ext_call.return_data[0]:
        revert with 0, 'Too Less Liquidity'
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 196] = ext_call.return_data[0] * sub_4d8e939a / 100000
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228] = arg3
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 292] = this.address
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = block.timestamp
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260] = 160
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356] = arg1.length
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 388 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0] * sub_4d8e939a / 100000, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg1.length) + 388 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _105) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 <= 4294967296
    require mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * mem[mem[(32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] * sub_4d8e939a / 100000) >> 32 + (32 * _105) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
    require 0 < arg2.length
    require 1 < arg1.length
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(_8), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_8))
    call address(_8).repayBorrow(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(_8))
    staticcall address(_8).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Borrow Balance not Zero'
    require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
    staticcall mem[(32 * arg1.length) + 172 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
    call mem[(32 * arg1.length) + 172 len 20].redeem(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
