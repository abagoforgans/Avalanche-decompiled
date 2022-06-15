contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_eb3c5eed;
mapping of uint256 sub_db37ecaa;

function sub_5597c63d(?) payable {
    require calldata.size - 4 >= 32
    return sub_db37ecaa[arg1]
}

function sub_65e5809f(?) payable {
    require calldata.size - 4 >= 32
    return sub_eb3c5eed[arg1]
}

function owner() payable {
    return owner
}

function sub_db37ecaa(?) payable {
    require calldata.size - 4 >= 32
    return sub_db37ecaa[arg1]
}

function sub_eb3c5eed(?) payable {
    require calldata.size - 4 >= 32
    return sub_eb3c5eed[arg1]
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

function sub_a9a20306(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_eb3c5eed[arg1] = arg2
}

function sub_d54dc6ec(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_db37ecaa[arg1] = arg2
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
