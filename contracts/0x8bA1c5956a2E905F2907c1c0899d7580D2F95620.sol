contract main {




// =====================  Runtime code  =====================


address owner;
address token1Address;
address owner1;
address token2Address;
uint256 amount1;
uint256 amount2;

function amount2() payable {
    return amount2
}

function token2() payable {
    return token2Address
}

function owner1() payable {
    return owner1
}

function getOwner() payable {
    return owner
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

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function swap() payable {
    require ext_code.size(token1Address)
    staticcall token1Address.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args owner1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < amount1:
        revert with 0, 'Token 1 allowance too low'
    require ext_code.size(token2Address)
    staticcall token2Address.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < amount2:
        revert with 0, 'Token 2 allowance too low'
    require ext_code.size(token1Address)
    call token1Address.0x23b872dd with:
         gas gas_remaining wei
        args owner1, msg.sender, amount1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    require ext_code.size(token2Address)
    call token2Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, owner1, amount2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
}



}
