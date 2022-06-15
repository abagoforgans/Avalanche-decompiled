contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function update(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0 = arg1
}

function seed() payable {
    return sha3(block.difficulty, block.timestamp, msg.sender, stor0)
}



}
