contract main {




// =====================  Runtime code  =====================


#
#  - migrateWithPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9)
#  - migrate(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#
address owner;
address oldRouterAddress;
address routerAddress;
address sub_55135cd6Address;

function sub_55135cd6(?) payable {
    return sub_55135cd6Address
}

function owner() payable {
    return owner
}

function oldRouter() payable {
    return oldRouterAddress
}

function router() payable {
    return routerAddress
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
