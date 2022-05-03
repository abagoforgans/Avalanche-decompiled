contract main {




// =====================  Runtime code  =====================


address tjRouterAddress;

function TjRouter() {
    return tjRouterAddress
}

function _fallback() payable {
    revert
}

function BuyToken(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 292 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(tjRouterAddress)
    call tjRouterAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(arg2), block.timestamp + 25, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 292 len (32 * arg1.length) - floor32(arg1.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
