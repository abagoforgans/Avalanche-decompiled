contract main {




// =====================  Runtime code  =====================


uint256 x;
address addr;
uint256 y;
uint256 count;

function x() payable {
    return x
}

function addr() payable {
    return addr
}

function y() payable {
    return y
}

function getCount() payable {
    return count
}

function _fallback() payable {
    revert
}

function setX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    x = arg1
}

function setY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    y = arg1
}

function decrementCounter() payable {
    if count < 0x8000000000000000000000000000000000000000000000000000000000000001:
        revert with 'NH{q', 17
    count--
}

function incrementCounter() payable {
    if count >= 0 and 1 > -count + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if count < 0 and 1 < -count - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 'NH{q', 17
    count++
}



}
