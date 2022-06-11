contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getRandom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(block.difficulty, block.timestamp, arg1)
}



}
