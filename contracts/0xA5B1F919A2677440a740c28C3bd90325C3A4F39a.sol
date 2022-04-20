contract main {




// =====================  Runtime code  =====================


#
#  - createERC20(string arg1, string arg2, uint8 arg3, uint256 arg4)
#
address owner;
mapping of uint8 stor1;
array of address tokens;
address baseTokenAddress;
address feeRecipientAddress;
uint256 createFeeAvax;
uint256 createFeeBaseToken;

function createFeeBaseToken() {
    return createFeeBaseToken
}

function isToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function feeRecipient() {
    return feeRecipientAddress
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function createFeeAvax() {
    return createFeeAvax
}

function totalTokens() {
    return tokens.length
}

function owner() {
    return owner
}

function baseToken() {
    return baseTokenAddress
}

function _fallback() payable {
    revert
}

function getFeeInfo() {
    return baseTokenAddress, feeRecipientAddress, createFeeAvax, createFeeBaseToken
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCreateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    createFeeAvax = arg1
    createFeeBaseToken = arg2
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid _feeRecipient'
    feeRecipientAddress = arg1
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
