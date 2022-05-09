contract main {




// =====================  Runtime code  =====================


address uniswapAddress;
address factoryAddress;
address owner1;
uint8 stor3; offset 160
uint128 stor3; offset 160
address tokenAddress;
address sellerAddress;
address wethAddress;
uint256 min_pool_bal;
uint256 loop_times;
uint256 max_price;
uint256 decimals;
uint256 eth_buy_amt;

function seller() {
    return sellerAddress
}

function buy_complete() {
    return bool(uint8(stor3.field_160))
}

function uniswap() {
    return uniswapAddress
}

function max_price() {
    return max_price
}

function loop_times() {
    return loop_times
}

function decimals() {
    return decimals
}

function weth() {
    return wethAddress
}

function min_pool_bal() {
    return min_pool_bal
}

function owner1() {
    return owner1
}

function eth_buy_amt() {
    return eth_buy_amt
}

function factory() {
    return factoryAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function set_price(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    max_price = arg1
}

function set_token(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    tokenAddress = arg1
}

function set_eth_buy_amt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner1
    eth_buy_amt = arg1
}

function set_router(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner1
    uniswapAddress = arg1
    factoryAddress = arg2
}

function withdrawEther() {
    require msg.sender == owner1
    call owner1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2d73686a(?) {
    require calldata.size - 4 >= 224
    require msg.sender == owner1
    tokenAddress = arg1
    max_price = arg2
    loop_times = arg3
    min_pool_bal = arg4
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg5)
    decimals = arg6
    eth_buy_amt = arg7
}

function exectue(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require msg.sender == owner1
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
}

function swap() payable {
    mem[64] = 96
    require not msg.value
    mem[132] = wethAddress
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAddress, wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(wethAddress)
        staticcall wethAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= min_pool_bal:
            idx = 1
            while idx <= loop_times:
                require idx
                require (eth_buy_amt / idx) + ext_call.return_data[0]
                require ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / (eth_buy_amt / idx) + ext_call.return_data[0])
                require max_price
                if 10^decimals * eth_buy_amt / idx / ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / (eth_buy_amt / idx) + ext_call.return_data[0]) >= max_price:
                    idx = idx + 1
                    continue 
                mem[128] = wethAddress
                mem[160] = tokenAddress
                mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[196] = 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price
                mem[260] = sellerAddress
                mem[292] = block.timestamp + 1
                mem[228] = 128
                mem[324] = 2
                s = 0
                while s < 64:
                    mem[s + 356] = mem[s + 128]
                    s = s + 32
                    continue 
                require ext_code.size(uniswapAddress)
                call uniswapAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth_buy_amt / idx wei
                     gas gas_remaining wei
                    args 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price, Array(len=2, data=mem[356 len 64]), sellerAddress, block.timestamp + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _44 = mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32
                require mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32 <= 4294967296
                require mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32 + 32 <= return_data.size
                require mem[mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32 + 192]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, 9 * 10^decimals * eth_buy_amt / idx / 10 / max_price) >> 32 + 192]
                _47 = mem[_44 + 192]
                idx = 0
                while idx < 32 * _47:
                    mem[ceil32(return_data.size) + idx + 224] = mem[_44 + idx + 224]
                    idx = idx + 32
                    continue 
                Mask(96, 0, stor3.field_160) = 1
}



}
