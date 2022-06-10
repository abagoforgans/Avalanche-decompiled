contract main {




// =====================  Runtime code  =====================


address implementationAddress;
address adminAddress;

function implementation() {
    return implementationAddress
}

function admin() {
    return adminAddress
}

function transferAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == adminAddress
    adminAddress = arg1
}

function setImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == adminAddress
    implementationAddress = arg1
}

function _fallback() payable {
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
