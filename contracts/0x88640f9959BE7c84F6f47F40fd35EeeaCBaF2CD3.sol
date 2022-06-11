contract main {




// =====================  Runtime code  =====================


uint256 count;

function getCount() {
    return count
}

function _fallback() payable {
    revert
}

function decrement() {
    count--
    emit Decrement(count);
}

function increment() {
    count++
    emit Increment(count);
}



}
