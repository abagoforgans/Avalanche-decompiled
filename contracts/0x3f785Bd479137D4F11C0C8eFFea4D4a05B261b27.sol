contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
function flash(bool arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg1:
        require ext_code.size(0xd538a741c6782cf4e21e951cda39327c50c51087)
        call 0xd538a741c6782cf4e21e951cda39327c50c51087.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, arg2, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    else:
        require ext_code.size(0xf0252ffaf3d3c7b3283e0aff56b66db7105c318c)
        call 0xf0252ffaf3d3c7b3283e0aff56b66db7105c318c.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, arg2, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    mem[calldata.size + 128] = 0
    mem[calldata.size + 128 len ceil32(calldata.size)] = 0, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256
    if ceil32(calldata.size) <= calldata.size:
        delegate this.address with:
           funct (Mask(32, -(8 * ceil32(calldata.size) - calldata.size) + 224, 0, call.data[4 len calldata.size - 4]) >> -(8 * ceil32(calldata.size) - calldata.size) + 224)
             gas gas_remaining wei
            args (Mask(8 * calldata.size - 4, -(8 * calldata.size) + 256, call.data[4 len calldata.size - 4], Mask(8 * ceil32(calldata.size) - calldata.size, -(8 * ceil32(calldata.size) - calldata.size) + 256, 0) >> -(8 * ceil32(calldata.size) - calldata.size) + 256) << (8 * calldata.size) - 256)
    else:
        mem[(2 * calldata.size) + 128] = 0
        delegate this.address.mem[calldata.size + 128 len 4] with:
             gas gas_remaining wei
            args mem[calldata.size + 132 len calldata.size - 4]
    if not delegate.return_code:
        revert with 0, 'uniswapV2Call failed'
    return 0, call.data[4 len calldata.size - 4]
}



}
