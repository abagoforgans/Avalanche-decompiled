contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0 = arg1
}

function add(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 > -arg1 - 1:
        revert with 'NH{q', 17
    stor0 += arg1
}

function retrieve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 > -arg1 - 1:
        revert with 'NH{q', 17
    return (stor0 + arg1)
}

function sub_30071af7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 > -arg1 - 1:
        revert with 'NH{q', 17
    emit 0x50036bc0: (stor0 + arg1)
    return (stor0 + arg1)
}



}
