contract main {




// =====================  Runtime code  =====================


const getBlockTime = block.timestamp


uint256 time;

function getTime() payable {
    return time
}

function _fallback() payable {
    revert
}

function setTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    time = arg1
}

function test() payable {
    if time >= block.timestamp:
        revert with 0, 'Not started.'
}



}
