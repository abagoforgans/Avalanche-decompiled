contract main {




// =====================  Runtime code  =====================


address owner;
address traderAddress;
address uniswapRouterAddress;
address comptrollerAddress;

function trader() {
    return traderAddress
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
    call arg2.mint(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
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
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
}

function sub_a7dd2d40(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe46756e6374696f6e2061636365737369626c65206f6e6c7920627920746865206f776e65722021,
                    mem[204 len 24]
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x215361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
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
                    0x6446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865207472616465722021,
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
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = 1000001 * ext_call.return_data[0] / 10^6
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 1000001 * ext_call.return_data[0] / 10^6, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _475 = mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]
    _478 = mem[_475 + (32 * arg1.length) + (32 * arg2.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_475 + (32 * arg1.length) + (32 * arg2.length) + 160])] = mem[_475 + (32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[_475 + (32 * arg1.length) + (32 * arg2.length) + 160])]
    require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
    if mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] >= arg3:
        revert with 0, 'Slippage to Low'
    require 0 < arg1.length
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg1.length
    if not mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]:
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 68
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224 len 4] = approve(address arg1, uint256 arg2)
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 292] = 32
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 462 len 26]
        if ext_code.size(mem[140 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 64] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260 len 28]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 448 len 4] = 0
    else:
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x215361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 314 len 10]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260] = mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 68
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 228 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224 len 4] = approve(address arg1, uint256 arg2)
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 292] = 32
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 462 len 26]
        if ext_code.size(mem[140 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 64] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260 len 28]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 448 len 4] = 0
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 420 len 0] = 0
    call mem[140 len 20].0x310933d4 with:
         gas gas_remaining wei
        args Mask(480, -256, mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 260 len 28]) << 256, mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 420 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1.length > 0:
                revert with memory
                  from 128
                   len arg1.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1.length > 0:
            require arg1.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 466 len 22]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 360] = 1000001 * ext_call.return_data[0] / 10^6
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 392] = arg3
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 456] = this.address
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 488] = block.timestamp
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 424] = 160
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 520] = arg1.length
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 552 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 1000001 * ext_call.return_data[0] / 10^6, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + floor32(arg1.length) + 552 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _478) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 356
        require return_data.size >= 32
        require mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 <= 4294967296
        require mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356] <= 4294967296 and mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * mem[mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356]) + 32 <= return_data.size
    else:
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356] = return_data.size
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 388]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 467 len 22]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 361] = 1000001 * ext_call.return_data[0] / 10^6
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg3
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 457] = this.address
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 489] = block.timestamp
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 425] = 160
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg1.length
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 553 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        require ext_code.size(uniswapRouterAddress)
        call uniswapRouterAddress.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 1000001 * ext_call.return_data[0] / 10^6, arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + floor32(arg1.length) + 553 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _478) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
        require return_data.size >= 32
        require mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 <= 4294967296
        require mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357] <= 4294967296 and mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * mem[mem[(32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4], Mask(224, 32, 1000001 * ext_call.return_data[0] / 10^6) >> 32 + (32 * _478) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 357]) + 32 <= return_data.size
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

