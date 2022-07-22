contract main {




// =====================  Runtime code  =====================


#
#  - fetchPrice()
#  - fetchPrice_v()
#
address owner;
address sub_30524bb2Address;
address sub_40eafef5Address;
address pairAddress;
uint256 shift;
uint8 stor5;

function shift() payable {
    return shift
}

function sub_30524bb2(?) payable {
    return sub_30524bb2Address
}

function sub_40eafef5(?) payable {
    return sub_40eafef5Address
}

function sub_896de99a(?) payable {
    return bool(stor5)
}

function owner() payable {
    return owner
}

function pair() payable {
    return pairAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_06287db4(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    sub_30524bb2Address = arg1
    sub_40eafef5Address = arg2
    pairAddress = arg3
}

function sub_34ea86a0(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    sub_30524bb2Address = arg1
    sub_40eafef5Address = arg3
    pairAddress = arg5
    if uint32(arg4 + arg2) <= 36:
        stor5 = 1
        shift = 10^(-uint32(arg4 + arg2) + 36)
    else:
        stor5 = 0
        shift = 10^(uint32(arg4 + arg2) - 36)
}



}
