contract main {




// =====================  Runtime code  =====================


address MAIN_CONTRACTAddress;
address UNISWAP_FACTORY_ADDRESS;
address UNISWAP_ROUTER_ADDRESS;
address ADMIN_ADDRESS;
address owner;

function MAIN_CONTRACT() {
    return MAIN_CONTRACTAddress
}

function UNISWAP_ROUTER_ADDRESS() {
    return UNISWAP_ROUTER_ADDRESS
}

function owner() {
    return owner
}

function UNISWAP_FACTORY_ADDRESS() {
    return UNISWAP_FACTORY_ADDRESS
}

function ADMIN_ADDRESS() {
    return ADMIN_ADDRESS
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAdminAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == owner:
        revert with 0, 'VELOXPROXY_ADMIN_OWNER'
    ADMIN_ADDRESS = arg1
    return 1
}

function _fallback() {
    delegate MAIN_CONTRACTAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if delegate.return_code == 1:
        return ext_call.return_data[0 len return_data.size]
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

function setMainContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'VELOXPROXY_CIRCULAR_REFERENCE'
    if not ext_code.size(arg1):
        revert with 0, 'VELOXPROXY_NOT_CONTRACT'
    MAIN_CONTRACTAddress = arg1
    return 1
}



}
