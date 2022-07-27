contract main {




// =====================  Runtime code  =====================


uint256 number;

function number() payable {
    return number
}

function reset() payable {
    number = 0
}

function _fallback() payable {
    revert
}

function increment(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if number > -arg1 - 1:
        revert with 'NH{q', 17
    number += arg1
}



}
