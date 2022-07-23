contract main {




// =====================  Runtime code  =====================


const getSig = Mask(32, 224, sha3(0xfe7377617028616464726573732c28616464726573732c616464726573732c616464726573732c616464726573732c75696e743235362c75696e743235362c75696e743235362c6279746573292c6279746573)), Mask(32, 224, sha3(Mask(96, 160, 'add(uint256)') >> 160))


function _fallback() payable {
    revert
}

function calc(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return arg1 + 1, arg2 + 1, arg3 + 1
}



}
