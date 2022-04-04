contract main {




// =====================  Runtime code  =====================


function a() payable {
  stop
}

function _fallback() payable {
    revert
}



}
