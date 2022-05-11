contract main {




// =====================  Runtime code  =====================


const time = block.timestamp


function _fallback() payable {
    revert
}



}
