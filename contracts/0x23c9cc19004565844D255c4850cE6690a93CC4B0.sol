contract main {




// =====================  Runtime code  =====================


#
#  - bestSwapUseFtm(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, string[] arg6)
#  - getMUtilExBestExactOut(uint256 arg1, uint256 arg2, address arg3, address arg4)
#  - getMUtilExBestExactIn(uint256 arg1, uint256 arg2, address arg3, address arg4)
#
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
