contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_9297c530;
uint256 sub_ecc6f5b6;

function owner() payable {
    return owner
}

function sub_9297c530(?) payable {
    return sub_9297c530
}

function sub_ecc6f5b6(?) payable {
    return sub_ecc6f5b6
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

function sub_250f037b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9297c530 = arg1
    emit 0xb2f30b91: sub_9297c530
}

function sub_cc8042c9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ecc6f5b6 = arg1
    emit 0x7675d882: sub_ecc6f5b6
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
