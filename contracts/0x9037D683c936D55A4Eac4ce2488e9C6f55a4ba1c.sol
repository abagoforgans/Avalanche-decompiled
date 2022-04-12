contract main {




// =====================  Runtime code  =====================


address adminAddress;
address pendingAdminAddress;
address implementationAddress;
address pendingImplementationAddress;

function pendingAdmin() {
    return pendingAdminAddress
}

function pendingImplementation() {
    return pendingImplementationAddress
}

function implementation() {
    return implementationAddress
}

function admin() {
    return adminAddress
}

function setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    pendingAdminAddress = arg1
}

function setPendingImplementation(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    pendingImplementationAddress = arg1
}

function acceptPendingAdmin() {
    if pendingAdminAddress != msg.sender:
        revert with 0, 'Caller must be the pending admin'
    if not pendingAdminAddress:
        revert with 0, 'Caller must be the pending admin'
    adminAddress = pendingAdminAddress
    pendingAdminAddress = 0
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

function acceptPendingImplementation() {
    if pendingImplementationAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe4f6e6c79207468652070656e64696e6720696d706c656d656e746174696f6e20636f6e74726163742063616e2063616c6c20746869,
                    mem[218 len 10]
    if not pendingImplementationAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0xfe4f6e6c79207468652070656e64696e6720696d706c656d656e746174696f6e20636f6e74726163742063616e2063616c6c20746869,
                    mem[218 len 10]
    implementationAddress = pendingImplementationAddress
    pendingImplementationAddress = 0
}



}
