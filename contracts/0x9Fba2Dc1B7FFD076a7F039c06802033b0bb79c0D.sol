contract main {




// =====================  Runtime code  =====================


function showBal() {
    emit 0x8008cee1: eth.balance(this.address), Array(len=24, data='Inside showBal function.')
}

function _fallback() payable {
    emit 0x8008cee1: eth.balance(this.address), Array(len=24, data='Inside showBal function.')
}



}
