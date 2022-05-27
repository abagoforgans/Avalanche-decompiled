contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_491a43d6(?) payable {
    require calldata.size - 4 >= 192
    mem[160] = arg4
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[260] = stor0
    mem[292] = arg5
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args arg3, Array(len=2, data=mem[356 len 64]), stor0, arg5
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
