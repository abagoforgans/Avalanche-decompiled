contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function revertCall() payable {
    revert with 0, 'welp'
}



}
