contract main {




// =====================  Runtime code  =====================


const maxMintAmount = 20

const price = 10^16

const MAX_SUPPLY = 1200


address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
uint256 _tokenIdTracker;
uint256 MINT_REWARD;
uint256 reflectionBalance;
uint256 totalDividend;
uint8 enableMint;
array of struct stor16;
mapping of uint256 lastDividendAt;
mapping of address minter;
address oldContractAddress;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function oldContract() {
    return oldContractAddress
}

function reflectionBalance() {
    return reflectionBalance
}

function enableMint() {
    return bool(enableMint)
}

function totalDividend() {
    return totalDividend
}

function MINT_REWARD() {
    return MINT_REWARD
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function tokenMinter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minter[arg1]
}

function owner() {
    return owner
}

function _tokenIdTracker() {
    return _tokenIdTracker
}

function minter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minter[arg1]
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastDividendAt[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function startMint() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    enableMint = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function currentRate() {
    if not tokenByIndex.length:
        return 0
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    return (reflectionBalance / tokenByIndex.length)
}

function getReflectionBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    return (totalDividend - lastDividendAt[arg1])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function reflectToOwners() payable {
    if reflectionBalance > -msg.value - 1:
        revert with 'NH{q', 17
    reflectionBalance += msg.value
    if not tokenByIndex.length:
        revert with 'NH{q', 18
    if totalDividend > -(msg.value / tokenByIndex.length) - 1:
        revert with 'NH{q', 17
    totalDividend += msg.value / tokenByIndex.length
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x780e9d6300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT: Only owner or approved can claim rewards'
    if totalDividend < lastDividendAt[arg1]:
        revert with 'NH{q', 17
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    call ownerOf[arg1] with:
       value totalDividend - lastDividendAt[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    lastDividendAt[arg1] = totalDividend
}

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 7)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx > -2:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor16[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor16.length = 0
            idx = 0
            while stor16.length.field_1 + 31 / 32 > idx:
                stor16[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function mintBatch(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(oldContractAddress)
    staticcall oldContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if tokenByIndex.length >= ext_call.return_data[0]:
        revert with 0, 'NFT::Total supply of new contract should be inferior than the old one'
    require ext_code.size(oldContractAddress)
    staticcall oldContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if _tokenIdTracker >= ext_call.return_data[0]:
        revert with 0, 'NFT::New contract has more token minted than older contract'
    require ext_code.size(oldContractAddress)
    staticcall oldContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'NFT::Cannot mint more NFT than older contract'
    if _tokenIdTracker > arg1:
    # nil
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not enableMint:
        revert with 0, 'NFT::Mint is not enabled'
    if arg1 <= 0:
        revert with 0, 'NFT::Cannot mint 0'
    if arg1 > 20:
        revert with 0, 'NFT::Mint amount exceeded'
    if msg.value < 10^16 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT::Sent price is lower than required price'
    if _tokenIdTracker > -arg1 - 1:
        revert with 'NH{q', 17
    if _tokenIdTracker + arg1 > 1200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NFT::Not enough NFT left to mint amount'
    idx = 0
    while idx < arg1:
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor11] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = _tokenIdTracker
        if msg.sender:
            tokenOfOwnerByIndex[address(msg.sender)][stor4[address(msg.sender)]] = _tokenIdTracker
            stor8[stor11] = balanceOf[address(msg.sender)]
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor10[stor11] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor10[stor11]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor11]
            stor10[stor11] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor11] = msg.sender
        emit Transfer(0, msg.sender, _tokenIdTracker);
        minter[stor11] = msg.sender
        mem[0] = _tokenIdTracker
        mem[32] = 17
        lastDividendAt[stor11] = totalDividend
        _tokenIdTracker++
        if not arg1:
            revert with 'NH{q', 18
        if not MINT_REWARD:
            revert with 'NH{q', 18
        if msg.value / arg1 < msg.value / arg1 / MINT_REWARD:
            revert with 'NH{q', 17
        if reflectionBalance > -(msg.value / arg1 / MINT_REWARD) - 1:
            revert with 'NH{q', 17
        reflectionBalance += msg.value / arg1 / MINT_REWARD
        if not tokenByIndex.length:
            revert with 'NH{q', 18
        if totalDividend > -(msg.value / arg1 / MINT_REWARD / tokenByIndex.length) - 1:
            revert with 'NH{q', 17
        totalDividend += msg.value / arg1 / MINT_REWARD / tokenByIndex.length
        call owner with:
           value (msg.value / arg1) - (msg.value / arg1 / MINT_REWARD) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getReflectionBalances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = tokenOfOwnerByIndex[address(arg1)][idx]
        mem[32] = 17
        if totalDividend < lastDividendAt[stor7[address(arg1)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor7[address(arg1)][idx]] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor7[address(arg1)][idx]]
        continue 
    return (s * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)] * balanceOf[address(arg1)])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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

