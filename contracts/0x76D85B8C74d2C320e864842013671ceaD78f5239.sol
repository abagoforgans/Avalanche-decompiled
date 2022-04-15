contract main {




// =====================  Runtime code  =====================


#
#  - prepareMessage(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11)
#  - prepareBuyerFeeMessage(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12)
#  - exchange(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint8 arg12, bytes32 arg13, bytes32 arg14, uint256 arg15, uint8 arg16, bytes32 arg17, bytes32 arg18, uint256 arg19, address arg20)
#  - cancel(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, address arg6, uint256 arg7, uint8 arg8)
#
address owner;
address beneficiaryAddress;
address buyerFeeSignerAddress;
address transferProxyAddress;
address transferProxyForDeprecatedAddress;
address erc20TransferProxyAddress;
address stateAddress;
address ordersHolderAddress;

function transferProxyForDeprecated() {
    return transferProxyForDeprecatedAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function buyerFeeSigner() {
    return buyerFeeSignerAddress
}

function transferProxy() {
    return transferProxyAddress
}

function owner() {
    return owner
}

function ordersHolder() {
    return ordersHolderAddress
}

function state() {
    return stateAddress
}

function erc20TransferProxy() {
    return erc20TransferProxyAddress
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

function setBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    beneficiaryAddress = arg1
}

function setBuyerFeeSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyerFeeSignerAddress = arg1
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
