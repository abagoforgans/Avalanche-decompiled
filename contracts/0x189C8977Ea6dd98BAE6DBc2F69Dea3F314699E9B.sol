contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    mem[160] = arg2
    mem[192] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[260] = arg4
    mem[292] = block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), address(arg4), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}



}
