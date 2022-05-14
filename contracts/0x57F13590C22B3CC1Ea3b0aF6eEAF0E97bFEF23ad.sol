contract main {




// =====================  Runtime code  =====================


#
#  - sub_7380726f(?)
#
address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function sub_24b0333c(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not admin'
    stor1[address(arg1)] = 0
}

function sub_cc502e60(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'not admin'
    stor1[address(arg1)] = 1
}



}
