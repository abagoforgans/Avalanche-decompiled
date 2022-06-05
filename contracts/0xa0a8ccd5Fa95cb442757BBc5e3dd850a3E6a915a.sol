contract main {




// =====================  Runtime code  =====================


#
#  - sub_5cd44c79(?)
#
address owner;
address sub_6ff19239Address;
address sub_8870455fAddress;
address moderatorAddress;

function moderator() payable {
    return moderatorAddress
}

function sub_6ff19239(?) payable {
    return sub_6ff19239Address
}

function sub_8870455f(?) payable {
    return sub_8870455fAddress
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

function sub_c5d2747f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6ff19239Address = address(arg1)
    sub_8870455fAddress = address(arg2)
    moderatorAddress = address(arg3)
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
