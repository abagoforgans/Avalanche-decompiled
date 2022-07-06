contract main {




// =====================  Runtime code  =====================


uint256 retrieve;
address owner;
uint256 hash;

function retrieve() {
    return retrieve
}

function getOwner() {
    return owner
}

function getHash() {
    return hash
}

function _fallback() payable {
    revert
}

function pay() payable {
    if owner != msg.sender:
        revert with 0, 'Wrong accout'
    return 1
}

function store(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    retrieve = arg1
}

function divide(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 / 2)
}

function sub_004882dc(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    hash = sha3(arg1, arg2)
}

function multiply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if Mask(255, 1, arg1) and 5 > -1 / arg1 / 2:
        revert with 'NH{q', 17
    return (5 * arg1 / 2)
}



}
