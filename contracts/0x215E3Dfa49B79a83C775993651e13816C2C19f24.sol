contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address factoryAddress;
address sushiSwapRouterAddress;

function factory() payable {
    return factoryAddress
}

function sushiSwapRouter() payable {
    return sushiSwapRouterAddress
}

function _fallback() payable {
    revert
}

function sub_382f2a55(?) payable {
    require calldata.size - 4 >= 192
    factoryAddress = arg1
    sushiSwapRouterAddress = arg2
    require ext_code.size(arg1)
    staticcall arg1.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Could not find pool on uniswap'
}



}
