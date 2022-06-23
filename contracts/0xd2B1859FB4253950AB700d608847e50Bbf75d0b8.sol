contract main {




// =====================  Runtime code  =====================


uint256 balance;

function getBalance() {
    return balance
}

function _fallback() payable {
    revert
}

function deposit(int256 arg1) {
    balance += arg1
}

function withdraw(int256 arg1) {
    balance -= arg1
}



}
