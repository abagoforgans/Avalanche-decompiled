contract main {




// =====================  Runtime code  =====================


#
#  - proposeSale(uint256 arg1, uint256 arg2)
#
const MAX_MINT_AMOUNT = 20


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor7;
array of uint256 tokenByIndex;
mapping of uint256 stor9;
uint8 paused; offset 160
address owner;
uint256 stor11;
uint256 maxSupply;
uint256 reservedSupply;
uint256 mintPrice;
uint256 mintRewardBP;
uint256 resaleRewardBP;
uint256 resaleTaxBP;
array of uint256 stor18;
mapping of uint256 stor19;
uint256 stor20;
uint256 rewardFund;
mapping of uint256 tokenPrice;
uint256 totalSalesCount;
uint256 totalSalesValue;
uint256 richestSaleTokenId;
uint256 richestSalePrice;
uint256 totalAwardCount;
uint256 totalAwardAmount;
uint256 cheapestTokenIdListed;
uint256 richestTokenIdListed;
mapping of uint256 nextByPrice;
mapping of uint256 prevByPrice;
uint256 numTokensListed;
uint8 presaleStarted;
uint256 presaleMintPrice;
address stor36;
address stor37;
uint256 stor38;
uint256 stor39;

function presaleStarted() {
    return bool(presaleStarted)
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function nextByPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return nextByPrice[arg1]
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function totalAwardAmount() {
    return totalAwardAmount
}

function richestTokenIdListed() {
    return richestTokenIdListed
}

function reservedSupply() {
    return reservedSupply
}

function exists(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(ownerOf[arg1])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function presaleMintPrice() {
    return presaleMintPrice
}

function paused() {
    return bool(paused)
}

function richestSaleTokenId() {
    return richestSaleTokenId
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function mintPrice() {
    return mintPrice
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
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

function prevByPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return prevByPrice[arg1]
}

function owner() {
    return owner
}

function mintRewardBP() {
    return mintRewardBP
}

function totalAwardCount() {
    return totalAwardCount
}

function resaleRewardBP() {
    return resaleRewardBP
}

function totalSalesValue() {
    return totalSalesValue
}

function numTokensListed() {
    return numTokensListed
}

function tokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenPrice[arg1]
}

function maxSupply() {
    return maxSupply
}

function cheapestTokenIdListed() {
    return cheapestTokenIdListed
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function rewardFund() {
    return rewardFund
}

function _fallback() payable {
    revert
}

function treasuryFunds() {
    if eth.balance(this.address) < rewardFund:
        revert with 0, 17
    return (eth.balance(this.address) - rewardFund)
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
    paused = 1
    emit Paused(msg.sender);
}

function stopPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not presaleStarted:
        revert with 0, 'Presale not started.'
    presaleStarted = 0
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function startPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if presaleStarted:
        revert with 0, 'Presale already started.'
    presaleStarted = 1
    emit PresaleStarted()
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function setMintRewardBP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= mintRewardBP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Mint rewards can only be increased.'
    mintRewardBP = arg1
}

function saveInRewardFund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot save more rewards than are present in the transaction.'
    if rewardFund > !arg1:
        revert with 0, 17
    rewardFund += arg1
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
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 0, 17
    if tokenPrice[arg1] > !((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0, 17
    return (tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000))
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setResaleTaxAndRewardBP(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if arg2 > !arg1:
        revert with 0, 17
    if arg2 + arg1 > resaleRewardBP + resaleTaxBP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total resale fees can only be decreased.'
    if arg1 > resaleTaxBP:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Resale tax can only be decreased.'
    resaleRewardBP = arg2
    resaleTaxBP = arg1
}

function withdrawTreasuryFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if eth.balance(this.address) < rewardFund:
        revert with 0, 17
    if arg1 > eth.balance(this.address) - rewardFund:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient balance to withdraw.'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor11 = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function revokeSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the token owner can revoke a sale.'
    if not tokenPrice[arg1]:
        revert with 0, 'Token is not listed for sale.'
    if not tokenPrice[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot _removePrice for unlisted token'
    tokenPrice[arg1] = 0
    if not numTokensListed:
        revert with 0, 17
    numTokensListed--
    if arg1 == cheapestTokenIdListed:
        cheapestTokenIdListed = nextByPrice[arg1]
    if arg1 == richestTokenIdListed:
        richestTokenIdListed = prevByPrice[arg1]
    if prevByPrice[arg1]:
        nextByPrice[stor32[arg1]] = nextByPrice[arg1]
    if nextByPrice[arg1]:
        prevByPrice[stor31[arg1]] = prevByPrice[arg1]
    emit 0xee7c2f96: arg1
}

function assignRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > rewardFund:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient unassigned rewards in fund.'
    if tokenByIndex.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No token holders to receive rewards!'
    if block.number < 1:
        revert with 0, 17
    if not tokenByIndex.length:
        revert with 0, 18
    if sha3(msg.sender, block.gasprice, block.number, block.timestamp, block.hash(block.number - 1)) % tokenByIndex.length >= tokenByIndex.length:
        revert with 0, 'ERC721Enumerable: global index out of bounds'
    if not ownerOf[stor8[sha3(msg.sender, block.gasprice, block.number, block.timestamp, block.hash(block.number - 1)) % stor8.length]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    call ownerOf[stor8[sha3(msg.sender, block.gasprice, block.number, block.timestamp, block.hash(block.number - 1)) % stor8.length]] with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if rewardFund < arg1:
        revert with 0, 17
    rewardFund -= arg1
    if totalAwardCount == -1:
        revert with 0, 17
    totalAwardCount++
    if totalAwardAmount > !arg1:
        revert with 0, 17
    totalAwardAmount += arg1
    emit 0x747b5f14: arg1, tokenByIndex[sha3(msg.sender, block.gasprice, block.number, block.timestamp, block.hash(block.number - 1)) % tokenByIndex.length]
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor0.length.field_1 % 128:
                if 31 < stor0.length.field_1 % 128:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor0.length.field_1 % 128:
            if 31 < stor0.length.field_1 % 128:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    mem[ceil32(stor0.length.field_1 % 128) + 192 len ceil32(stor0.length.field_1 % 128)] = mem[128 len ceil32(stor0.length.field_1 % 128)]
    if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
        mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor1.length.field_1 % 128:
                if 31 < stor1.length.field_1 % 128:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor1.length.field_1 % 128:
            if 31 < stor1.length.field_1 % 128:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    mem[ceil32(stor1.length.field_1 % 128) + 192 len ceil32(stor1.length.field_1 % 128)] = mem[128 len ceil32(stor1.length.field_1 % 128)]
    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg3] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg3]:
        revert with 0, 17
    if tokenPrice[arg3] > !((resaleRewardBP * tokenPrice[arg3]) + (resaleTaxBP * tokenPrice[arg3]) / 10000):
        revert with 0, 17
    if tokenPrice[arg3] + ((resaleRewardBP * tokenPrice[arg3]) + (resaleTaxBP * tokenPrice[arg3]) / 10000) > 0:
        if not tokenPrice[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot _removePrice for unlisted token'
        tokenPrice[arg3] = 0
        if not numTokensListed:
            revert with 0, 17
        numTokensListed--
        if arg3 == cheapestTokenIdListed:
            cheapestTokenIdListed = nextByPrice[arg3]
        if arg3 == richestTokenIdListed:
            richestTokenIdListed = prevByPrice[arg3]
        if prevByPrice[arg3]:
            nextByPrice[stor32[arg3]] = nextByPrice[arg3]
        if nextByPrice[arg3]:
            prevByPrice[stor31[arg3]] = prevByPrice[arg3]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg3] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg3]:
        revert with 0, 17
    if tokenPrice[arg3] > !((resaleRewardBP * tokenPrice[arg3]) + (resaleTaxBP * tokenPrice[arg3]) / 10000):
        revert with 0, 17
    if tokenPrice[arg3] + ((resaleRewardBP * tokenPrice[arg3]) + (resaleTaxBP * tokenPrice[arg3]) / 10000) > 0:
        if not tokenPrice[arg3]:
            revert with 0, 'Cannot _removePrice for unlisted token'
        tokenPrice[arg3] = 0
        if not numTokensListed:
            revert with 0, 17
        numTokensListed--
        if arg3 == cheapestTokenIdListed:
            cheapestTokenIdListed = nextByPrice[arg3]
        if arg3 == richestTokenIdListed:
            richestTokenIdListed = prevByPrice[arg3]
        if prevByPrice[arg3]:
            nextByPrice[stor32[arg3]] = nextByPrice[arg3]
        if nextByPrice[arg3]:
            prevByPrice[stor31[arg3]] = prevByPrice[arg3]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor7[arg3]:
                tokenOfOwnerByIndex[address(arg1)][stor7[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor7[stor6[address(arg1)][stor3[address(arg1)] - 1]] = stor7[arg3]
            stor7[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
            stor7[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg3] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg3]:
        revert with 0, 17
    if tokenPrice[arg3] > !((resaleRewardBP * tokenPrice[arg3]) + (resaleTaxBP * tokenPrice[arg3]) / 10000):
        revert with 0, 17
    if tokenPrice[arg3] + ((resaleRewardBP * tokenPrice[arg3]) + (resaleTaxBP * tokenPrice[arg3]) / 10000) > 0:
        if not tokenPrice[arg3]:
            revert with 0, 'Cannot _removePrice for unlisted token'
        tokenPrice[arg3] = 0
        if not numTokensListed:
            revert with 0, 17
        numTokensListed--
        if arg3 == cheapestTokenIdListed:
            cheapestTokenIdListed = nextByPrice[arg3]
        if arg3 == richestTokenIdListed:
            richestTokenIdListed = prevByPrice[arg3]
        if prevByPrice[arg3]:
            nextByPrice[stor32[arg3]] = nextByPrice[arg3]
        if nextByPrice[arg3]:
            prevByPrice[stor31[arg3]] = prevByPrice[arg3]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function acceptSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor11 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor11 = 2
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 0, 17
    if tokenPrice[arg1] > !((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0, 17
    if tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This token is not listed for sale.'
    if msg.value > tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'More funds than sale price provided.'
    if msg.value < tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Less funds than sale price provided.'
    if totalSalesCount == -1:
        revert with 0, 17
    totalSalesCount++
    if totalSalesValue > !(tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)):
        revert with 0, 17
    totalSalesValue = totalSalesValue + tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)
    if tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) > richestSalePrice:
        richestSaleTokenId = arg1
        richestSalePrice = tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    call ownerOf[arg1] with:
       value tokenPrice[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if tokenPrice[arg1] and resaleRewardBP > -1 / tokenPrice[arg1]:
        revert with 0, 17
    if msg.value < tokenPrice[arg1] * resaleRewardBP / 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot save more rewards than are present in the transaction.'
    if rewardFund > !(tokenPrice[arg1] * resaleRewardBP / 10000):
        revert with 0, 17
    rewardFund += tokenPrice[arg1] * resaleRewardBP / 10000
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 0, 17
    if tokenPrice[arg1] > !((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0, 17
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != ownerOf[arg1]:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0, 'ERC721: transfer to the zero address'
    if not ownerOf[arg1]:
        stor9[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if ownerOf[arg1] != msg.sender:
            if not ownerOf[arg1]:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[stor2[arg1]] < 1:
                revert with 0, 17
            if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
                tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
                stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
            stor7[arg1] = 0
            tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if msg.sender:
        if ownerOf[arg1] != msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = arg1
            stor7[arg1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[arg1] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg1]
        stor9[arg1] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if resaleRewardBP > !resaleTaxBP:
        revert with 0, 17
    if tokenPrice[arg1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[arg1]:
        revert with 0, 17
    if tokenPrice[arg1] > !((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000):
        revert with 0, 17
    if tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000) > 0:
        if not tokenPrice[arg1]:
            revert with 0, 'Cannot _removePrice for unlisted token'
        tokenPrice[arg1] = 0
        if not numTokensListed:
            revert with 0, 17
        numTokensListed--
        if arg1 == cheapestTokenIdListed:
            cheapestTokenIdListed = nextByPrice[arg1]
        if arg1 == richestTokenIdListed:
            richestTokenIdListed = prevByPrice[arg1]
        if prevByPrice[arg1]:
            nextByPrice[stor32[arg1]] = nextByPrice[arg1]
        if nextByPrice[arg1]:
            prevByPrice[stor31[arg1]] = prevByPrice[arg1]
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
             gas gas_remaining wei
            args msg.sender, ownerOf[arg1], arg1, 128, 32, tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)
        if not ext_call.success:
            if not return_data.size:
                revert with (tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000))
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    emit TokenSold((tokenPrice[arg1] + ((resaleRewardBP * tokenPrice[arg1]) + (resaleTaxBP * tokenPrice[arg1]) / 10000)), arg1);
    stor11 = 1
}

function mintReserved(uint256 arg1, address arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > maxSupply:
        revert with 0, 'All tokens have been minted.'
    idx = 0
    while idx < arg1:
        if block.number < 1:
            revert with 0, 17
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = block.gasprice
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64] + 160] = block.hash(block.number - 1)
        _2069 = mem[64]
        mem[mem[64]] = 160
        mem[64] = mem[64] + 192
        _2071 = sha3(mem[_2069 + 32 len mem[_2069]])
        if not stor20:
            revert with 0, 18
        if 1 > !(sha3(mem[_2069 + 32 len mem[_2069]]) % stor20):
            revert with 0, 17
        require (sha3(mem[_2069 + 32 len mem[_2069]]) % stor20) + 1 > 0
        require (sha3(mem[_2069 + 32 len mem[_2069]]) % stor20) + 1 <= stor20
        mem[0] = (sha3(mem[_2069 + 32 len mem[_2069]]) % stor20) + 1
        _2072 = sha3(mem[0], 19)
        require (_2071 % stor20) + 1 > 0
        require (_2071 % stor20) + 1 <= stor20
        if stor19[mem[0]]:
            if (_2071 % stor20) + 1 == stor20:
                if not stor20:
                    revert with 0, 17
                stor20--
                if not arg2:
                    revert with 0, 'ERC721: mint to the zero address'
                mem[0] = stor19[mem[0]]
                if ownerOf[mem[0]]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor[_2072]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor[_2072]
                if arg2:
                    if arg2:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = stor[_2072]
                        stor7[stor[_2072]] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor[_2072]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor[_2072]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor[_2072]]
                    stor9[stor[_2072]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if resaleRewardBP > !resaleTaxBP:
                    revert with 0, 17
                if tokenPrice[stor[_2072]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor[_2072]]:
                    revert with 0, 17
                if tokenPrice[stor[_2072]] > !((resaleRewardBP * tokenPrice[stor[_2072]]) + (resaleTaxBP * tokenPrice[stor[_2072]]) / 10000):
                    revert with 0, 17
                if tokenPrice[stor[_2072]] + ((resaleRewardBP * tokenPrice[stor[_2072]]) + (resaleTaxBP * tokenPrice[stor[_2072]]) / 10000) > 0:
                    if not tokenPrice[stor[_2072]]:
                        revert with 0, 'Cannot _removePrice for unlisted token'
                    tokenPrice[stor[_2072]] = 0
                    if not numTokensListed:
                        revert with 0, 17
                    numTokensListed--
                    if stor[_2072] == cheapestTokenIdListed:
                        cheapestTokenIdListed = nextByPrice[stor[_2072]]
                    if stor[_2072] == richestTokenIdListed:
                        richestTokenIdListed = prevByPrice[stor[_2072]]
                    if prevByPrice[stor[_2072]]:
                        nextByPrice[stor32[stor[_2072]]] = nextByPrice[stor[_2072]]
                    if nextByPrice[stor[_2072]]:
                        prevByPrice[stor31[stor[_2072]]] = prevByPrice[stor[_2072]]
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                mem[0] = stor[_2072]
            else:
                require stor20 > 0
                require stor20 <= stor20
                if stor19[stor20]:
                    stor19[(_2071 % stor20) + 1] = stor19[stor20]
                else:
                    stor19[(_2071 % stor20) + 1] = stor20
                if not stor20:
                    revert with 0, 17
                stor20--
                if not arg2:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor19[mem[0]]]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor19[mem[0]]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor19[mem[0]]
                if arg2:
                    if arg2:
                        if not arg2:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = stor19[mem[0]]
                        stor7[stor19[mem[0]]] = balanceOf[address(arg2)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor19[mem[0]]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor19[mem[0]]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor19[mem[0]]]
                    stor9[stor19[mem[0]]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if resaleRewardBP > !resaleTaxBP:
                    revert with 0, 17
                if tokenPrice[stor19[mem[0]]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor19[mem[0]]]:
                    revert with 0, 17
                if tokenPrice[stor19[mem[0]]] > !((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000):
                    revert with 0, 17
                if tokenPrice[stor19[mem[0]]] + ((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000) > 0:
                    if not tokenPrice[stor19[mem[0]]]:
                        revert with 0, 'Cannot _removePrice for unlisted token'
                    tokenPrice[stor19[mem[0]]] = 0
                    if not numTokensListed:
                        revert with 0, 17
                    numTokensListed--
                    if stor19[mem[0]] == cheapestTokenIdListed:
                        cheapestTokenIdListed = nextByPrice[stor19[mem[0]]]
                    if stor19[mem[0]] == richestTokenIdListed:
                        richestTokenIdListed = prevByPrice[stor19[mem[0]]]
                    if prevByPrice[stor19[mem[0]]]:
                        nextByPrice[stor32[stor19[mem[0]]]] = nextByPrice[stor19[mem[0]]]
                    if nextByPrice[stor19[mem[0]]]:
                        prevByPrice[stor31[stor19[mem[0]]]] = prevByPrice[stor19[mem[0]]]
                if balanceOf[address(arg2)] > -2:
                    revert with 0, 17
                balanceOf[address(arg2)]++
                mem[0] = stor19[mem[0]]
            mem[32] = 2
            ownerOf[stor[_2072]] = arg2
            emit Transfer(0, arg2, stor[_2072]);
        else:
            if (_2071 % stor20) + 1 != stor20:
                require stor20 > 0
                require stor20 <= stor20
                if stor19[stor20]:
                    stor19[(_2071 % stor20) + 1] = stor19[stor20]
                else:
                    stor19[(_2071 % stor20) + 1] = stor20
            if not stor20:
                revert with 0, 17
            stor20--
            if not arg2:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(_2071 % stor20) + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[(_2071 % stor20) + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = (_2071 % stor20) + 1
            if arg2:
                if arg2:
                    if not arg2:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = (_2071 % stor20) + 1
                    stor7[(_2071 % stor20) + 1] = balanceOf[address(arg2)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[(_2071 % stor20) + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[(_2071 % stor20) + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[(_2071 % stor20) + 1]
                stor9[(_2071 % stor20) + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if resaleRewardBP > !resaleTaxBP:
                revert with 0, 17
            if tokenPrice[(_2071 % stor20) + 1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[(_2071 % stor20) + 1]:
                revert with 0, 17
            if tokenPrice[(_2071 % stor20) + 1] > !((resaleRewardBP * tokenPrice[(_2071 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_2071 % stor20) + 1]) / 10000):
                revert with 0, 17
            if tokenPrice[(_2071 % stor20) + 1] + ((resaleRewardBP * tokenPrice[(_2071 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_2071 % stor20) + 1]) / 10000) > 0:
                if not tokenPrice[(_2071 % stor20) + 1]:
                    revert with 0, 'Cannot _removePrice for unlisted token'
                tokenPrice[(_2071 % stor20) + 1] = 0
                if not numTokensListed:
                    revert with 0, 17
                numTokensListed--
                if (_2071 % stor20) + 1 == cheapestTokenIdListed:
                    cheapestTokenIdListed = nextByPrice[(_2071 % stor20) + 1]
                if (_2071 % stor20) + 1 == richestTokenIdListed:
                    richestTokenIdListed = prevByPrice[(_2071 % stor20) + 1]
                if prevByPrice[(_2071 % stor20) + 1]:
                    nextByPrice[stor32[(_2071 % stor20) + 1]] = nextByPrice[(_2071 % stor20) + 1]
                if nextByPrice[(_2071 % stor20) + 1]:
                    prevByPrice[stor31[(_2071 % stor20) + 1]] = prevByPrice[(_2071 % stor20) + 1]
            if balanceOf[address(arg2)] > -2:
                revert with 0, 17
            balanceOf[address(arg2)]++
            mem[0] = (_2071 % stor20) + 1
            mem[32] = 2
            ownerOf[(_2071 % stor20) + 1] = arg2
            emit Transfer(0, arg2, (_2071 % stor20) + 1);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if reservedSupply <= arg1:
        reservedSupply = 0
    else:
        if reservedSupply < arg1:
            revert with 0, 17
        reservedSupply -= arg1
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 > 20:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot mint more than ten tokens at a time.'
    if maxSupply < reservedSupply:
        revert with 0, 17
    if tokenByIndex.length > !arg1:
        revert with 0, 17
    if tokenByIndex.length + arg1 > maxSupply - reservedSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No tokens are available for minting.'
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 0, 17
    if msg.value < mintPrice * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient value to mint a token.'
    if mintPrice and arg1 > -1 / mintPrice:
        revert with 0, 17
    if msg.value > mintPrice * arg1:
        revert with 0, 'Too much value to mint a token.'
    if msg.value and mintRewardBP > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * mintRewardBP / 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot save more rewards than are present in the transaction.'
    if rewardFund > !(msg.value * mintRewardBP / 10000):
        revert with 0, 17
    rewardFund += msg.value * mintRewardBP / 10000
    idx = 0
    while idx < arg1:
        if block.number < 1:
            revert with 0, 17
        mem[mem[64] + 32] = msg.sender
        mem[mem[64] + 64] = block.gasprice
        mem[mem[64] + 96] = block.number
        mem[mem[64] + 128] = block.timestamp
        mem[mem[64] + 160] = block.hash(block.number - 1)
        _2077 = mem[64]
        mem[mem[64]] = 160
        mem[64] = mem[64] + 192
        _2079 = sha3(mem[_2077 + 32 len mem[_2077]])
        if not stor20:
            revert with 0, 18
        if 1 > !(sha3(mem[_2077 + 32 len mem[_2077]]) % stor20):
            revert with 0, 17
        require (sha3(mem[_2077 + 32 len mem[_2077]]) % stor20) + 1 > 0
        require (sha3(mem[_2077 + 32 len mem[_2077]]) % stor20) + 1 <= stor20
        mem[0] = (sha3(mem[_2077 + 32 len mem[_2077]]) % stor20) + 1
        _2080 = sha3(mem[0], 19)
        require (_2079 % stor20) + 1 > 0
        require (_2079 % stor20) + 1 <= stor20
        if stor19[mem[0]]:
            if (_2079 % stor20) + 1 == stor20:
                if not stor20:
                    revert with 0, 17
                stor20--
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                mem[0] = stor19[mem[0]]
                if ownerOf[mem[0]]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor[_2080]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor[_2080]
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor[_2080]
                        stor7[stor[_2080]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor[_2080]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor[_2080]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor[_2080]]
                    stor9[stor[_2080]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if resaleRewardBP > !resaleTaxBP:
                    revert with 0, 17
                if tokenPrice[stor[_2080]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor[_2080]]:
                    revert with 0, 17
                if tokenPrice[stor[_2080]] > !((resaleRewardBP * tokenPrice[stor[_2080]]) + (resaleTaxBP * tokenPrice[stor[_2080]]) / 10000):
                    revert with 0, 17
                if tokenPrice[stor[_2080]] + ((resaleRewardBP * tokenPrice[stor[_2080]]) + (resaleTaxBP * tokenPrice[stor[_2080]]) / 10000) > 0:
                    if not tokenPrice[stor[_2080]]:
                        revert with 0, 'Cannot _removePrice for unlisted token'
                    tokenPrice[stor[_2080]] = 0
                    if not numTokensListed:
                        revert with 0, 17
                    numTokensListed--
                    if stor[_2080] == cheapestTokenIdListed:
                        cheapestTokenIdListed = nextByPrice[stor[_2080]]
                    if stor[_2080] == richestTokenIdListed:
                        richestTokenIdListed = prevByPrice[stor[_2080]]
                    if prevByPrice[stor[_2080]]:
                        nextByPrice[stor32[stor[_2080]]] = nextByPrice[stor[_2080]]
                    if nextByPrice[stor[_2080]]:
                        prevByPrice[stor31[stor[_2080]]] = prevByPrice[stor[_2080]]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor[_2080]
            else:
                require stor20 > 0
                require stor20 <= stor20
                if stor19[stor20]:
                    stor19[(_2079 % stor20) + 1] = stor19[stor20]
                else:
                    stor19[(_2079 % stor20) + 1] = stor20
                if not stor20:
                    revert with 0, 17
                stor20--
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor19[mem[0]]]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor19[mem[0]]] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor19[mem[0]]
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor19[mem[0]]
                        stor7[stor19[mem[0]]] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor19[mem[0]]] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor19[mem[0]]]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor19[mem[0]]]
                    stor9[stor19[mem[0]]] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if resaleRewardBP > !resaleTaxBP:
                    revert with 0, 17
                if tokenPrice[stor19[mem[0]]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor19[mem[0]]]:
                    revert with 0, 17
                if tokenPrice[stor19[mem[0]]] > !((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000):
                    revert with 0, 17
                if tokenPrice[stor19[mem[0]]] + ((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000) > 0:
                    if not tokenPrice[stor19[mem[0]]]:
                        revert with 0, 'Cannot _removePrice for unlisted token'
                    tokenPrice[stor19[mem[0]]] = 0
                    if not numTokensListed:
                        revert with 0, 17
                    numTokensListed--
                    if stor19[mem[0]] == cheapestTokenIdListed:
                        cheapestTokenIdListed = nextByPrice[stor19[mem[0]]]
                    if stor19[mem[0]] == richestTokenIdListed:
                        richestTokenIdListed = prevByPrice[stor19[mem[0]]]
                    if prevByPrice[stor19[mem[0]]]:
                        nextByPrice[stor32[stor19[mem[0]]]] = nextByPrice[stor19[mem[0]]]
                    if nextByPrice[stor19[mem[0]]]:
                        prevByPrice[stor31[stor19[mem[0]]]] = prevByPrice[stor19[mem[0]]]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor19[mem[0]]
            mem[32] = 2
            ownerOf[stor[_2080]] = msg.sender
            emit Transfer(0, msg.sender, stor[_2080]);
        else:
            if (_2079 % stor20) + 1 != stor20:
                require stor20 > 0
                require stor20 <= stor20
                if stor19[stor20]:
                    stor19[(_2079 % stor20) + 1] = stor19[stor20]
                else:
                    stor19[(_2079 % stor20) + 1] = stor20
            if not stor20:
                revert with 0, 17
            stor20--
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[(_2079 % stor20) + 1]:
                revert with 0, 'ERC721: token already minted'
            stor9[(_2079 % stor20) + 1] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = (_2079 % stor20) + 1
            if msg.sender:
                if msg.sender:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_2079 % stor20) + 1
                    stor7[(_2079 % stor20) + 1] = balanceOf[address(msg.sender)]
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[(_2079 % stor20) + 1] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[(_2079 % stor20) + 1]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[(_2079 % stor20) + 1]
                stor9[(_2079 % stor20) + 1] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
            if resaleRewardBP > !resaleTaxBP:
                revert with 0, 17
            if tokenPrice[(_2079 % stor20) + 1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[(_2079 % stor20) + 1]:
                revert with 0, 17
            if tokenPrice[(_2079 % stor20) + 1] > !((resaleRewardBP * tokenPrice[(_2079 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_2079 % stor20) + 1]) / 10000):
                revert with 0, 17
            if tokenPrice[(_2079 % stor20) + 1] + ((resaleRewardBP * tokenPrice[(_2079 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_2079 % stor20) + 1]) / 10000) > 0:
                if not tokenPrice[(_2079 % stor20) + 1]:
                    revert with 0, 'Cannot _removePrice for unlisted token'
                tokenPrice[(_2079 % stor20) + 1] = 0
                if not numTokensListed:
                    revert with 0, 17
                numTokensListed--
                if (_2079 % stor20) + 1 == cheapestTokenIdListed:
                    cheapestTokenIdListed = nextByPrice[(_2079 % stor20) + 1]
                if (_2079 % stor20) + 1 == richestTokenIdListed:
                    richestTokenIdListed = prevByPrice[(_2079 % stor20) + 1]
                if prevByPrice[(_2079 % stor20) + 1]:
                    nextByPrice[stor32[(_2079 % stor20) + 1]] = nextByPrice[(_2079 % stor20) + 1]
                if nextByPrice[(_2079 % stor20) + 1]:
                    prevByPrice[stor31[(_2079 % stor20) + 1]] = prevByPrice[(_2079 % stor20) + 1]
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = (_2079 % stor20) + 1
            mem[32] = 2
            ownerOf[(_2079 % stor20) + 1] = msg.sender
            emit Transfer(0, msg.sender, (_2079 % stor20) + 1);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor18.length):
                mem[192] = Mask(248, 8, stor18.length)
            else:
                if bool(stor18.length) != 1:
                    mem[64] = 1
                    _119 = mem[160]
                    mem[33] = mem[160]
                    mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_119) > _119:
                        mem[_119 + 65] = 0
                    return memory
                      from mem[64]
                       len ceil32(_119) + -mem[64] + 65
                idx = 0
                s = 0
                while idx < uint255(stor18.length) * 0.5:
                    mem[idx + 192] = stor18[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor18.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor18.length) * 0.5) + 193] = 32
            mem[(uint255(stor18.length) * 0.5) + 225] = mem[160]
            mem[(uint255(stor18.length) * 0.5) + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor18.length) * 0.5) + 257] = 0
            return Array(len=mem[160], data=mem[(uint255(stor18.length) * 0.5) + 257 len ceil32(mem[160])])
        if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor18.length):
            mem[192] = Mask(248, 8, stor18.length)
        else:
            if bool(stor18.length) != 1:
                mem[64] = 1
                _123 = mem[160]
                mem[33] = mem[160]
                mem[65 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_123) > _123:
                    mem[_123 + 65] = 0
                return memory
                  from mem[64]
                   len ceil32(_123) + -mem[64] + 65
            idx = 0
            s = 0
            while idx < stor18.length.field_1 % 128:
                mem[idx + 192] = stor18[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor18.length.field_1 % 128 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor18.length.field_1 % 128 + 193] = 32
        mem[stor18.length.field_1 % 128 + 225] = mem[160]
        mem[stor18.length.field_1 % 128 + 257 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor18.length.field_1 % 128 + 257] = 0
        return Array(len=mem[160], data=mem[stor18.length.field_1 % 128 + 257 len ceil32(mem[160])])
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _356 = mem[64]
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor18.length):
                mem[mem[64] + 32] = Mask(248, 8, stor18.length)
                _384 = mem[96]
                mem[mem[64] + (uint255(stor18.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    _588 = mem[64]
                    mem[64] = mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 32
                    mem[mem[96] + _356 + (uint255(stor18.length) * 0.5) + 32] = 32
                    _632 = mem[_588]
                    mem[_384 + _356 + (uint255(stor18.length) * 0.5) + 64] = mem[_588]
                    mem[_384 + _356 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_632)] = mem[_588 + 32 len ceil32(_632)]
                    if ceil32(_632) > _632:
                        mem[_632 + _384 + _356 + (uint255(stor18.length) * 0.5) + 96] = 0
                    return memory
                      from mem[64]
                       len ceil32(_632) + _384 + _356 + (uint255(stor18.length) * 0.5) + -mem[64] + 96
                mem[mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 32] = 0
                _589 = mem[64]
                mem[64] = _384 + _356 + (uint255(stor18.length) * 0.5) + 32
                mem[_384 + _356 + (uint255(stor18.length) * 0.5) + 32] = 32
                _633 = mem[_589]
                mem[_384 + _356 + (uint255(stor18.length) * 0.5) + 64] = mem[_589]
                mem[_384 + _356 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_633)] = mem[_589 + 32 len ceil32(_633)]
                if ceil32(_633) > _633:
                    mem[_633 + _384 + _356 + (uint255(stor18.length) * 0.5) + 96] = 0
                return 32, mem[_384 + _356 + (uint255(stor18.length) * 0.5) + 64 len ceil32(_633) + 32]
            if bool(stor18.length) != 1:
                _392 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_392) <= _392:
                    _590 = mem[64]
                    mem[64] = _392
                    mem[_392] = 32
                    _634 = mem[_590]
                    mem[_392 + 32] = mem[_590]
                    mem[_392 + 64 len ceil32(_634)] = mem[_590 + 32 len ceil32(_634)]
                    if ceil32(_634) > _634:
                        mem[_634 + _392 + 64] = 0
                    return 32, mem[_392 + 32 len ceil32(_634) + 32]
                mem[_392] = 0
                _591 = mem[64]
                mem[64] = _392
                mem[_392] = 32
                _635 = mem[_591]
                mem[_392 + 32] = mem[_591]
                mem[_392 + 64 len ceil32(_635)] = mem[_591 + 32 len ceil32(_635)]
                if ceil32(_635) > _635:
                    mem[_635 + _392 + 64] = 0
                return 32, mem[_392 + 32 len ceil32(_635) + 32]
            mem[0] = 18
            idx = 0
            s = 0
            while idx < uint255(stor18.length) * 0.5:
                mem[idx + _356 + 32] = stor18[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _584 = mem[96]
            mem[_356 + (uint255(stor18.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_584) <= _584:
                _768 = mem[64]
                mem[64] = _584 + _356 + (uint255(stor18.length) * 0.5) + 32
                mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 32] = 32
                _812 = mem[_768]
                mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 64] = mem[_768]
                mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_812)] = mem[_768 + 32 len ceil32(_812)]
                if ceil32(_812) > _812:
                    mem[_812 + _584 + _356 + (uint255(stor18.length) * 0.5) + 96] = 0
                return 32, mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 64 len ceil32(_812) + 32]
            mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 32] = 0
            _769 = mem[64]
            mem[64] = _584 + _356 + (uint255(stor18.length) * 0.5) + 32
            mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 32] = 32
            _813 = mem[_769]
            mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 64] = mem[_769]
            mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_813)] = mem[_769 + 32 len ceil32(_813)]
            if ceil32(_813) > _813:
                mem[_813 + _584 + _356 + (uint255(stor18.length) * 0.5) + 96] = 0
            return 32, mem[_584 + _356 + (uint255(stor18.length) * 0.5) + 64 len ceil32(_813) + 32]
        if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor18.length):
            mem[mem[64] + 32] = Mask(248, 8, stor18.length)
            _393 = mem[96]
            mem[mem[64] + stor18.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_393) <= _393:
                _592 = mem[64]
                mem[64] = _393 + _356 + stor18.length.field_1 % 128 + 32
                mem[_393 + _356 + stor18.length.field_1 % 128 + 32] = 32
                _636 = mem[_592]
                mem[_393 + _356 + stor18.length.field_1 % 128 + 64] = mem[_592]
                mem[_393 + _356 + stor18.length.field_1 % 128 + 96 len ceil32(_636)] = mem[_592 + 32 len ceil32(_636)]
                if ceil32(_636) > _636:
                    mem[_636 + _393 + _356 + stor18.length.field_1 % 128 + 96] = 0
                return 32, mem[_393 + _356 + stor18.length.field_1 % 128 + 64 len ceil32(_636) + 32]
            mem[_393 + _356 + stor18.length.field_1 % 128 + 32] = 0
            _593 = mem[64]
            mem[64] = _393 + _356 + stor18.length.field_1 % 128 + 32
            mem[_393 + _356 + stor18.length.field_1 % 128 + 32] = 32
            _637 = mem[_593]
            mem[_393 + _356 + stor18.length.field_1 % 128 + 64] = mem[_593]
            mem[_393 + _356 + stor18.length.field_1 % 128 + 96 len ceil32(_637)] = mem[_593 + 32 len ceil32(_637)]
            if ceil32(_637) > _637:
                mem[_637 + _393 + _356 + stor18.length.field_1 % 128 + 96] = 0
            return 32, mem[_393 + _356 + stor18.length.field_1 % 128 + 64 len ceil32(_637) + 32]
        if bool(stor18.length) != 1:
            _396 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_396) <= _396:
                _594 = mem[64]
                mem[64] = _396
                mem[_396] = 32
                _638 = mem[_594]
                mem[_396 + 32] = mem[_594]
                mem[_396 + 64 len ceil32(_638)] = mem[_594 + 32 len ceil32(_638)]
                if ceil32(_638) > _638:
                    mem[_638 + _396 + 64] = 0
                return 32, mem[_396 + 32 len ceil32(_638) + 32]
            mem[_396] = 0
            _595 = mem[64]
            mem[64] = _396
            mem[_396] = 32
            _639 = mem[_595]
            mem[_396 + 32] = mem[_595]
            mem[_396 + 64 len ceil32(_639)] = mem[_595 + 32 len ceil32(_639)]
            if ceil32(_639) > _639:
                mem[_639 + _396 + 64] = 0
            return 32, mem[_396 + 32 len ceil32(_639) + 32]
        mem[0] = 18
        idx = 0
        s = 0
        while idx < stor18.length.field_1 % 128:
            mem[idx + _356 + 32] = stor18[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _585 = mem[96]
        mem[_356 + stor18.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_585) <= _585:
            _778 = mem[64]
            mem[64] = _585 + _356 + stor18.length.field_1 % 128 + 32
            mem[_585 + _356 + stor18.length.field_1 % 128 + 32] = 32
            _814 = mem[_778]
            mem[_585 + _356 + stor18.length.field_1 % 128 + 64] = mem[_778]
            mem[_585 + _356 + stor18.length.field_1 % 128 + 96 len ceil32(_814)] = mem[_778 + 32 len ceil32(_814)]
            if ceil32(_814) > _814:
                mem[_814 + _585 + _356 + stor18.length.field_1 % 128 + 96] = 0
            return 32, mem[_585 + _356 + stor18.length.field_1 % 128 + 64 len ceil32(_814) + 32]
        mem[_585 + _356 + stor18.length.field_1 % 128 + 32] = 0
        _779 = mem[64]
        mem[64] = _585 + _356 + stor18.length.field_1 % 128 + 32
        mem[_585 + _356 + stor18.length.field_1 % 128 + 32] = 32
        _815 = mem[_779]
        mem[_585 + _356 + stor18.length.field_1 % 128 + 64] = mem[_779]
        mem[_585 + _356 + stor18.length.field_1 % 128 + 96 len ceil32(_815)] = mem[_779 + 32 len ceil32(_815)]
        if ceil32(_815) > _815:
            mem[_815 + _585 + _356 + stor18.length.field_1 % 128 + 96] = 0
        return 32, mem[_585 + _356 + stor18.length.field_1 % 128 + 64 len ceil32(_815) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _357 = mem[64]
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor18.length):
            mem[mem[64] + 32] = Mask(248, 8, stor18.length)
            _386 = mem[96]
            mem[mem[64] + (uint255(stor18.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(mem[96]) <= mem[96]:
                _596 = mem[64]
                mem[64] = mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 32
                mem[mem[96] + _357 + (uint255(stor18.length) * 0.5) + 32] = 32
                _640 = mem[_596]
                mem[_386 + _357 + (uint255(stor18.length) * 0.5) + 64] = mem[_596]
                mem[_386 + _357 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_640)] = mem[_596 + 32 len ceil32(_640)]
                if ceil32(_640) > _640:
                    mem[_640 + _386 + _357 + (uint255(stor18.length) * 0.5) + 96] = 0
                return memory
                  from mem[64]
                   len ceil32(_640) + _386 + _357 + (uint255(stor18.length) * 0.5) + -mem[64] + 96
            mem[mem[96] + mem[64] + (uint255(stor18.length) * 0.5) + 32] = 0
            _597 = mem[64]
            mem[64] = _386 + _357 + (uint255(stor18.length) * 0.5) + 32
            mem[_386 + _357 + (uint255(stor18.length) * 0.5) + 32] = 32
            _641 = mem[_597]
            mem[_386 + _357 + (uint255(stor18.length) * 0.5) + 64] = mem[_597]
            mem[_386 + _357 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_641)] = mem[_597 + 32 len ceil32(_641)]
            if ceil32(_641) > _641:
                mem[_641 + _386 + _357 + (uint255(stor18.length) * 0.5) + 96] = 0
            return 32, mem[_386 + _357 + (uint255(stor18.length) * 0.5) + 64 len ceil32(_641) + 32]
        if bool(stor18.length) != 1:
            _394 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_394) <= _394:
                _598 = mem[64]
                mem[64] = _394
                mem[_394] = 32
                _642 = mem[_598]
                mem[_394 + 32] = mem[_598]
                mem[_394 + 64 len ceil32(_642)] = mem[_598 + 32 len ceil32(_642)]
                if ceil32(_642) > _642:
                    mem[_642 + _394 + 64] = 0
                return 32, mem[_394 + 32 len ceil32(_642) + 32]
            mem[_394] = 0
            _599 = mem[64]
            mem[64] = _394
            mem[_394] = 32
            _643 = mem[_599]
            mem[_394 + 32] = mem[_599]
            mem[_394 + 64 len ceil32(_643)] = mem[_599 + 32 len ceil32(_643)]
            if ceil32(_643) > _643:
                mem[_643 + _394 + 64] = 0
            return 32, mem[_394 + 32 len ceil32(_643) + 32]
        mem[0] = 18
        idx = 0
        s = 0
        while idx < uint255(stor18.length) * 0.5:
            mem[idx + _357 + 32] = stor18[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _586 = mem[96]
        mem[_357 + (uint255(stor18.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_586) <= _586:
            _788 = mem[64]
            mem[64] = _586 + _357 + (uint255(stor18.length) * 0.5) + 32
            mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 32] = 32
            _816 = mem[_788]
            mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 64] = mem[_788]
            mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_816)] = mem[_788 + 32 len ceil32(_816)]
            if ceil32(_816) > _816:
                mem[_816 + _586 + _357 + (uint255(stor18.length) * 0.5) + 96] = 0
            return 32, mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 64 len ceil32(_816) + 32]
        mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 32] = 0
        _789 = mem[64]
        mem[64] = _586 + _357 + (uint255(stor18.length) * 0.5) + 32
        mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 32] = 32
        _817 = mem[_789]
        mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 64] = mem[_789]
        mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 96 len ceil32(_817)] = mem[_789 + 32 len ceil32(_817)]
        if ceil32(_817) > _817:
            mem[_817 + _586 + _357 + (uint255(stor18.length) * 0.5) + 96] = 0
        return 32, mem[_586 + _357 + (uint255(stor18.length) * 0.5) + 64 len ceil32(_817) + 32]
    if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor18.length):
        mem[mem[64] + 32] = Mask(248, 8, stor18.length)
        _395 = mem[96]
        mem[mem[64] + stor18.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_395) <= _395:
            _600 = mem[64]
            mem[64] = _395 + _357 + stor18.length.field_1 % 128 + 32
            mem[_395 + _357 + stor18.length.field_1 % 128 + 32] = 32
            _644 = mem[_600]
            mem[_395 + _357 + stor18.length.field_1 % 128 + 64] = mem[_600]
            mem[_395 + _357 + stor18.length.field_1 % 128 + 96 len ceil32(_644)] = mem[_600 + 32 len ceil32(_644)]
            if ceil32(_644) > _644:
                mem[_644 + _395 + _357 + stor18.length.field_1 % 128 + 96] = 0
            return 32, mem[_395 + _357 + stor18.length.field_1 % 128 + 64 len ceil32(_644) + 32]
        mem[_395 + _357 + stor18.length.field_1 % 128 + 32] = 0
        _601 = mem[64]
        mem[64] = _395 + _357 + stor18.length.field_1 % 128 + 32
        mem[_395 + _357 + stor18.length.field_1 % 128 + 32] = 32
        _645 = mem[_601]
        mem[_395 + _357 + stor18.length.field_1 % 128 + 64] = mem[_601]
        mem[_395 + _357 + stor18.length.field_1 % 128 + 96 len ceil32(_645)] = mem[_601 + 32 len ceil32(_645)]
        if ceil32(_645) > _645:
            mem[_645 + _395 + _357 + stor18.length.field_1 % 128 + 96] = 0
        return 32, mem[_395 + _357 + stor18.length.field_1 % 128 + 64 len ceil32(_645) + 32]
    if bool(stor18.length) != 1:
        _398 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_398) <= _398:
            _602 = mem[64]
            mem[64] = _398
            mem[_398] = 32
            _646 = mem[_602]
            mem[_398 + 32] = mem[_602]
            mem[_398 + 64 len ceil32(_646)] = mem[_602 + 32 len ceil32(_646)]
            if ceil32(_646) > _646:
                mem[_646 + _398 + 64] = 0
            return 32, mem[_398 + 32 len ceil32(_646) + 32]
        mem[_398] = 0
        _603 = mem[64]
        mem[64] = _398
        mem[_398] = 32
        _647 = mem[_603]
        mem[_398 + 32] = mem[_603]
        mem[_398 + 64 len ceil32(_647)] = mem[_603 + 32 len ceil32(_647)]
        if ceil32(_647) > _647:
            mem[_647 + _398 + 64] = 0
        return 32, mem[_398 + 32 len ceil32(_647) + 32]
    mem[0] = 18
    idx = 0
    s = 0
    while idx < stor18.length.field_1 % 128:
        mem[idx + _357 + 32] = stor18[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _587 = mem[96]
    mem[_357 + stor18.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_587) <= _587:
        _798 = mem[64]
        mem[64] = _587 + _357 + stor18.length.field_1 % 128 + 32
        mem[_587 + _357 + stor18.length.field_1 % 128 + 32] = 32
        _818 = mem[_798]
        mem[_587 + _357 + stor18.length.field_1 % 128 + 64] = mem[_798]
        mem[_587 + _357 + stor18.length.field_1 % 128 + 96 len ceil32(_818)] = mem[_798 + 32 len ceil32(_818)]
        if ceil32(_818) > _818:
            mem[_818 + _587 + _357 + stor18.length.field_1 % 128 + 96] = 0
        return 32, mem[_587 + _357 + stor18.length.field_1 % 128 + 64 len ceil32(_818) + 32]
    mem[_587 + _357 + stor18.length.field_1 % 128 + 32] = 0
    _799 = mem[64]
    mem[64] = _587 + _357 + stor18.length.field_1 % 128 + 32
    mem[_587 + _357 + stor18.length.field_1 % 128 + 32] = 32
    _819 = mem[_799]
    mem[_587 + _357 + stor18.length.field_1 % 128 + 64] = mem[_799]
    mem[_587 + _357 + stor18.length.field_1 % 128 + 96 len ceil32(_819)] = mem[_799 + 32 len ceil32(_819)]
    if ceil32(_819) > _819:
        mem[_819 + _587 + _357 + stor18.length.field_1 % 128 + 96] = 0
    return 32, mem[_587 + _357 + stor18.length.field_1 % 128 + 64 len ceil32(_819) + 32]
}

