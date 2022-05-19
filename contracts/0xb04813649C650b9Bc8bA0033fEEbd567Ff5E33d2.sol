contract main {




// =====================  Runtime code  =====================


uint256 readData;

function readData() payable {
    return readData
}

function _fallback() payable {
    revert
}

function updateData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    readData = arg1
}



}
