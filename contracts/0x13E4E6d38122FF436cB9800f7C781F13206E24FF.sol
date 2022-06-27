contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_ea220135;

function owner() payable {
    return owner
}

function sub_ea220135(?) payable {
    require calldata.size - 4 >= 32
    return sub_ea220135[arg1].field_0, sub_ea220135[arg1].field_256, sub_ea220135[arg1].field_512, sub_ea220135[arg1].field_768
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6c4100a6(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ea220135[address(arg1)].field_0 = arg2
    sub_ea220135[address(arg1)].field_256 = arg3
    sub_ea220135[address(arg1)].field_512 = arg4
    sub_ea220135[address(arg1)].field_768 = arg5
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
