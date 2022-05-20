contract main {




// =====================  Runtime code  =====================


const sub_c8bf7f0c(?) = (sha3(block.hash(block.number - 4), tx.origin, block.hash(block.number - 2), block.hash(block.number - 3), block.hash(block.number - 1), ext_call.return_data[0] + 1, block.timestamp) % 100)


function _fallback() payable {
    revert
}



}
