contract main {




// =====================  Runtime code  =====================


#
#  - sub_07185574(?)
#
mapping of address stor5;
uint256 sub_07a88fef;

function sub_07a88fef(?) payable {
    return sub_07a88fef
}

function _fallback() payable {
    revert
}

function fulfill(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    sub_07a88fef = arg2
}



}
