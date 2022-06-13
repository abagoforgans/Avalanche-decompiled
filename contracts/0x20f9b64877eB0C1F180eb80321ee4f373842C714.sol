contract main {




// =====================  Runtime code  =====================


#
#  - getOptionPrice(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
address owner;
uint256 sub_05e927df;
uint256 minOptionPricePercentage;

function sub_05e927df(?) payable {
    return sub_05e927df
}

function minOptionPricePercentage() payable {
    return minOptionPricePercentage
}

function owner() payable {
    return owner
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

function sub_ad1ad5dc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_05e927df = arg1
    return 1
}

function sub_326611f8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minOptionPricePercentage = arg1
    return 1
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



}
