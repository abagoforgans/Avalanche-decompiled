contract main {




// =====================  Runtime code  =====================


address owner;
address callerAddress;
uint256 stor2;

function owner() payable {
    return owner
}

function caller() payable {
    return callerAddress
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

function changeCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    callerAddress = arg1
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

function getRandomNumber() payable {
    if callerAddress != msg.sender:
        revert with 0, 'NOT CALLER'
    if 1 > !(uint128(sha3(block.timestamp, stor2)) >> 128 % 200):
        revert with 0, 17
    if block.number < (uint128(sha3(block.timestamp, stor2)) >> 128 % 200) + 1:
        revert with 0, 17
    if 1 > !((uint128(sha3(block.timestamp, stor2)) >> 128 % 200) + 1):
        revert with 0, 17
    if not (uint128(sha3(block.timestamp, stor2)) >> 128 % 200) + 2:
        revert with 0, 18
    stor2 = sha3(stor2 / (uint128(sha3(block.timestamp, stor2)) >> 128 % 200) + 2, sha3(block.hash(block.number + -(uint128(sha3(block.timestamp, stor2)) >> 128 % 200) - 1), sha3(tx.origin, stor2))) xor sha3(block.hash(block.number + -(uint128(sha3(block.timestamp, stor2)) >> 128 % 200) - 1), sha3(tx.origin, stor2))
    return (sha3(stor2 / (uint128(sha3(block.timestamp, stor2)) >> 128 % 200) + 2, sha3(block.hash(block.number + -(uint128(sha3(block.timestamp, stor2)) >> 128 % 200) - 1), sha3(tx.origin, stor2))) xor sha3(block.hash(block.number + -(uint128(sha3(block.timestamp, stor2)) >> 128 % 200) - 1), sha3(tx.origin, stor2)))
}



}
