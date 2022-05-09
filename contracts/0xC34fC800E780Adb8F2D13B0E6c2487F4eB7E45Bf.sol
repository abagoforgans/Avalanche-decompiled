contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getBalance() payable {
    return eth.balance(owner)
}



}
