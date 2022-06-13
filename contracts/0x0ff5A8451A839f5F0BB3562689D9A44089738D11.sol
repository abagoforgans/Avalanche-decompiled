contract main {




// =====================  Runtime code  =====================


address owner;
uint256 purchaseFeePercentage;
uint256 sub_f3fa3495;

function purchaseFeePercentage() payable {
    return purchaseFeePercentage
}

function owner() payable {
    return owner
}

function sub_f3fa3495(?) payable {
    return sub_f3fa3495
}

function _fallback() payable {
    revert
}

function sub_f72bf8fe(?) payable {
    require calldata.size - 4 >= 96
    if False and sub_f3fa3495 > 0:
        revert with 0, 17
    else:
        return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6efb0961(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3fa3495 = arg1
    emit 0xe8e71e7b: arg1
    return 1
}

function updatePurchaseFeePercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    purchaseFeePercentage = arg1
    emit 0x88c8f67d: arg1
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

function sub_e8468ee4(?) payable {
    require calldata.size - 4 >= 96
    if purchaseFeePercentage and arg3 > -1 / purchaseFeePercentage:
        revert with 0, 17
    if arg1 >= arg2:
        return (purchaseFeePercentage * arg3 / 10^10)
    if arg2 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 100 * arg2 / arg1 < 100:
        revert with 0, 17
    if 100 > !((100 * arg2 / arg1) - 100):
        revert with 0, 17
    if 100 * arg2 / arg1 and purchaseFeePercentage * arg3 / 10^10 > -1 / 100 * arg2 / arg1:
        revert with 0, 17
    return (100 * arg2 / arg1 * purchaseFeePercentage * arg3 / 10^10 / 100)
}



}
