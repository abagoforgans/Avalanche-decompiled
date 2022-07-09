contract main {




// =====================  Runtime code  =====================


#
#  - sub_32d6aff9(?)
#  - sub_407045a8(?)
#  - sub_987d6de7(?)
#  - sub_ddb27633(?)
#
const getId = 112233


mapping of uint256 sub_f119462d;
mapping of uint8 stor1;
mapping of uint256 sub_c40571ec;
address sub_277f45d1Address;

function sub_277f45d1(?) payable {
    return sub_277f45d1Address
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
