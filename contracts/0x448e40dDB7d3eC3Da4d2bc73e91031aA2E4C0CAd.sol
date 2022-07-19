contract main {




// =====================  Runtime code  =====================


const decimals = 8

const version = 0

const description = 'Mock chainlink feed', 0


uint256 latestAnswer;
uint256 latestTimestamp;

function latestAnswer() payable {
    return latestAnswer
}

function latestTimestamp() payable {
    return latestTimestamp
}

function _fallback() payable {
    revert
}

function latestRoundData() payable {
    return 0, latestAnswer, 0, block.timestamp, 0
}

function getRoundData(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(80, 0, arg1)
    return 0
}

function setLatestAnswer(int256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    latestAnswer = arg1
    latestTimestamp = arg2
}



}
