contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address uniswapV2RouterAddress;

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function _fallback() payable {
    revert
}

function sub_8b86e938(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 27) + 256, 32) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 27) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(ceil32(arg1.length)) + arg1.length + 165] = 0
    require ext_code.size(stor0)
    call stor0.0xd23982c1 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor2
    mem[ceil32(ceil32(arg1.length)) + 129] = stor1
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 193] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(ceil32(arg1.length)) + 161] = ext_call.return_data[12 len 20]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 193] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, ext_call.return_data[0]
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 193] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
    idx = 0
    s = ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 389
    t = ceil32(ceil32(arg1.length)) + 129
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswapV2RouterAddress)
    call uniswapV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, stor2, block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 389 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
