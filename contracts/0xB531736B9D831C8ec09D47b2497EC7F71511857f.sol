contract main {




// =====================  Runtime code  =====================


mapping of uint256 items;

function items(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return items[arg1]
}

function _fallback() payable {
    revert
}

function setItem(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    items[arg1] = arg2
    emit ItemSet(arg1, arg2);
}



}
