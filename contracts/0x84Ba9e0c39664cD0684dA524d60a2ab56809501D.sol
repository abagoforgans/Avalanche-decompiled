contract main {




// =====================  Runtime code  =====================


uint256 currentTime;

function currentTime() payable {
    return currentTime
}

function _fallback() payable {
    revert
}

function retrieveTime() payable {
    currentTime = block.timestamp
    return block.timestamp
}

function sub_f2a6e8a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < block.timestamp:
        revert with 'NH{q', 17
    return (arg1 - block.timestamp)
}



}
