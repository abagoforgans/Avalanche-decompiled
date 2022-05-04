contract main {




// =====================  Runtime code  =====================


const getTimestamp = block.timestamp

const getBlock = block.number


function _fallback() payable {
    revert
}



}
