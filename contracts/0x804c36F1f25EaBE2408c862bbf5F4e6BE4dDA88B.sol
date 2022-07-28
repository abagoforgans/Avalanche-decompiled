contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_4d74e4ff;
uint256 sub_d60c66be;
uint256 sub_c0ce6238;
uint256 sub_64665b44;

function sub_1c4144e9(?) payable {
    return sub_c0ce6238
}

function sub_3ddf9e39(?) payable {
    return sub_4d74e4ff
}

function sub_4d74e4ff(?) payable {
    return sub_4d74e4ff
}

function sub_5f4370a5(?) payable {
    return sub_64665b44
}

function sub_64665b44(?) payable {
    return sub_64665b44
}

function sub_6e16399c(?) payable {
    return sub_d60c66be
}

function owner() payable {
    return owner
}

function sub_c0ce6238(?) payable {
    return sub_c0ce6238
}

function sub_d60c66be(?) payable {
    return sub_d60c66be
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

function sub_11c6a732(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_64665b44 = arg1
}

function sub_7888d755(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d60c66be = arg1
}

function sub_7ea0b585(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c0ce6238 = arg1
}

function sub_90c6770d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4d74e4ff = arg1
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
