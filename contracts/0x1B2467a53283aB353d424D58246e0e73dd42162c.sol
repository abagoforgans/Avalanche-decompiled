contract main {




// =====================  Runtime code  =====================


uint256 value;
address tokenAddress;

function value() payable {
    return value
}

function tokenAddress() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getBalance() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x526dd41c9d9fb0b8b783617fa32effa8279137f, value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
