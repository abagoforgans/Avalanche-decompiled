contract main {




// =====================  Runtime code  =====================


uint256 lockedTime;
uint256 smgFeeReceiverTimeout;
address owner; offset 8
uint256 stor19; offset 8
uint8 stor20; offset 160
uint128 stor20; offset 160
address newOwner;
address implementationAddress;

function implementation() {
    return implementationAddress
}

function owner() {
    return address(owner)
}

function lockedTime() {
    return lockedTime
}

function halted() {
    return bool(uint8(stor20.field_160))
}

function newOwner() {
    return newOwner
}

function smgFeeReceiverTimeout() {
    return smgFeeReceiverTimeout
}

function acceptOwnership() {
    if msg.sender == newOwner:
        Mask(248, 0, stor19) = newOwner
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Not owner'
    address(owner) = 0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function setHalt(bool arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Not owner'
    Mask(96, 0, stor20.field_160) = Mask(96, 0, arg1)
}

function transferOwner(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0, 'implementation contract not set'
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to invalid address'
    if implementationAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to the same implementation'
    implementationAddress = arg1
    emit Upgraded(arg1);
}



}
