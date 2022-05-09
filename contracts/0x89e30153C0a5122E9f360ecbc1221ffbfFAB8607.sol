contract main {




// =====================  Runtime code  =====================


address upgradeabilityOwner;
uint256 version;
address implementationAddress;

function version() {
    return version
}

function implementation() {
    return implementationAddress
}

function upgradeabilityOwner() {
    return upgradeabilityOwner
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == upgradeabilityOwner
    require arg1
    emit ProxyOwnershipTransferred(upgradeabilityOwner, arg1);
    upgradeabilityOwner = arg1
}

function _fallback() payable {
    require implementationAddress
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == upgradeabilityOwner
    require implementationAddress != arg2
    require ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470
    require ext_code.hash(arg2)
    require arg1 > version
    version = arg1
    implementationAddress = arg2
    emit Upgraded(arg1, arg2);
}

function upgradeToAndCall(uint256 arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == upgradeabilityOwner
    require implementationAddress != arg2
    require ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470
    require ext_code.hash(arg2)
    require arg1 > version
    version = arg1
    implementationAddress = arg2
    emit Upgraded(arg1, arg2);
    call this.address with:
       value msg.value wei
         gas gas_remaining wei
        args arg3[all]
    require ext_call.success
}



}
