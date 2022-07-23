contract main {




// =====================  Runtime code  =====================


address routerAddress;

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function buy(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg1
    mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[260] = msg.sender
    mem[292] = block.timestamp + 60
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, msg.sender, block.timestamp + 60, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
}



}
