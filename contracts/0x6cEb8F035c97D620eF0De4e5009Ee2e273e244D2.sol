contract main {




// =====================  Runtime code  =====================


function withdraw() payable {
  stop
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}



}
