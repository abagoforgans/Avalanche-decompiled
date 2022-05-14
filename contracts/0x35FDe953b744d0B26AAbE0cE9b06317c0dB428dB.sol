contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address factoryAddress;
address sushiRouterAddress;

function sushiRouter() payable {
    return sushiRouterAddress
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function startArbitrage(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, this.address, 'not empty'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
