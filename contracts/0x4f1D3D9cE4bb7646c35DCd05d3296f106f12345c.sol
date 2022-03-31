contract main {




// =====================  Runtime code  =====================


address owner;
uint8 halted; offset 160
uint128 stor1; offset 160
address newOwner;
mapping of address sub_f5d4d470;

function owner() {
    return owner
}

function halted() {
    return bool(halted)
}

function newOwner() {
    return newOwner
}

function sub_f5d4d470(?) {
    return sub_f5d4d470[arg1]
}

function _fallback() payable {
    revert
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

function setHalt(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor1 = Mask(96, 0, arg1)
}

function register(uint256 arg1, address arg2) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    sub_f5d4d470[arg1] = arg2
}

function transferOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function verify(uint256 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6, bytes32 arg7) {
    if not sub_f5d4d470[arg1]:
        revert with 0, 'curveId not correct'
    require ext_code.size(sub_f5d4d470[arg1])
    call sub_f5d4d470[arg1].0x182f875c with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg3, arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
