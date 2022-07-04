contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swap(address arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg4
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = arg3
    mem[292] = msg.sender
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg2, arg3, Array(len=2, data=mem[388 len 64]), msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}



}
