contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isContract(address arg1) {
    require calldata.size - 4 >= 32
    return (ext_code.size(arg1) > 0)
}



}
