contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint256 stor1;
mapping of address stor2;

function _fallback() payable {
    revert
}

function setUint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    stor1[address(msg.sender)][arg1] = arg2
}

function setAddr(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    stor2[address(msg.sender)][arg1] = arg2
}

function setBytes(uint256 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    stor0[address(msg.sender)][arg1] = arg2
}

function getUint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor1[address(msg.sender)][arg1] = 0
    return stor1[address(msg.sender)][arg1]
}

function getAddr(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor2[address(msg.sender)][arg1] = 0
    return stor2[address(msg.sender)][arg1]
}

function getBytes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor0[address(msg.sender)][arg1] = 0
    return stor0[address(msg.sender)][arg1]
}



}
