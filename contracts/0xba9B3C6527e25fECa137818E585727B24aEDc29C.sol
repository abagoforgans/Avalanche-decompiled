contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_1dc43774;

function sub_1dc43774(?) payable {
    return sub_1dc43774
}

function owner() payable {
    return owner
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

function getRandomSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0xaab86d52fd256bbd45751fa1a4571067de0a24e0 != tx.origin:
        revert with 0, 'no admin'
    sub_1dc43774 = sha3(sub_1dc43774 xor arg1, block.timestamp)
    return (sub_1dc43774 xor block.timestamp)
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
