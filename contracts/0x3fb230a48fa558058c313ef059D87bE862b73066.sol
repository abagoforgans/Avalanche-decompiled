contract main {




// =====================  Runtime code  =====================


function go(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}



}
