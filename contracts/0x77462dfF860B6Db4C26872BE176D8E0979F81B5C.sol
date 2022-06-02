contract main {




// =====================  Runtime code  =====================


uint256 latestAnswer;

function latestAnswer() payable {
    return latestAnswer
}

function _fallback() payable {
    revert
}

function set(int256 arg1) payable {
    require calldata.size - 4 >= 32
    latestAnswer = arg1
}



}
