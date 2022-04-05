contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
uint256 tokenDecimals;
uint256 tokenRatePerEth;
uint256 rateDecimals;
uint256 minEthLimit;
uint256 maxEthLimit;
mapping of uint256 usersInvestments;

function rateDecimals() {
    return rateDecimals
}

function tokenDecimals() {
    return tokenDecimals
}

function owner() {
    return owner
}

function usersInvestments(address arg1) {
    require calldata.size - 4 >= 32
    return usersInvestments[arg1]
}

function tokenAddress() {
    return tokenAddress
}

function tokenRatePerEth() {
    return tokenRatePerEth
}

function isPresaleOpen() {
    return bool(uint8(stor0.field_160))
}

function minEthLimit() {
    return minEthLimit
}

function maxEthLimit() {
    return maxEthLimit
}

function _fallback() payable {
    revert
}

function setMinEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minEthLimit = arg1
}

function setMaxEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    maxEthLimit = arg1
}

function setRateDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    rateDecimals = arg1
}

function setTokenDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenDecimals = arg1
}

function setTokenRatePerEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenRatePerEth = arg1
}

function startPresale() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0, 'Presale is open'
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function closePrsale() {
    require msg.sender == owner
    if not uint8(stor0.field_160):
        revert with 0, 'Presale is not open yet.'
    Mask(96, 0, stor0.field_160) = 0
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if tokenAddress:
        revert with 0, 'Token address is already set.'
    if not arg1:
        revert with 0, 'Token address zero not allowed.'
    tokenAddress = arg1
}

function burnUnsoldTokens() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x21596f752063616e6e6f74206275726e20746f6b656e7320756e7469746c207468652070726573616c6520697320636c6f736564,
                    mem[216 len 12]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.burnTokens(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnsoldTokens() {
    require msg.sender == owner
    if uint8(stor0.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe596f752063616e6e6f742067657420746f6b656e7320756e74696c207468652070726573616c6520697320636c6f736564,
                    mem[214 len 14]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
