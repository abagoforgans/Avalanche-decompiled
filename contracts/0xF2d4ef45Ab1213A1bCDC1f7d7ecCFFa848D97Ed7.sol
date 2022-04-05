contract main {




// =====================  Runtime code  =====================


address _tokenAddress;
address sub_b686965aAddress;
address pangolinPairAddress;

function pangolinPair() {
    return pangolinPairAddress
}

function sub_b686965a(?) {
    return sub_b686965aAddress
}

function _token() {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function buy() {
    if eth.balance(this.address):
        require ext_code.size(sub_b686965aAddress)
        staticcall sub_b686965aAddress.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[356 len 0] = None
        require ext_code.size(sub_b686965aAddress)
        call sub_b686965aAddress.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, 128, 57005, block.timestamp, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sell() {
    if _tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe4f6e6c792074686520746f6b656e2063616e2063616c6c2074686973206d6574686f,
                    mem[199 len 29]
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_b686965aAddress)
        staticcall sub_b686965aAddress.WAVAX() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(_tokenAddress)
        staticcall _tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[388 len 0] = None
        require ext_code.size(sub_b686965aAddress)
        call sub_b686965aAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
