contract main {




// =====================  Runtime code  =====================


const miner = address(block.coinbase)


function _fallback() payable {
    revert
}



}
