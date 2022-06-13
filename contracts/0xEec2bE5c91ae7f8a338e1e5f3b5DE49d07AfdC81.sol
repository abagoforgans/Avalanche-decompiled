contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_8843be74;

function getVolatility() payable {
    if 0 == sub_8843be74:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VolatilityOracle: Last volatility == 0'
    return sub_8843be74
}

function sub_8843be74(?) payable {
    return sub_8843be74
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

function sub_2834a7c8(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VolatilityOracle: Volatility cannot be 0'
    sub_8843be74 = arg1
    emit 0x1276a26a: arg1
    return arg1
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
