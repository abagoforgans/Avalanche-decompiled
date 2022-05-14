contract main {




// =====================  Runtime code  =====================


const retrieve = block.timestamp


uint256 stor0;

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0 = arg1
}



}
