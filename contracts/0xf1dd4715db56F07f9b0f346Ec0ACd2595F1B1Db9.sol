contract main {




// =====================  Runtime code  =====================


#
#  - sub_7bf5591e(?)
#  - winners(uint256 arg1)
#  - sub_f138740f(?)
#
address owner;
uint256 giveawayCount;

function owner() payable {
    return owner
}

function giveawayCount() payable {
    return giveawayCount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}



}
