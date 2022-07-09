contract main {




// =====================  Runtime code  =====================


#
#  - sub_46ca8da8(?)
#
mapping of uint256 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
mapping of uint8 stor3;

function sub_7a0a228e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_c40571ec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c40571ec[arg1]
}

function sub_f119462d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_f119462d[arg1][arg2]
}

function sub_fa847836(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}



}