function claimRewards() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    idx = 0
    s = 0
    while idx < balanceOf[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
        if totalDividend < lastDividendAt[stor7[address(msg.sender)][idx]]:
            revert with 'NH{q', 17
        if s > -totalDividend + lastDividendAt[stor7[address(msg.sender)][idx]] - 1:
            revert with 'NH{q', 17
        mem[0] = tokenOfOwnerByIndex[address(msg.sender)][idx]
        mem[32] = 17
        lastDividendAt[stor7[address(msg.sender)][idx]] = totalDividend
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + totalDividend - lastDividendAt[stor7[address(msg.sender)][idx]]
        continue 
    call msg.sender with:
       value s * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] * balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if not arg1:
        stor10[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor8[arg3] != balanceOf[address(arg1)] - 1:
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor4[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor4[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor4[address(arg2)]] = arg3
            stor8[arg3] = balanceOf[address(arg2)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor16.length.field_1
        if bool(stor16.length):
            if bool(stor16.length) == stor16.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor16.length.field_1:
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                            _3670 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3670)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3670)]
                            if ceil32(_3670) > _3670:
                                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3670 + 256] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3670) + 32], 
                        _3702 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3702)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3702 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3702) + 32], 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3671 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3671)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3671)]
                        if ceil32(_3671) > _3671:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3671 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3671) + 32], 
                    _3703 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3703)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3703 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3703) + 32], 
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3672 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3672)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3672)]
                        if ceil32(_3672) > _3672:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3672 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3672) + 32], 
                    _3704 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3704)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3704 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3704) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3673 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3673)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3673)]
                    if ceil32(_3673) > _3673:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3673 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3673) + 32], 
                _3705 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3705)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3705 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3705) + 32], 
            if 31 >= stor16.length.field_1:
                mem[128] = 256 * stor16.length.field_8
                if stor16.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor16.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                            _3674 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3674)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3674)]
                            if ceil32(_3674) > _3674:
                                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3674 + 256] = 0
                            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3674) + 32], 
                        _3706 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3706)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                        if ceil32(_3706) > _3706:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3706 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3706) + 32], 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3675 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3675)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3675)]
                        if ceil32(_3675) > _3675:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3675 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3675) + 32], 
                    _3707 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3707)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                    if ceil32(_3707) > _3707:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3707 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3707) + 32], 
                mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3676 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3676)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3676)]
                        if ceil32(_3676) > _3676:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3676 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3676) + 32], 
                    _3708 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3708)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                    if ceil32(_3708) > _3708:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3708 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3708) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3677 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3677)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3677)]
                    if ceil32(_3677) > _3677:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3677 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3677) + 32], 
                _3709 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3709)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
                if ceil32(_3709) > _3709:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3709 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3709) + 32], 
            mem[0] = 16
            mem[128] = uint256(stor16.field_0)
            idx = 128
            s = 0
            while stor16.length.field_1 + 96 > idx:
                mem[idx + 32] = stor16[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                        _4406 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4406)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4406)]
                        if ceil32(_4406) > _4406:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4406 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4406) + 32], 
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4422 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4422)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4422 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4422) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4407 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4407)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4407)]
                    if ceil32(_4407) > _4407:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4407 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4407) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4423 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4423)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4423 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4423) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4408 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4408)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4408)]
                    if ceil32(_4408) > _4408:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4408 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4408) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4424 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4424)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4424 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4424) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4409 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4409)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4409)]
                if ceil32(_4409) > _4409:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4409 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4409) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4425 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4425)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4425 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4425) + 32], 
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3678 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3678)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3678)]
                        if ceil32(_3678) > _3678:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3678 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3678) + 32], 
                    _3710 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3710)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                    if ceil32(_3710) > _3710:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3710 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3710) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3679 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3679)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3679)]
                    if ceil32(_3679) > _3679:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3679 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3679) + 32], 
                _3711 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3711)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
                if ceil32(_3711) > _3711:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3711 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3711) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3680 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3680)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3680)]
                    if ceil32(_3680) > _3680:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3680 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3680) + 32], 
                _3712 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3712)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
                if ceil32(_3712) > _3712:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3712 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3712) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3681 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3681)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3681)]
                if ceil32(_3681) > _3681:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3681 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3681) + 32], 
            _3713 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3713)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
            if ceil32(_3713) > _3713:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3713 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3713) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3682 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3682)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3682)]
                        if ceil32(_3682) > _3682:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3682 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3682) + 32], 
                    _3714 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3714)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3714 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3714) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3683 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3683)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3683)]
                    if ceil32(_3683) > _3683:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3683 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3683) + 32], 
                _3715 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3715)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3715 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3715) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3684 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3684)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3684)]
                    if ceil32(_3684) > _3684:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3684 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3684) + 32], 
                _3716 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3716)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3716 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3716) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3685 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3685)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3685)]
                if ceil32(_3685) > _3685:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3685 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3685) + 32], 
            _3717 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3717)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3717 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3717) + 32], 
        mem[0] = 16
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) <= mem[ceil32(stor16.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257 len ceil32(mem[ceil32(stor16.length.field_1) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4410 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4410)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4410)]
                    if ceil32(_4410) > _4410:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4410 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4410) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4426 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4426)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4426 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4426) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4411 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4411)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4411)]
                if ceil32(_4411) > _4411:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4411 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4411) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4427 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4427)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4427 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4427) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4412 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4412)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4412 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4412) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4428 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4428)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4428 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4428) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4413 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4413)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4413)]
            if ceil32(_4413) > _4413:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4413 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4413) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4429 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4429)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4429 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4429) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor16.length.field_1
    if bool(stor16.length):
        if bool(stor16.length) == stor16.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor16.length.field_1:
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3686 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3686)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3686 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3686) + 32], 
                    _3718 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3718)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3718)]
                    if ceil32(_3718) > _3718:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3718 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3718) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3687 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3687)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3687 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3687) + 32], 
                _3719 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3719)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3719)]
                if ceil32(_3719) > _3719:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3719 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3719) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3688 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3688)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3688 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3688) + 32], 
                _3720 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3720)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3720)]
                if ceil32(_3720) > _3720:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3720 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3720) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3689 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3689)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3689 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3689) + 32], 
            _3721 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3721)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3721)]
            if ceil32(_3721) > _3721:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3721 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3721) + 32], 
        if 31 >= stor16.length.field_1:
            mem[128] = 256 * stor16.length.field_8
            if stor16.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                    mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor16.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
                if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                        _3690 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3690)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3690 + 256] = 0
                        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3690) + 32], 
                    _3722 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3722)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3722 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3722) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3691 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3691)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3691 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3691) + 32], 
                _3723 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3723)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3723 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3723) + 32], 
            mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3692 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3692)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3692 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3692) + 32], 
                _3724 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3724)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3724 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3724) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3693 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3693)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3693 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3693) + 32], 
            _3725 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3725)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3725 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3725) + 32], 
        mem[0] = 16
        mem[128] = uint256(stor16.field_0)
        idx = 128
        s = 0
        while stor16.length.field_1 + 96 > idx:
            mem[idx + 32] = stor16[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                    _4414 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4414)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4414 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4414) + 32], 
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4430 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4430)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4430 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4430) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4415 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4415)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4415 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4415) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4431 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4431)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4431 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4431) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4416 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4416)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4416 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4416) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4432 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4432)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4432 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4432) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4417 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4417)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4417 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4417) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4433 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4433)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4433 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4433) + 32], 
    if bool(stor16.length) == stor16.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor16.length.field_1:
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3694 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3694)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3694)]
                    if ceil32(_3694) > _3694:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3694 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3694) + 32], 
                _3726 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3726)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3726)]
                if ceil32(_3726) > _3726:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3726 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3726) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3695 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3695)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3695)]
                if ceil32(_3695) > _3695:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3695 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3695) + 32], 
            _3727 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3727)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3727)]
            if ceil32(_3727) > _3727:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3727 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3727) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3696 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3696)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3696)]
                if ceil32(_3696) > _3696:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3696 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3696) + 32], 
            _3728 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3728)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3728)]
            if ceil32(_3728) > _3728:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3728 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3728) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _3697 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3697)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3697)]
            if ceil32(_3697) > _3697:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3697 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3697) + 32], 
        _3729 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3729)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3729)]
        if ceil32(_3729) > _3729:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3729 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3729) + 32], 
    if 31 >= stor16.length.field_1:
        mem[128] = 256 * stor16.length.field_8
        if stor16.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
                mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(stor16.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
            if ceil32(stor16.length.field_1) <= stor16.length.field_1:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                    _3698 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3698)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3698 + 256] = 0
                    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3698) + 32], 
                _3730 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3730)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3730 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3730) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3699 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3699)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3699 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3699) + 32], 
            _3731 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3731)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3731 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3731) + 32], 
        mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                _3700 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3700)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3700 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3700) + 32], 
            _3732 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3732)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3732)]
            if ceil32(_3732) > _3732:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3732 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3732) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            _3701 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3701)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3701 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3701) + 32], 
        _3733 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_3733)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_3733)]
        if ceil32(_3733) > _3733:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _3733 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_3733) + 32], 
    mem[0] = 16
    mem[128] = uint256(stor16.field_0)
    idx = 128
    s = 0
    while stor16.length.field_1 + 96 > idx:
        mem[idx + 32] = stor16[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor16.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor16.length.field_1) + 224 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 224] = '0'
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 225] = 32
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 257] = mem[ceil32(stor16.length.field_1) + 192]
        mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])] = mem[ceil32(stor16.length.field_1) + 224 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 192]) > mem[ceil32(stor16.length.field_1) + 192]:
            mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor16.length.field_1) + 192], data=mem[ceil32(stor16.length.field_1) + stor16.length.field_1 + 289 len ceil32(mem[ceil32(stor16.length.field_1) + 192])]), 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(stor16.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
        if ceil32(stor16.length.field_1) <= stor16.length.field_1:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
                mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
                _4418 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4418)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4418 + 256] = 0
                return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4418) + 32], 
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4434 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4434)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4434 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4434) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4419 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4419)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4419 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4419) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4435 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4435)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4435 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4435) + 32], 
    mem[ceil32(stor16.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor16.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor16.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(stor16.length.field_1)] = mem[128 len ceil32(stor16.length.field_1)]
    if ceil32(stor16.length.field_1) <= stor16.length.field_1:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
            mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
            _4420 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4420)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4420 + 256] = 0
            return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4420) + 32], 
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4436 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4436)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4436 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4436) + 32], 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192] = 0
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + 192 len ceil32(mem[ceil32(stor16.length.field_1) + 128])] = mem[ceil32(stor16.length.field_1) + 160 len ceil32(mem[ceil32(stor16.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor16.length.field_1) + 128]) <= mem[ceil32(stor16.length.field_1) + 128]:
        mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
        _4421 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4421)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4421 + 256] = 0
        return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4421) + 32], 
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 0
    mem[64] = ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 192] = 32
    _4437 = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 256 len ceil32(_4437)] = mem[ceil32(stor16.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + _4437 + 256] = 0
    return 32, mem[ceil32(stor16.length.field_1) + ceil32(s) + stor16.length.field_1 + mem[ceil32(stor16.length.field_1) + 128] + 224 len ceil32(_4437) + 32], 
}



}
