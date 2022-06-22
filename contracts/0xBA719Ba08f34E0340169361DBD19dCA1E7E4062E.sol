contract main {




// =====================  Runtime code  =====================


const limit = (240 * 10^6 * block.gasprice / 100)


function _fallback() payable {
    revert
}



}
