contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address lpAddress;
uint128 sub_24797db5;
address tokenAddress;

function sub_24797db5(?) payable {
    return sub_24797db5
}

function owner() payable {
    return owner
}

function lpAddress() payable {
    return lpAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'You are NOT contract owner!'
    owner = arg1
}

function sub_9948736f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'You are NOT contract owner!'
    stor1 = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    lpAddress = ext_call.return_data[12 len 20]
    tokenAddress = address(arg1)
    if not lpAddress:
        sub_24797db5 = 0
    else:
        stor2 = lpAddress
        staticcall stor2.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        sub_24797db5 = ext_call.return_data[18 len 14]
}



}
