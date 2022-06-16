contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(ext_code.size(arg1))
}



}
