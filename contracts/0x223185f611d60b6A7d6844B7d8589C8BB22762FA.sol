contract main {




// =====================  Runtime code  =====================


address owner;
uint256 seed;
address stor2;

function seed() payable {
    return seed
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function update(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Yo!'
    seed = seed xor arg1
    return seed
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