function mintPresale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not presaleStarted:
        revert with 0, 'Presale has not started.'
    mem[100] = msg.sender
    require ext_code.size(stor36)
    staticcall stor36.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] >= stor38:
        if arg1 > 20:
            revert with 0, 'Cannot mint more than ten tokens at a time.'
        if maxSupply < reservedSupply:
            revert with 0, 17
        if tokenByIndex.length > !arg1:
            revert with 0, 17
        if tokenByIndex.length + arg1 > maxSupply - reservedSupply:
            revert with 0, 'No tokens are available for minting.'
        if presaleMintPrice and arg1 > -1 / presaleMintPrice:
            revert with 0, 17
        if msg.value < presaleMintPrice * arg1:
            revert with 0, 'Insufficient value to mint a token.'
        if presaleMintPrice and arg1 > -1 / presaleMintPrice:
            revert with 0, 17
        if msg.value > presaleMintPrice * arg1:
            revert with 0, 'Too much value to mint a token.'
        if msg.value and mintRewardBP > -1 / msg.value:
            revert with 0, 17
        if msg.value < msg.value * mintRewardBP / 10000:
            revert with 0, 'Cannot save more rewards than are present in the transaction.'
        if rewardFund > !(msg.value * mintRewardBP / 10000):
            revert with 0, 17
        rewardFund += msg.value * mintRewardBP / 10000
        idx = 0
        while idx < arg1:
            if block.number < 1:
                revert with 0, 17
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            _4160 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _4162 = sha3(mem[_4160 + 32 len mem[_4160]])
            if not stor20:
                revert with 0, 18
            if 1 > !(sha3(mem[_4160 + 32 len mem[_4160]]) % stor20):
                revert with 0, 17
            require (sha3(mem[_4160 + 32 len mem[_4160]]) % stor20) + 1 > 0
            require (sha3(mem[_4160 + 32 len mem[_4160]]) % stor20) + 1 <= stor20
            mem[0] = (sha3(mem[_4160 + 32 len mem[_4160]]) % stor20) + 1
            _4167 = sha3(mem[0], 19)
            require (_4162 % stor20) + 1 > 0
            require (_4162 % stor20) + 1 <= stor20
            if stor19[mem[0]]:
                if (_4162 % stor20) + 1 == stor20:
                    if not stor20:
                        revert with 0, 17
                    stor20--
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[0] = stor19[mem[0]]
                    if ownerOf[mem[0]]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor[_4167]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor[_4167]
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor[_4167]
                            stor7[stor[_4167]] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor[_4167]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor[_4167]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor[_4167]]
                        stor9[stor[_4167]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if resaleRewardBP > !resaleTaxBP:
                        revert with 0, 17
                    if tokenPrice[stor[_4167]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor[_4167]]:
                        revert with 0, 17
                    if tokenPrice[stor[_4167]] > !((resaleRewardBP * tokenPrice[stor[_4167]]) + (resaleTaxBP * tokenPrice[stor[_4167]]) / 10000):
                        revert with 0, 17
                    if tokenPrice[stor[_4167]] + ((resaleRewardBP * tokenPrice[stor[_4167]]) + (resaleTaxBP * tokenPrice[stor[_4167]]) / 10000) > 0:
                        if not tokenPrice[stor[_4167]]:
                            revert with 0, 'Cannot _removePrice for unlisted token'
                        tokenPrice[stor[_4167]] = 0
                        if not numTokensListed:
                            revert with 0, 17
                        numTokensListed--
                        if stor[_4167] == cheapestTokenIdListed:
                            cheapestTokenIdListed = nextByPrice[stor[_4167]]
                        if stor[_4167] == richestTokenIdListed:
                            richestTokenIdListed = prevByPrice[stor[_4167]]
                        if prevByPrice[stor[_4167]]:
                            nextByPrice[stor32[stor[_4167]]] = nextByPrice[stor[_4167]]
                        if nextByPrice[stor[_4167]]:
                            prevByPrice[stor31[stor[_4167]]] = prevByPrice[stor[_4167]]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor[_4167]
                else:
                    require stor20 > 0
                    require stor20 <= stor20
                    if stor19[stor20]:
                        stor19[(_4162 % stor20) + 1] = stor19[stor20]
                    else:
                        stor19[(_4162 % stor20) + 1] = stor20
                    if not stor20:
                        revert with 0, 17
                    stor20--
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor19[mem[0]]]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor19[mem[0]]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor19[mem[0]]
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor19[mem[0]]
                            stor7[stor19[mem[0]]] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor19[mem[0]]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor19[mem[0]]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor19[mem[0]]]
                        stor9[stor19[mem[0]]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if resaleRewardBP > !resaleTaxBP:
                        revert with 0, 17
                    if tokenPrice[stor19[mem[0]]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor19[mem[0]]]:
                        revert with 0, 17
                    if tokenPrice[stor19[mem[0]]] > !((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000):
                        revert with 0, 17
                    if tokenPrice[stor19[mem[0]]] + ((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000) > 0:
                        if not tokenPrice[stor19[mem[0]]]:
                            revert with 0, 'Cannot _removePrice for unlisted token'
                        tokenPrice[stor19[mem[0]]] = 0
                        if not numTokensListed:
                            revert with 0, 17
                        numTokensListed--
                        if stor19[mem[0]] == cheapestTokenIdListed:
                            cheapestTokenIdListed = nextByPrice[stor19[mem[0]]]
                        if stor19[mem[0]] == richestTokenIdListed:
                            richestTokenIdListed = prevByPrice[stor19[mem[0]]]
                        if prevByPrice[stor19[mem[0]]]:
                            nextByPrice[stor32[stor19[mem[0]]]] = nextByPrice[stor19[mem[0]]]
                        if nextByPrice[stor19[mem[0]]]:
                            prevByPrice[stor31[stor19[mem[0]]]] = prevByPrice[stor19[mem[0]]]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor19[mem[0]]
                mem[32] = 2
                ownerOf[stor[_4167]] = msg.sender
                emit Transfer(0, msg.sender, stor[_4167]);
            else:
                if (_4162 % stor20) + 1 != stor20:
                    require stor20 > 0
                    require stor20 <= stor20
                    if stor19[stor20]:
                        stor19[(_4162 % stor20) + 1] = stor19[stor20]
                    else:
                        stor19[(_4162 % stor20) + 1] = stor20
                if not stor20:
                    revert with 0, 17
                stor20--
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[(_4162 % stor20) + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[(_4162 % stor20) + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = (_4162 % stor20) + 1
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_4162 % stor20) + 1
                        stor7[(_4162 % stor20) + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[(_4162 % stor20) + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[(_4162 % stor20) + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[(_4162 % stor20) + 1]
                    stor9[(_4162 % stor20) + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if resaleRewardBP > !resaleTaxBP:
                    revert with 0, 17
                if tokenPrice[(_4162 % stor20) + 1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[(_4162 % stor20) + 1]:
                    revert with 0, 17
                if tokenPrice[(_4162 % stor20) + 1] > !((resaleRewardBP * tokenPrice[(_4162 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_4162 % stor20) + 1]) / 10000):
                    revert with 0, 17
                if tokenPrice[(_4162 % stor20) + 1] + ((resaleRewardBP * tokenPrice[(_4162 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_4162 % stor20) + 1]) / 10000) > 0:
                    if not tokenPrice[(_4162 % stor20) + 1]:
                        revert with 0, 'Cannot _removePrice for unlisted token'
                    tokenPrice[(_4162 % stor20) + 1] = 0
                    if not numTokensListed:
                        revert with 0, 17
                    numTokensListed--
                    if (_4162 % stor20) + 1 == cheapestTokenIdListed:
                        cheapestTokenIdListed = nextByPrice[(_4162 % stor20) + 1]
                    if (_4162 % stor20) + 1 == richestTokenIdListed:
                        richestTokenIdListed = prevByPrice[(_4162 % stor20) + 1]
                    if prevByPrice[(_4162 % stor20) + 1]:
                        nextByPrice[stor32[(_4162 % stor20) + 1]] = nextByPrice[(_4162 % stor20) + 1]
                    if nextByPrice[(_4162 % stor20) + 1]:
                        prevByPrice[stor31[(_4162 % stor20) + 1]] = prevByPrice[(_4162 % stor20) + 1]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = (_4162 % stor20) + 1
                mem[32] = 2
                ownerOf[(_4162 % stor20) + 1] = msg.sender
                emit Transfer(0, msg.sender, (_4162 % stor20) + 1);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(stor37)
        staticcall stor37.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] < stor39:
            revert with 0, 'Sender does not qualify for presale.'
        if arg1 > 20:
            revert with 0, 'Cannot mint more than ten tokens at a time.'
        if maxSupply < reservedSupply:
            revert with 0, 17
        if tokenByIndex.length > !arg1:
            revert with 0, 17
        if tokenByIndex.length + arg1 > maxSupply - reservedSupply:
            revert with 0, 'No tokens are available for minting.'
        if presaleMintPrice and arg1 > -1 / presaleMintPrice:
            revert with 0, 17
        if msg.value < presaleMintPrice * arg1:
            revert with 0, 'Insufficient value to mint a token.'
        if presaleMintPrice and arg1 > -1 / presaleMintPrice:
            revert with 0, 17
        if msg.value > presaleMintPrice * arg1:
            revert with 0, 'Too much value to mint a token.'
        if msg.value and mintRewardBP > -1 / msg.value:
            revert with 0, 17
        if msg.value < msg.value * mintRewardBP / 10000:
            revert with 0, 'Cannot save more rewards than are present in the transaction.'
        if rewardFund > !(msg.value * mintRewardBP / 10000):
            revert with 0, 17
        rewardFund += msg.value * mintRewardBP / 10000
        idx = 0
        while idx < arg1:
            if block.number < 1:
                revert with 0, 17
            mem[mem[64] + 32] = msg.sender
            mem[mem[64] + 64] = block.gasprice
            mem[mem[64] + 96] = block.number
            mem[mem[64] + 128] = block.timestamp
            mem[mem[64] + 160] = block.hash(block.number - 1)
            _4164 = mem[64]
            mem[mem[64]] = 160
            mem[64] = mem[64] + 192
            _4166 = sha3(mem[_4164 + 32 len mem[_4164]])
            if not stor20:
                revert with 0, 18
            if 1 > !(sha3(mem[_4164 + 32 len mem[_4164]]) % stor20):
                revert with 0, 17
            require (sha3(mem[_4164 + 32 len mem[_4164]]) % stor20) + 1 > 0
            require (sha3(mem[_4164 + 32 len mem[_4164]]) % stor20) + 1 <= stor20
            mem[0] = (sha3(mem[_4164 + 32 len mem[_4164]]) % stor20) + 1
            _4168 = sha3(mem[0], 19)
            require (_4166 % stor20) + 1 > 0
            require (_4166 % stor20) + 1 <= stor20
            if stor19[mem[0]]:
                if (_4166 % stor20) + 1 == stor20:
                    if not stor20:
                        revert with 0, 17
                    stor20--
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[0] = stor19[mem[0]]
                    if ownerOf[mem[0]]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor[_4168]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor[_4168]
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor[_4168]
                            stor7[stor[_4168]] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor[_4168]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor[_4168]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor[_4168]]
                        stor9[stor[_4168]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if resaleRewardBP > !resaleTaxBP:
                        revert with 0, 17
                    if tokenPrice[stor[_4168]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor[_4168]]:
                        revert with 0, 17
                    if tokenPrice[stor[_4168]] > !((resaleRewardBP * tokenPrice[stor[_4168]]) + (resaleTaxBP * tokenPrice[stor[_4168]]) / 10000):
                        revert with 0, 17
                    if tokenPrice[stor[_4168]] + ((resaleRewardBP * tokenPrice[stor[_4168]]) + (resaleTaxBP * tokenPrice[stor[_4168]]) / 10000) > 0:
                        if not tokenPrice[stor[_4168]]:
                            revert with 0, 'Cannot _removePrice for unlisted token'
                        tokenPrice[stor[_4168]] = 0
                        if not numTokensListed:
                            revert with 0, 17
                        numTokensListed--
                        if stor[_4168] == cheapestTokenIdListed:
                            cheapestTokenIdListed = nextByPrice[stor[_4168]]
                        if stor[_4168] == richestTokenIdListed:
                            richestTokenIdListed = prevByPrice[stor[_4168]]
                        if prevByPrice[stor[_4168]]:
                            nextByPrice[stor32[stor[_4168]]] = nextByPrice[stor[_4168]]
                        if nextByPrice[stor[_4168]]:
                            prevByPrice[stor31[stor[_4168]]] = prevByPrice[stor[_4168]]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor[_4168]
                else:
                    require stor20 > 0
                    require stor20 <= stor20
                    if stor19[stor20]:
                        stor19[(_4166 % stor20) + 1] = stor19[stor20]
                    else:
                        stor19[(_4166 % stor20) + 1] = stor20
                    if not stor20:
                        revert with 0, 17
                    stor20--
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor19[mem[0]]]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor19[mem[0]]] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor19[mem[0]]
                    if msg.sender:
                        if msg.sender:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor19[mem[0]]
                            stor7[stor19[mem[0]]] = balanceOf[address(msg.sender)]
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor19[mem[0]]] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor19[mem[0]]]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor19[mem[0]]]
                        stor9[stor19[mem[0]]] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                    if resaleRewardBP > !resaleTaxBP:
                        revert with 0, 17
                    if tokenPrice[stor19[mem[0]]] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[stor19[mem[0]]]:
                        revert with 0, 17
                    if tokenPrice[stor19[mem[0]]] > !((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000):
                        revert with 0, 17
                    if tokenPrice[stor19[mem[0]]] + ((resaleRewardBP * tokenPrice[stor19[mem[0]]]) + (resaleTaxBP * tokenPrice[stor19[mem[0]]]) / 10000) > 0:
                        if not tokenPrice[stor19[mem[0]]]:
                            revert with 0, 'Cannot _removePrice for unlisted token'
                        tokenPrice[stor19[mem[0]]] = 0
                        if not numTokensListed:
                            revert with 0, 17
                        numTokensListed--
                        if stor19[mem[0]] == cheapestTokenIdListed:
                            cheapestTokenIdListed = nextByPrice[stor19[mem[0]]]
                        if stor19[mem[0]] == richestTokenIdListed:
                            richestTokenIdListed = prevByPrice[stor19[mem[0]]]
                        if prevByPrice[stor19[mem[0]]]:
                            nextByPrice[stor32[stor19[mem[0]]]] = nextByPrice[stor19[mem[0]]]
                        if nextByPrice[stor19[mem[0]]]:
                            prevByPrice[stor31[stor19[mem[0]]]] = prevByPrice[stor19[mem[0]]]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor19[mem[0]]
                mem[32] = 2
                ownerOf[stor[_4168]] = msg.sender
                emit Transfer(0, msg.sender, stor[_4168]);
            else:
                if (_4166 % stor20) + 1 != stor20:
                    require stor20 > 0
                    require stor20 <= stor20
                    if stor19[stor20]:
                        stor19[(_4166 % stor20) + 1] = stor19[stor20]
                    else:
                        stor19[(_4166 % stor20) + 1] = stor20
                if not stor20:
                    revert with 0, 17
                stor20--
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[(_4166 % stor20) + 1]:
                    revert with 0, 'ERC721: token already minted'
                stor9[(_4166 % stor20) + 1] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = (_4166 % stor20) + 1
                if msg.sender:
                    if msg.sender:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = (_4166 % stor20) + 1
                        stor7[(_4166 % stor20) + 1] = balanceOf[address(msg.sender)]
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[(_4166 % stor20) + 1] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[(_4166 % stor20) + 1]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[(_4166 % stor20) + 1]
                    stor9[(_4166 % stor20) + 1] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                if resaleRewardBP > !resaleTaxBP:
                    revert with 0, 17
                if tokenPrice[(_4166 % stor20) + 1] and resaleRewardBP + resaleTaxBP > -1 / tokenPrice[(_4166 % stor20) + 1]:
                    revert with 0, 17
                if tokenPrice[(_4166 % stor20) + 1] > !((resaleRewardBP * tokenPrice[(_4166 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_4166 % stor20) + 1]) / 10000):
                    revert with 0, 17
                if tokenPrice[(_4166 % stor20) + 1] + ((resaleRewardBP * tokenPrice[(_4166 % stor20) + 1]) + (resaleTaxBP * tokenPrice[(_4166 % stor20) + 1]) / 10000) > 0:
                    if not tokenPrice[(_4166 % stor20) + 1]:
                        revert with 0, 'Cannot _removePrice for unlisted token'
                    tokenPrice[(_4166 % stor20) + 1] = 0
                    if not numTokensListed:
                        revert with 0, 17
                    numTokensListed--
                    if (_4166 % stor20) + 1 == cheapestTokenIdListed:
                        cheapestTokenIdListed = nextByPrice[(_4166 % stor20) + 1]
                    if (_4166 % stor20) + 1 == richestTokenIdListed:
                        richestTokenIdListed = prevByPrice[(_4166 % stor20) + 1]
                    if prevByPrice[(_4166 % stor20) + 1]:
                        nextByPrice[stor32[(_4166 % stor20) + 1]] = nextByPrice[(_4166 % stor20) + 1]
                    if nextByPrice[(_4166 % stor20) + 1]:
                        prevByPrice[stor31[(_4166 % stor20) + 1]] = prevByPrice[(_4166 % stor20) + 1]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = (_4166 % stor20) + 1
                mem[32] = 2
                ownerOf[(_4166 % stor20) + 1] = msg.sender
                emit Transfer(0, msg.sender, (_4166 % stor20) + 1);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
