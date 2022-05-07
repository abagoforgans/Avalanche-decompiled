contract main {




// =====================  Runtime code  =====================


address uniswapRouterAddress;

function uniswapRouter() {
    return uniswapRouterAddress
}

function _fallback() payable {
    revert
}

function sub_55f95ba0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    uniswapRouterAddress = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = 10000 * 10^18
    mem[132] = 0
    mem[196] = 0xc0d43a2333237acc53548f018cc142976691c81e
    mem[228] = 1637845133
    mem[164] = 160
    mem[260] = arg1.length
    mem[292 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 292] = 0
    require ext_code.size(uniswapRouterAddress)
    call uniswapRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 2990538752, 0, 160, 0xc0d43a2333237acc53548f018cc142976691c81e, 1637845133, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], 2328306436538 <= 4294967296
    require mem[96 len 4], 2328306436538 + 32 <= return_data.size
    require mem[mem[96 len 4], 2328306436538 + 96] <= 4294967296 and mem[96 len 4], 2328306436538 + (32 * mem[mem[96 len 4], 2328306436538 + 96]) + 32 <= return_data.size
}



}
