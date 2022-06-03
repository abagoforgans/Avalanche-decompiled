contract main {




// =====================  Runtime code  =====================


address token1Address;
address owner1;
uint256 amount1;
address token2Address;
address owner2;
uint256 amount2;

function amount2() payable {
    return amount2
}

function token2() payable {
    return token2Address
}

function owner2() payable {
    return owner2
}

function owner1() payable {
    return owner1
}

function token1() payable {
    return token1Address
}

function amount1() payable {
    return amount1
}

function _fallback() payable {
    revert
}

function swap() payable {
    staticcall token1Address.0xdd62ed3e with:
            gas gas_remaining wei
           args owner1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < amount1:
        revert with 0, 'Token 1 allowance too low'
    staticcall token2Address.0xdd62ed3e with:
            gas gas_remaining wei
           args owner2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < amount2:
        revert with 0, 'Token 2 allowance too low'
    call token1Address.0x23b872dd with:
         gas gas_remaining wei
        args owner1, owner2, amount1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    call token2Address.0x23b872dd with:
         gas gas_remaining wei
        args owner2, owner1, amount2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
}



}
