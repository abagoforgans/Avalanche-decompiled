contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address managerAddress;
address destinationAddress;
address reserveAddress;
address strategyAddress;

function getStrategy() payable {
    return strategyAddress
}

function getDestination() payable {
    return destinationAddress
}

function manager() payable {
    return managerAddress
}

function getReserve() payable {
    return reserveAddress
}

function owner() payable {
    return owner
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable/caller-not-pendingOwner'
    owner = pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    pendingOwner = 0
}

function setReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0, 'Flush/reserve-not-zero-address'
    reserveAddress = arg1
    emit 0xfbebf27e: arg1
    return arg1
}

function setStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0, 'Flush/strategy-not-zero-address'
    strategyAddress = arg1
    emit 0xe70d79da: arg1
    return arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable/pendingOwner-not-zero-address'
    pendingOwner = arg1
    emit OwnershipOffered(arg1);
}

function setDestination(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Flush/destination-not-zero-address'
    destinationAddress = arg1
    emit DestinationSet(arg1);
    return arg1
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if managerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/existing-manager-address'
    managerAddress = arg1
    emit ManagerTransferred(managerAddress, arg1);
    return 1
}

function flush() payable {
    if managerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/caller-not-manager-or-owner'
    require ext_code.size(strategyAddress)
    call strategyAddress.0xe4fc6b6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(reserveAddress)
    staticcall reserveAddress.getToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args reserveAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(reserveAddress)
    call reserveAddress.' \(x' with:
         gas gas_remaining wei
        args destinationAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Flushed(ext_call.return_data[0], destinationAddress);
    return 1
}



}
