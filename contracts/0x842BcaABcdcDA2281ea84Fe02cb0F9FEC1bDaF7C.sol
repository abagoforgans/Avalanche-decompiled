contract main {




// =====================  Runtime code  =====================


#
#  - migration(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8)
#
address owner;
address oldRouterAddress;
address sub_105bf2c4Address;

function sub_105bf2c4(?) payable {
    return sub_105bf2c4Address
}

function owner() payable {
    return owner
}

function oldRouter() payable {
    return oldRouterAddress
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
