contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
uint256 sub_a91f4cf6;
uint8 stor4;
uint8 stor4; offset 8
address tokenAddress; offset 16
uint256 tokenDecimals;
address stor6;
uint256 tokenRatePerEth;
uint256 sub_f0580a69;
uint256 rateDecimals;
uint256 stor10;
uint256 minEthLimit;
uint256 maxEthLimit;
mapping of uint256 usersInvestments;
address recipientAddress;

function rateDecimals() {
    return rateDecimals
}

function isPresalePaused() {
    return bool(uint8(stor4.field_8))
}

function tokenDecimals() {
    return tokenDecimals
}

function recipient() {
    return recipientAddress
}

function owner() {
    return owner
}

function usersInvestments(address arg1) {
    require calldata.size - 4 >= 32
    return usersInvestments[arg1]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function tokenAddress() {
    return tokenAddress
}

function sub_a91f4cf6(?) {
    return sub_a91f4cf6
}

function tokenRatePerEth() {
    return tokenRatePerEth
}

function isPresaleOpen() {
    return bool(uint8(stor4.field_0))
}

function sub_f0580a69(?) {
    return sub_f0580a69
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

function sub_29725011(?) {
    require calldata.size - 4 >= 32
    sub_a91f4cf6 = arg1
}

function isDev(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == stor6)
}

function newDev(address arg1) {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, '!Developer'
    stor6 = arg1
}

function setDevFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 != msg.sender:
        revert with 0, '!Developer'
    stor10 = arg1
}

function setMinEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    minEthLimit = arg1
}

function setMaxEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    maxEthLimit = arg1
}

function setRateDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    rateDecimals = arg1
}

function setRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    recipientAddress = arg1
}

function setTokenDecimals(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    tokenDecimals = arg1
}

function setTokenRatePerEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    tokenRatePerEth = arg1
}

function startPresale() {
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if uint8(stor4.field_0):
        revert with 0, 'Presale is open'
    uint8(stor4.field_0) = 1
}

function closePresale() {
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if not uint8(stor4.field_0):
        revert with 0, 'Presale is not open yet.'
    uint8(stor4.field_0) = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    owner = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function addAddressToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function pausePresale() {
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if not uint8(stor4.field_0):
        revert with 0, 'Presale is not open yet.'
    if uint8(stor4.field_8):
        revert with 0, 'Presale is already paused.'
    uint8(stor4.field_8) = 1
}

function removeAddressFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if not stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function resumePresale() {
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if not uint8(stor4.field_0):
        revert with 0, 'Presale is not open yet.'
    if not uint8(stor4.field_8):
        revert with 0, 'Presale is already resumed'
    uint8(stor4.field_8) = 0
}

function getLatestPrice() {
    require ext_code.size(stor1)
    staticcall stor1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[32]
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if tokenAddress:
        revert with 0, 'Token address is already set.'
    if not arg1:
        revert with 0, 'Token address zero not allowed.'
    tokenAddress = arg1
}

function burnUnsoldTokens() {
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if uint8(stor4.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x21596f752063616e6e6f74206275726e20746f6b656e7320756e74696c207468652070726573616c6520697320636c6f736564,
                    mem[215 len 13]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnsoldTokens() {
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    if uint8(stor4.field_0):
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

function addAddressesToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Only Owner!'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if stor2[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function removeAddressesFromWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Only Owner!'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'Only Owner!'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}



}
