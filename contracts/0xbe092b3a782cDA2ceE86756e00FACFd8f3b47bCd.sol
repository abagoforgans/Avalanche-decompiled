contract main {




// =====================  Runtime code  =====================


address adminAddress;
address _implementationAddress;

function _implementation() {
    return _implementationAddress
}

function admin() {
    return adminAddress
}

function _upgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'not admin'
    _implementationAddress = arg1
}

function _fallback() payable {
    delegate _implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
