contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function random(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sha3(arg1, block.timestamp, block.difficulty, msg.sender, gas_remaining)
}



}
