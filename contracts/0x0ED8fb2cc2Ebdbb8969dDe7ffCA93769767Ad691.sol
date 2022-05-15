contract main {




// =====================  Runtime code  =====================


#
#  - sub_ea1129ee(?)
#
array of uint256 stor1;
array of uint256 stor128;
array of uint256 stor129;

function gs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 64
    return stor[2 * arg1], stor1[arg1]
}

function _fallback() payable {
    revert
}

function hs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 64
    return stor128[arg1], stor129[arg1]
}



}
