contract main {




// =====================  Runtime code  =====================


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1;
address tokenAddress;
uint256 resaleRewardBP;
uint256 resaleTaxBP;
mapping of uint256 tokenPrice;
uint256 totalSalesCount;
uint256 totalSalesValue;
uint256 richestSaleTokenId;
uint256 richestSalePrice;
mapping of uint256 stor10;
array of uint256 listedTokenByIndex;

function listedTokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= listedTokenByIndex.length:
        revert with 0, 'Index out of range'
    return listedTokenByIndex[arg1]
}

function paused() {
    return bool(paused)
}

function richestSaleTokenId() {
    return richestSaleTokenId
}

function totalSalesCount() {
    return totalSalesCount
}

function richestSalePrice() {
    return richestSalePrice
}

function resaleTaxBP() {
    return resaleTaxBP
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function resaleRewardBP() {
    return resaleRewardBP
}

function totalSalesValue() {
    return totalSalesValue
}

function numTokensListed() {
    return listedTokenByIndex.length
}

function tokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenPrice[arg1]
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

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
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

function priceOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if resaleRewardBP > -resaleTaxBP - 1:
        revert with 'NH{q', 17
    if tokenPrice[arg1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 'NH{q', 17
    if tokenPrice[arg1] > -((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) - 1:
        revert with 'NH{q', 17
    return (tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000))
}

function setResaleTaxAndRewardBP(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if resaleRewardBP > -resaleTaxBP - 1:
        revert with 'NH{q', 17
    if arg2 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg2 + arg1 > resaleRewardBP + resaleTaxBP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total resale fees can only be decreased.'
    if arg1 > resaleTaxBP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Resale tax can only be decreased.'
    resaleRewardBP = arg2
    resaleTaxBP = arg1
}

function revokeSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only the token owner can revoke a sale.'
    if tokenPrice[arg1] <= 0:
        revert with 0, 'Token is not listed for sale.'
    if tokenPrice[arg1] <= 0:
        revert with 0, 'Cannot _removePrice for unlisted token'
    tokenPrice[arg1] = 0
    stor10[arg1] = 0
    if listedTokenByIndex.length < 1:
        revert with 'NH{q', 17
    if stor10[arg1] < listedTokenByIndex.length - 1:
        if listedTokenByIndex.length < 1:
            revert with 'NH{q', 17
        if listedTokenByIndex.length - 1 >= listedTokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg1] >= listedTokenByIndex.length:
            revert with 'NH{q', 50
        listedTokenByIndex[stor10[arg1]] = listedTokenByIndex[listedTokenByIndex.length]
    if not listedTokenByIndex.length:
        revert with 'NH{q', 49
    listedTokenByIndex[listedTokenByIndex.length] = 0
    listedTokenByIndex.length--
    emit 0xee7c2f96: arg1
}

function proposeSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Only the token owner can propose a sale.'
    if arg2 <= 0:
        revert with 0, 'Must propose a non-zero price.'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.getApproved(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0xe985e9c5 with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Market does not have permission to transfer your token.'
    if tokenPrice[arg1] > 0:
        if tokenPrice[arg1] <= 0:
            revert with 0, 'Cannot _removePrice for unlisted token'
        tokenPrice[arg1] = 0
        stor10[arg1] = 0
        if listedTokenByIndex.length < 1:
            revert with 'NH{q', 17
        if stor10[arg1] < listedTokenByIndex.length - 1:
            if listedTokenByIndex.length < 1:
                revert with 'NH{q', 17
            if listedTokenByIndex.length - 1 >= listedTokenByIndex.length:
                revert with 'NH{q', 50
            if stor10[arg1] >= listedTokenByIndex.length:
                revert with 'NH{q', 50
            listedTokenByIndex[stor10[arg1]] = listedTokenByIndex[listedTokenByIndex.length]
        if not listedTokenByIndex.length:
            revert with 'NH{q', 49
        listedTokenByIndex[listedTokenByIndex.length] = 0
        listedTokenByIndex.length--
    if tokenPrice[arg1]:
        revert with 0, 'Must _removePrice before we can _addPrice'
    tokenPrice[arg1] = arg2
    stor10[arg1] = listedTokenByIndex.length
    listedTokenByIndex.length++
    listedTokenByIndex[listedTokenByIndex.length] = arg1
    emit TokenListed(arg2, arg1);
}

function acceptSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if resaleRewardBP > -resaleTaxBP - 1:
        revert with 'NH{q', 17
    if tokenPrice[arg1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 'NH{q', 17
    if tokenPrice[arg1] > -((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) - 1:
        revert with 'NH{q', 17
    if tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This token is not listed for sale.'
    if msg.value > tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'More funds than sale price provided.'
    if msg.value < tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Less funds than sale price provided.'
    if totalSalesCount == -1:
        revert with 'NH{q', 17
    totalSalesCount++
    if totalSalesValue > -tokenPrice[arg1] + -((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) - 1:
        revert with 'NH{q', 17
    totalSalesValue = totalSalesValue + tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)
    if tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) > richestSalePrice:
        richestSaleTokenId = arg1
        richestSalePrice = tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value tokenPrice[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if tokenPrice[arg1] and resaleRewardBP > -1 / tokenPrice[arg1]:
        revert with 'NH{q', 17
    if tokenPrice[arg1] and resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 'NH{q', 17
    if tokenPrice[arg1] * resaleRewardBP / 10000 > -(tokenPrice[arg1] * resaleTaxBP / 10000) - 1:
        revert with 'NH{q', 17
    require ext_code.size(tokenAddress)
    call tokenAddress.saveInRewardFund(uint256 rg1) with:
       value (tokenPrice[arg1] * resaleRewardBP / 10000) + (tokenPrice[arg1] * resaleTaxBP / 10000) wei
         gas gas_remaining wei
        args (tokenPrice[arg1] * resaleRewardBP / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if tokenPrice[arg1] <= 0:
        revert with 0, 'Cannot _removePrice for unlisted token'
    tokenPrice[arg1] = 0
    stor10[arg1] = 0
    if listedTokenByIndex.length < 1:
        revert with 'NH{q', 17
    if stor10[arg1] < listedTokenByIndex.length - 1:
        if listedTokenByIndex.length < 1:
            revert with 'NH{q', 17
        if listedTokenByIndex.length - 1 >= listedTokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg1] >= listedTokenByIndex.length:
            revert with 'NH{q', 50
        listedTokenByIndex[stor10[arg1]] = listedTokenByIndex[listedTokenByIndex.length]
    if not listedTokenByIndex.length:
        revert with 'NH{q', 49
    listedTokenByIndex[listedTokenByIndex.length] = 0
    listedTokenByIndex.length--
    emit TokenSold((tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)), arg1);
    stor1 = 1
}



}