function sub_8aecc864(?) {
    require calldata.size - 4 >= 160
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
    if traderAddress != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0x6446756e6374696f6e2061636365737369626c65206f6e6c7920627920746865207472616465722021,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = arg3
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 64
    mem[(32 * arg1.length) + (32 * arg2.length) + 228] = arg1.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(uniswapRouterAddress)
    staticcall uniswapRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _527 = mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160] <= 4294967296 and mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg1.length) + (32 * arg2.length) + 160]
    _530 = mem[_527 + (32 * arg1.length) + (32 * arg2.length) + 160]
    mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192 len floor32(mem[_527 + (32 * arg1.length) + (32 * arg2.length) + 160])] = mem[_527 + (32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[_527 + (32 * arg1.length) + (32 * arg2.length) + 160])]
    require 1 < mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 160]
    if mem[(32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224] <= arg4:
        revert with 0, 'Slippage to Low'
    if arg5 <= block.timestamp:
        revert with 0, 'Pending too long'
    if arg1.length == 2:
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 2
        require 1 < arg1.length
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 256] = mem[140 len 20]
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 292] = arg3
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = 64
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356] = 2
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 388 len 0] = None
        require ext_code.size(uniswapRouterAddress)
        staticcall uniswapRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _1557 = mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288] <= 4294967296 and mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288]) + 32 <= return_data.size
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288] = mem[mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288 len 4], Mask(224, 32, arg3) >> 32 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288]
        _1562 = mem[_1557 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288]
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[_1557 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288])] = mem[_1557 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len floor32(mem[_1557 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288])]
        require 0 < mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 288]
        require 1 < arg1.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 3 * mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < arg2.length
        require 1 < arg1.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 204 len 20], Mask(255, 1, 3 * mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
        call mem[(32 * arg1.length) + 204 len 20].mint(uint256 arg1) with:
             gas gas_remaining wei
            args (3 * mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320] / 2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320] = 1
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * arg1.length) + 204 len 20]
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 388] = 32
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 420] = 1
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 452 len 0] = None
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.enterMarkets(address[] arg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 452])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _2499 = mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0
        require mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0 <= 4294967296
        require mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0 + (32 * mem[mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384 len 4], 0 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384]
        _2504 = mem[_2499 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_2499 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384])] = mem[_2499 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_2499 + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384])]
        require 0 < mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 384]
        if mem[(32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 416]:
            revert with 0, 'Comptroller.enterMarkets failed.'
        require 0 < arg2.length
        require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
        call mem[(32 * arg1.length) + 172 len 20].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        if ext_call.return_data[0]:
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x215361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 538 len 10]
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 452] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 416] = 68
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 452 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 448 len 4] = approve(address arg1, uint256 arg2)
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 516] = 32
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 548] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 686 len 26]
        if ext_code.size(mem[140 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len 64] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, ext_call.return_data[0 len 28]
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 672 len 4] = 0
        mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 644 len 0] = 0
        call mem[140 len 20].0x310933d4 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with memory
                      from 128
                       len arg1.length
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 584] = 32
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616] = 32
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 648] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580
                   len (5 * ceil32(return_data.size)) + 100
            if arg1.length > 0:
                require arg1.length >= 32
                if not mem[128]:
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 584] = 32
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616] = 42
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 648 len 42] = 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580
                       len (5 * ceil32(return_data.size)) + 132
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 584] = ext_call.return_data[0]
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616] = arg4
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 680] = msg.sender
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 712] = block.timestamp
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 648] = 160
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 744] = arg1.length
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 776 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 584 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580
            require return_data.size >= 32
            require mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len 4], ext_call.return_data[0 len 28] + (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580] <= 4294967296 and mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580 len 4], ext_call.return_data[0 len 28] + (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580]) + 32 <= return_data.size
        else:
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580] = return_data.size
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 32
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
                   len (5 * ceil32(return_data.size)) + 100
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612]:
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = 32
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 42
                    mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 42] = 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
                       len (5 * ceil32(return_data.size)) + 132
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = ext_call.return_data[0]
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = arg4
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = msg.sender
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = block.timestamp
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 160
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = arg1.length
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581
            require return_data.size >= 32
            require mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 4], ext_call.return_data[0 len 28] + (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581] <= 4294967296 and mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581 len 4], ext_call.return_data[0 len 28] + (32 * _2504) + (32 * _1562) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 581]) + 32 <= return_data.size
    else:
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 192] = 3
        require 2 < arg1.length
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 224] = mem[204 len 20]
        require 1 < arg1.length
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 256] = mem[172 len 20]
        require 0 < arg1.length
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 288] = mem[140 len 20]
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 356] = 64
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 388] = 3
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(uniswapRouterAddress)
        staticcall uniswapRouterAddress.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _1555 = mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320]
        _1561 = mem[_1555 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320]
        mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_1555 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320])] = mem[_1555 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 352 len floor32(mem[_1555 + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + ceil32(return_data.size) + 320])]
        require 0 < mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 320]
        require 1 < arg1.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 3 * mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 352] / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < arg2.length
        require 1 < arg1.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 204 len 20], Mask(255, 1, 3 * mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 352])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[(32 * arg1.length) + 204 len 20])
        call mem[(32 * arg1.length) + 204 len 20].mint(uint256 arg1) with:
             gas gas_remaining wei
            args (3 * mem[(32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 352] / 2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 352] = 1
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * arg1.length) + 204 len 20]
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416] = 0xc299823800000000000000000000000000000000000000000000000000000000
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 420] = 32
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 452] = 1
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 484 len 0] = None
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.enterMarkets(address[] arg1) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 484])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _2497 = mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0
        require mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0 <= 4294967296
        require mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0 + 32 <= return_data.size
        require mem[mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0 + (32 * mem[mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416 len 4], 0 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416]
        _2503 = mem[_2497 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 448 len floor32(mem[_2497 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416])] = mem[_2497 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[_2497 + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 416])]
        require 0 < mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 416]
        if mem[(32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 448]:
            revert with 0, 'Comptroller.enterMarkets failed.'
        require 0 < arg2.length
        require ext_code.size(mem[(32 * arg1.length) + 172 len 20])
        call mem[(32 * arg1.length) + 172 len 20].borrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 < arg1.length
        if ext_call.return_data[0]:
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x60ae616a2155ee3d9a68541ba4544862310933d4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x215361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 570 len 10]
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 484] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 516] = ext_call.return_data[0]
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 448] = 68
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 484 len 28] = 0x60ae616a2155ee3d9a68541ba4544862
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 480 len 4] = approve(address arg1, uint256 arg2)
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 548] = 32
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 580] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 718 len 26]
        if ext_code.size(mem[140 len 20]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len 64] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, ext_call.return_data[0 len 28]
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 704 len 4] = 0
        mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 676 len 0] = 0
        call mem[140 len 20].0x310933d4 with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 676 len 4]
        if not return_data.size:
            if not ext_call.success:
                if arg1.length > 0:
                    revert with memory
                      from 128
                       len arg1.length
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616] = 32
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 648] = 32
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 680] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612
                   len (5 * ceil32(return_data.size)) + 100
            if arg1.length > 0:
                require arg1.length >= 32
                if not mem[128]:
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616] = 32
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 648] = 42
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 680 len 42] = 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612
                       len (5 * ceil32(return_data.size)) + 132
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616] = ext_call.return_data[0]
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 648] = arg4
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 712] = msg.sender
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 744] = block.timestamp
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 680] = 160
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 776] = arg1.length
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 808 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 616 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612
            require return_data.size >= 32
            require mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len 4], ext_call.return_data[0 len 28] + (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612] <= 4294967296 and mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612 len 4], ext_call.return_data[0 len 28] + (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612]) + 32 <= return_data.size
        else:
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 612] = return_data.size
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 32
                mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                   len (5 * ceil32(return_data.size)) + 100
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + 644]:
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 32
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = 42
                    mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 681 len 42] = 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
                       len (5 * ceil32(return_data.size)) + 132
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = ext_call.return_data[0]
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 649] = arg4
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = msg.sender
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = block.timestamp
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 681] = 160
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = arg1.length
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            require ext_code.size(uniswapRouterAddress)
            call uniswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * arg1.length) + (5 * ceil32(return_data.size)) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613
            require return_data.size >= 32
            require mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 len 4], ext_call.return_data[0 len 28] + (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613] <= 4294967296 and mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613 len 4], ext_call.return_data[0 len 28] + (32 * _2503) + (32 * _1561) + (32 * _530) + (32 * arg1.length) + (32 * arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 613]) + 32 <= return_data.size
}



}
