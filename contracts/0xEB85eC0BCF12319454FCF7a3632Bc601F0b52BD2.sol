contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getSeed() payable {
    emit 0xf52a2f7a: sha3(block.timestamp, msg.sender, block.hash(block.number), 42)
}



}
