contract main {




// =====================  Runtime code  =====================


address proxyOwner;
uint256 stor59E8;
address implementationAddress;
uint256 storFE12;

function proxyOwner() {
    return address(proxyOwner)
}

function implementation() {
    return address(implementationAddress)
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(proxyOwner)
    require arg1
    uint256(stor59E8) = arg1
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(proxyOwner)
    require address(implementationAddress) != arg1
    uint256(storFE12) = arg1
}

function _fallback() payable {
    require address(implementationAddress)
    delegate uint256(storFE12) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
