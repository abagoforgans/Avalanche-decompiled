contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function update(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the game'
    if arg1:
        stor2 = arg1
}

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function seed() payable {
    if block.timestamp > 0x70bcec987b87013d13596cdb6bb37bc66b82291ee8cc1e0e5e13a6eebe148:
        revert with 0, 17
    if 49297 > !(9301 * block.timestamp):
        revert with 0, 17
    if stor2 and (9301 * block.timestamp) + 49297 % 233280 / 233280 > -1 / stor2:
        revert with 0, 17
    return (stor2 * (9301 * block.timestamp) + 49297 % 233280 / 233280)
}

function transferOwnership(address arg1) payable {
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
