contract main {




// =====================  Runtime code  =====================


address owner;
array of struct referrerAtIndex;
mapping of uint256 stor2;
address sub_a46663edAddress;

function getReferrerAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if referrerAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= referrerAtIndex.length:
        revert with 'NH{q', 50
    return referrerAtIndex[arg1].field_0
}

function sub_781e65e3(?) payable {
    return sub_a46663edAddress
}

function owner() payable {
    return owner
}

function sub_a46663ed(?) payable {
    return sub_a46663edAddress
}

function allowedReferrersLength() payable {
    return referrerAtIndex.length
}

function _fallback() payable {
    revert
}

function referrerIsValid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return not not stor2[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDefaultReferrer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a46663edAddress = arg1
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

function editAllowedReferrers(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if not stor2[address(arg1)]:
            referrerAtIndex.length++
            referrerAtIndex[referrerAtIndex.length].field_0 = arg1
            referrerAtIndex[referrerAtIndex.length].field_160 = 0
            stor2[address(arg1)] = referrerAtIndex.length
    else:
        if stor2[address(arg1)]:
            if stor2[address(arg1)] < 1:
                revert with 'NH{q', 17
            if referrerAtIndex.length < 1:
                revert with 'NH{q', 17
            if referrerAtIndex.length - 1 >= referrerAtIndex.length:
                revert with 'NH{q', 50
            if stor2[address(arg1)] - 1 >= referrerAtIndex.length:
                revert with 'NH{q', 50
            referrerAtIndex[stor2[address(arg1)]].field_0 = referrerAtIndex[referrerAtIndex.length].field_0
            if stor2[address(arg1)] - 1 > -2:
                revert with 'NH{q', 17
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
            if not referrerAtIndex.length:
                revert with 'NH{q', 49
            referrerAtIndex[referrerAtIndex.length].field_0 = 0
            referrerAtIndex.length--
            stor2[address(arg1)] = 0
}



}
