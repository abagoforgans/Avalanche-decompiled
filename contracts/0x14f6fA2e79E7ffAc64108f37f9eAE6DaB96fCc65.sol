contract main {




// =====================  Runtime code  =====================


uint8 decimals;
uint256 stor1;

function decimals() payable {
    return decimals
}

function _fallback() payable {
    revert
}

function version() payable {
    revert with 0, 'not implemented'
}

function latestRoundData() payable {
    return 0, stor1, 0, 0, 0
}

function description() payable {
    revert with 0, 'not implemented'
}

function setAnswer(int256 arg1) payable {
    require calldata.size - 4 >= 32
    stor1 = arg1
}

function getRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(80, 0, arg1)
    revert with 0, 'not implemented'
}



}
