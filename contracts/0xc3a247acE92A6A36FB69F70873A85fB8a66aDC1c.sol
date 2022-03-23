contract main {




// =====================  Runtime code  =====================


address proxyOwner;
uint256 stor6279;
uint128 stor6E41; offset 160
address implementationAddress;
uint256 stor6E41;
uint128 stor8DDB; offset 160
address pendingProxyOwner;
uint256 stor8DDB;

function proxyOwner() {
    return address(proxyOwner)
}

function pendingProxyOwner() {
    return pendingProxyOwner
}

function implementation() {
    return implementationAddress
}

function claimProxyOwnership() {
    if pendingProxyOwner != msg.sender:
        revert with 0, 'only pending Proxy Owner'
    emit ProxyOwnershipTransferred(address(proxyOwner), pendingProxyOwner);
    uint256(stor6279) = uint256(stor8DDB.field_0)
    uint256(stor8DDB.field_0) = 0
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if address(proxyOwner) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1 != implementationAddress
    implementationAddress = arg1
    Mask(96, 0, stor6E41.field_160) = 0
    emit Upgraded(arg1);
}

function transferProxyOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(proxyOwner) != msg.sender:
        revert with 0, 'only Proxy Owner'
    require arg1
    pendingProxyOwner = arg1
    Mask(96, 0, stor8DDB.field_160) = 0
    emit NewPendingOwner(address(proxyOwner), arg1);
}

function _fallback() payable {
    delegate uint256(stor6E41.field_0) with:
       funct call.data[return_data.size len 4]
         gas gas_remaining wei
        args call.data[return_data.size + 4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
