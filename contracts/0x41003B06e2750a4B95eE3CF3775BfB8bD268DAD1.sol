contract main {




// =====================  Runtime code  =====================


mapping of address ownerOf;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerOf[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not ownerOf[arg1]
}



}
