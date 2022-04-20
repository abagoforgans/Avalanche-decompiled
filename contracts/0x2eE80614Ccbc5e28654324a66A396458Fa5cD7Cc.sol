contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
address comptrollerImplementationAddress;
address pendingComptrollerImplementationAddress;

function pendingAdmin() {
    return pendingAdminAddress
}

function implementation() {
    return comptrollerImplementationAddress
}

function comptrollerImplementation() {
    return comptrollerImplementationAddress
}

function pendingComptrollerImplementation() {
    return pendingComptrollerImplementationAddress
}

function admin() {
    return adminAddress
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 14, 0);
        return 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
}

function _setPendingImplementation(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 15, 0);
        return 1
    pendingComptrollerImplementationAddress = arg1
    emit NewPendingImplementation(pendingComptrollerImplementationAddress, arg1);
    return 0
}

function _fallback() payable {
    delegate comptrollerImplementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        emit Failure(1, 0, 0);
        return 1
    if not msg.sender:
        emit Failure(1, 0, 0);
        return 1
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(adminAddress, pendingAdminAddress);
    emit NewPendingAdmin(pendingAdminAddress, pendingAdminAddress);
    return 0
}

function _acceptImplementation() {
    if pendingComptrollerImplementationAddress != msg.sender:
        emit Failure(1, 1, 0);
        return 1
    if not pendingComptrollerImplementationAddress:
        emit Failure(1, 1, 0);
        return 1
    comptrollerImplementationAddress = pendingComptrollerImplementationAddress
    pendingComptrollerImplementationAddress = 0
    emit NewImplementation(comptrollerImplementationAddress, pendingComptrollerImplementationAddress);
    emit NewPendingImplementation(pendingComptrollerImplementationAddress, pendingComptrollerImplementationAddress);
    return 0
}



}
