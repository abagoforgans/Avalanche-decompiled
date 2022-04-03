contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


function _fallback() payable {
    revert
}



}
