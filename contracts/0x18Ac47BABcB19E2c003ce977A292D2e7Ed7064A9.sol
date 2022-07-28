contract main {




// =====================  Runtime code  =====================


#
#  - sub_d4683c68(?)
#
address owner;
address treasuryAddress;
address sub_49bfcca1Address;
address sub_4d626ed1Address;
address lpAddress;
address swapRouterAddress;
array of address sub_93243509;

function lp() payable {
    return lpAddress
}

function sub_49bfcca1(?) payable {
    return sub_49bfcca1Address
}

function sub_4d626ed1(?) payable {
    return sub_4d626ed1Address
}

function treasury() payable {
    return treasuryAddress
}

function owner() payable {
    return owner
}

function sub_93243509(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_93243509.length
    return sub_93243509[arg1]
}

function swapRouter() payable {
    return swapRouterAddress
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
