contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d2e9ead(?)
#
uint256 sub_d0ad718d;
mapping of uint256 sub_58a007fb;
address owner;
address newOwner;
mapping of uint8 stor10;
address implementationAddress;

function sub_58a007fb(?) {
    return sub_58a007fb[arg1]
}

function implementation() {
    return implementationAddress
}

function owner() {
    return owner
}

function sub_d0ad718d(?) {
    return sub_d0ad718d
}

function newOwner() {
    return newOwner
}

function sub_d51dddd7(?) {
    return bool(stor10[arg1])
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    owner = 0
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function addAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor10[address(arg1)] = 1
    emit AddAdmin(arg1);
}

function removeAdmin(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor10[address(arg1)] = 0
    emit RemoveAdmin(arg1);
}

function transferOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to invalid address'
    if implementationAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to the same implementation'
    implementationAddress = arg1
    emit Upgraded(arg1);
}



}
