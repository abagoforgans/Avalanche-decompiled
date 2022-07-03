contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint16 bestFriend;

function bestFriend(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bestFriend[arg1]
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
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function sub_6314aae6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bestFriend[arg1] != uint16(arg2):
        revert with 0, 'Not the pair'
    if bestFriend[arg2] != uint16(arg1):
        revert with 0, 'Not the pair'
    bestFriend[arg1] = 65535
    bestFriend[arg2] = 65535
}

function sub_6fd97b5d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == arg2:
        revert with 0, 'Bad input'
    if arg1 == 65535:
        revert with 0, 'Bad input'
    if arg2 == 65535:
        revert with 0, 'Bad input'
    bestFriend[arg1] = uint16(arg2)
    bestFriend[arg2] = uint16(arg1)
}



}
