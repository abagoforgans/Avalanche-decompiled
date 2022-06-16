contract main {




// =====================  Runtime code  =====================


#
#  - sub_16ca16b0(?)
#
address owner;
uint256 CONTRACT_VERSION;
address PRESALE_FACTORYAddress;
address PRESALE_SETTINGSAddress;
address sub_8cf40275Address;
address stor8;
address UNISWAP_FACTORYAddress;
address WETHAddress;
address PRESALE_LOCK_FORWARDERAddress;
address DEV_ADDRESS;

function PRESALE_SETTINGS() {
    return PRESALE_SETTINGSAddress
}

function CONTRACT_VERSION() {
    return CONTRACT_VERSION
}

function DEV_ADDRESS() {
    return DEV_ADDRESS
}

function PRESALE_LOCK_FORWARDER() {
    return PRESALE_LOCK_FORWARDERAddress
}

function sub_8cf40275(?) {
    return sub_8cf40275Address
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function UNISWAP_FACTORY() {
    return UNISWAP_FACTORYAddress
}

function PRESALE_FACTORY() {
    return PRESALE_FACTORYAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1d7f64d9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
}

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    DEV_ADDRESS = arg1
}

function transferOwnership(address arg1) {
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
