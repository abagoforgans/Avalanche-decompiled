contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function f2() payable {
    if stor1 > -2:
        revert with 'NH{q', 17
    stor1++
    return stor1
}

function f1() payable {
    if stor0 > -2:
        revert with 'NH{q', 17
    stor0++
    return stor0
}



}
