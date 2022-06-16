contract main {




// =====================  Runtime code  =====================


uint256 account;

function count() {
    return account
}

function getAccount() {
    return account
}

function _fallback() payable {
    revert
}

function decrement() {
    account--
    emit Decrement(account);
}

function increment() {
    account++
    emit Increment(account);
}



}
