contract main {




// =====================  Runtime code  =====================


address poolAddress;
address tokenAddress;

function pool() payable {
    return poolAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function Balance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd6ff1f0b: ext_call.return_data[0]
}



}
