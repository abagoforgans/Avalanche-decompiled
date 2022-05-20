contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_123660e3(?) payable {
    require calldata.size - 4 >= 32
    if block.number < 4:
        revert with 'NH{q', 17
    if block.number < 2:
        revert with 'NH{q', 17
    if block.number < 3:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    return sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), arg1, block.timestamp)
}



}
