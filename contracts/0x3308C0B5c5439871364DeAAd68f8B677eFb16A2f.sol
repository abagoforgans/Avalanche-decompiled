contract main {




// =====================  Runtime code  =====================


uint256 value;

function value() payable {
    return value
}

function _fallback() payable {
    revert
}

function setValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    value = arg1
    return value
}



}
