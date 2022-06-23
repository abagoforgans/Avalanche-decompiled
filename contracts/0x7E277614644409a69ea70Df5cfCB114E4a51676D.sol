contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_5161a4f4;
mapping of uint8 stor2;
uint256 sub_d4bb4fe3;
address _treasuryAddress;
uint256 sub_c76b7d76;
uint256 sub_35a319fe;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;

function sub_010cc947(?) payable {
    return sub_35a319fe
}

function sub_05326bda(?) payable {
    return sub_d4bb4fe3
}

function sub_0555d39d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_13126223(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function sub_1bfae6f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function sub_2ea7f250(?) payable {
    return sub_c76b7d76
}

function sub_35a319fe(?) payable {
    return sub_35a319fe
}

function getTreasury() payable {
    return _treasuryAddress
}

function sub_5161a4f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5161a4f4[address(arg1)]
}

function sub_823eaf19(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_c76b7d76(?) payable {
    return sub_c76b7d76
}

function sub_cdc383b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5161a4f4[arg1]
}

function sub_d4bb4fe3(?) payable {
    return sub_d4bb4fe3
}

function sub_da964621(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
}

function _treasury() payable {
    return _treasuryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6f901d7f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d4bb4fe3 = arg1
}

function sub_835fed99(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_35a319fe = arg1
}

function sub_29b7905f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor9[address(arg1)]:
        return 1
    return bool(stor8[address(arg1)])
}

function setWithdrawPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c76b7d76 = arg1
}

function sub_17c4223c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(arg1)]:
        return sub_d4bb4fe3
    return sub_5161a4f4[address(arg1)]
}

function updateTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _treasuryAddress = arg1
}

function sub_1739ca33(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5161a4f4[address(arg1)] = arg2
    stor2[address(arg1)] = 1
}

function sub_df47dd48(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(bool(arg2))
}

function sub_4ccdb386(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(bool(arg2))
    stor9[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
