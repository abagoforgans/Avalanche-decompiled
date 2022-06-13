contract main {




// =====================  Runtime code  =====================


#
#  - sub_00522cf3(?)
#  - sub_1f96d03b(?)
#  - sub_628b3cc9(?)
#  - sub_83e152de(?)
#  - distributeRemaining()
#  - distribute()
#  - sub_f5a17b20(?)
#
address owner;
address sub_ba156886Address;
address treasuryFundAddress;
address sub_2f62bec4Address;
address sub_97bfabbeAddress;
address sub_67ed8154Address;
uint256 stor7;
array of struct stor8;
mapping of uint256 stor9;
mapping of uint256 sub_c6299ced;
uint256 nextSlash;
uint256 halvingPeriod;
uint256 sub_862a4d47;

function nextSlash() payable {
    return nextSlash
}

function sub_2f62bec4(?) payable {
    return sub_2f62bec4Address
}

function halvingPeriod() payable {
    return halvingPeriod
}

function sub_67ed8154(?) payable {
    return sub_67ed8154Address
}

function sub_862a4d47(?) payable {
    return sub_862a4d47
}

function owner() payable {
    return owner
}

function sub_97bfabbe(?) payable {
    return sub_97bfabbeAddress
}

function sub_ba156886(?) payable {
    return sub_ba156886Address
}

function sub_c6299ced(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c6299ced[arg1]
}

function treasuryFund() payable {
    return treasuryFundAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_83b2a1fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ba156886Address = address(arg1)
}

function setTreasuryFund(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryFundAddress = arg1
    emit 0xfeff2d07: arg1
}

function sub_164a6c6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_97bfabbeAddress = address(arg1)
    emit 0xfeff2d07: address(arg1)
}

function sub_2c442aac(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2f62bec4Address = address(arg1)
    emit 0xfeff2d07: address(arg1)
}

function sub_c967ec98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_67ed8154Address = address(arg1)
    emit 0xfeff2d07: address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1f46d83f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor9[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That member doesn't belong to the dev team'
    sub_c6299ced[address(arg1)] = arg2
    emit 0xdcea6fb7: address(arg1), arg2, stor7
}

function sub_233cb557(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[address(arg1)]:
        revert with 0, 'Member already in'
    if not stor9[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = address(arg1)
        stor8[stor8.length].field_160 = 0
        stor9[address(arg1)] = stor8.length
}

function sub_03305ed6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor9[address(arg1)]:
        revert with 0, 'Member is not part of team'
    if stor9[address(arg1)]:
        if stor9[address(arg1)] < 1:
            revert with 0, 17
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 != stor9[address(arg1)] - 1:
            if stor8.length - 1 >= stor8.length:
                revert with 0, 50
            if stor9[address(arg1)] - 1 >= stor8.length:
                revert with 0, 50
            stor8[stor9[address(arg1)]].field_0 = stor8[stor8.length].field_0
            stor9[stor8[stor8.length].field_0] = stor9[address(arg1)]
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length].field_0 = 0
        stor8.length--
        stor9[address(arg1)] = 0
    sub_c6299ced[address(arg1)] = 0
}



}
