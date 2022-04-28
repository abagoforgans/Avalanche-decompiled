contract main {




// =====================  Runtime code  =====================


uint256 retrieve1;
uint256 retrieve2;

function retrieve2() payable {
    return retrieve2
}

function retrieve1() payable {
    return retrieve1
}

function _fallback() payable {
    revert
}

function store1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve1 = arg1
}

function store2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve2 = arg1
}



}
