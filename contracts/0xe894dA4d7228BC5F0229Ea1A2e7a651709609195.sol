contract main {




// =====================  Runtime code  =====================


uint256 epoch;
uint256 counter;

function counter() payable {
    return counter
}

function epoch() payable {
    return epoch
}

function _fallback() payable {
    revert
}

function readTest() payable {
    if block.timestamp < epoch:
        revert with 0, 'NR'
    return 1
}

function resetEpoch() payable {
    if block.timestamp > -51:
        revert with 'NH{q', 17
    epoch = block.timestamp + 50
}



}
