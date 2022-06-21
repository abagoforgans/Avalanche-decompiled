contract main {




// =====================  Runtime code  =====================


address owner;
uint256 seed;
mapping of uint8 stor2;
uint256 stor3;

function seed() payable {
    if not stor2[msg.sender]:
        revert with 0, 'You are not controller'
    return seed
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor2[address(arg1)] = 1
}

function removeController(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor2[address(arg1)] = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function update(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'You are not controller'
    if 1 > !seed:
        revert with 0, 17
    seed++
    return (seed + 1)
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

function getRandomSeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(arg1):
        if seed > -2:
            revert with 0, 17
        seed++
        if arg1 and seed > -1 / arg1:
            revert with 0, 17
        stor3 = arg1 * seed
        if arg1 * seed > -3:
            revert with 0, 17
        stor3 = (arg1 * seed) + 2
    else:
        if seed > -3:
            revert with 0, 17
        seed += 2
        if arg1 and seed > -1 / arg1:
            revert with 0, 17
        stor3 = arg1 * seed
        if arg1 * seed > -2:
            revert with 0, 17
        stor3 = (arg1 * seed) + 1
    return stor3
}



}
