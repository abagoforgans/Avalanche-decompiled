contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f182d24(?)
#
const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '', 0

const NOT_CURRENT_OWNER = '', 0


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    if not arg1:
        revert with 0, '', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
