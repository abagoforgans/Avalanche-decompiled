contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 10000000 * 10^18
}



}
