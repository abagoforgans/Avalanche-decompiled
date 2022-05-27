contract main {




// =====================  Runtime code  =====================


#
#  - isAddressWhitelisted(address arg1)
#  - sub_5e29d11a(?)
#  - mint(uint8 arg1)
#
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
address owner;
array of uint256 stor11;
array of struct stor12;
uint8 paused;
uint8 revealed; offset 8
uint8 whitelistOnly; offset 16
uint256 stor13;
uint256 cost;
uint256 maxSupply;
uint256 reservedSupply;
uint256 sub_86392379;
array of struct stor18;
mapping of uint16 sub_2ab648ee;
uint256 mintRewards;
uint256 sub_e02f3993;
uint256 sub_dceb2629;
uint256 sub_dd76cba3;
mapping of uint256 sub_b36a2064;
mapping of uint256 sub_048d228b;
address stor26;
address stor27;
address stor28;
array of struct stor29;
array of uint256 stor49422300655976383518971161772042036479724517635858811238160587340303074464591;
array of uint256 stor49422300655976383518971161772042036479724517635858811238160587340303074464592;
array of address stor49422300655976383518971161772042036479724517635858811238160587340303074464593;

function sub_048d228b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_048d228b[address(arg1)]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function cost() {
    return cost
}

function totalSupply() {
    return tokenByIndex.length
}

function mintRewards() {
    return mintRewards
}

function sub_2ab648ee(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2ab648ee[address(arg1)]
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

function reservedSupply() {
    return reservedSupply
}

function whitelistOnly() {
    return bool(whitelistOnly)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function revealed() {
    return bool(revealed)
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
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

function sub_86392379(?) {
    return sub_86392379
}

function owner() {
    return owner
}

function sub_b36a2064(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b36a2064[address(arg1)]
}

function maxSupply() {
    return maxSupply
}

function sub_dceb2629(?) {
    return sub_dceb2629
}

function sub_dd76cba3(?) {
    return sub_dd76cba3
}

function sub_e02f3993(?) {
    return sub_e02f3993
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function reveal() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    revealed = 1
}

function flipPausedState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    stor13 = not paused or Mask(248, 8, stor13)
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    cost = arg1
}

function sub_d6fb650c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    mintRewards = arg1
}

function sub_1c974924(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    sub_86392379 = arg1
}

function sub_56fcf95b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    sub_e02f3993 = arg1
}

function setMaxSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    maxSupply = arg1
}

function setReservedSupply(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    reservedSupply = arg1
}

function endPresale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    whitelistOnly = 0
    cost = arg1
}

function isTokenListed(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor29.length:
        mem[0] = 29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to transfer funds!'
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

function sub_4fc39d6c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    stor26 = address(arg1)
    stor27 = address(arg2)
    stor28 = address(arg3)
}

function sub_aec6e273(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor29.length:
        mem[0] = 29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Token is not listed'
}

function sub_3912fc85(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor29.length:
        mem[0] = 29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Token is not listed'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: New owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
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

function sub_3e57bb14(?) payable {
    if not sub_048d228b[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any rewards that you could collect!'
    call msg.sender with:
       value sub_048d228b[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to transfer funds!'
    sub_048d228b[msg.sender] = 0
    if sub_dd76cba3 < sub_048d228b[msg.sender]:
        revert with 0, 17
    sub_dd76cba3 -= sub_048d228b[msg.sender]
    emit 0xd5803ea2: sub_048d228b[msg.sender], msg.sender, 2
}

function claimMintRewards() payable {
    if not sub_b36a2064[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any rewards that you could collect!'
    call msg.sender with:
       value sub_b36a2064[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to transfer funds!'
    sub_b36a2064[msg.sender] = 0
    if sub_dceb2629 < sub_b36a2064[msg.sender]:
        revert with 0, 17
    sub_dceb2629 -= sub_b36a2064[msg.sender]
    emit 0xd5803ea2: sub_b36a2064[msg.sender], msg.sender, 1
}

function createListing(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721 Marketplace: Listing price must be more than 0'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Marketplace: Caller is not the owner'
    stor29.length++
    stor6D44[stor29.length] = arg1
    stor6D44[stor29.length] = arg2
    stor6D44[stor29.length] = msg.sender
    emit 0xd8562534: arg1
}

function getListings() {
    mem[64] = (32 * stor29.length) + 128
    mem[96] = stor29.length
    s = 128
    idx = 0
    while idx < stor29.length:
        mem[0] = 29
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = stor29[idx].field_0
        mem[_12 + 32] = stor29[idx].field_256
        mem[_12 + 64] = stor29[idx].field_512
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _20 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_20 + 32]
        mem[t + 64] = mem[_20 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _13 + (96 * _14) + -mem[64] + 64
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: Approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: Approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_f1528ae1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    stor18.length = 0
    idx = 0
    while stor18.length > idx:
        stor18[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor18.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor18[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function walletOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 0
    while idx < balanceOf[address(arg1)]:
        if not arg1:
            revert with 0, 'ERC721: balance query for the zero address'
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 'ERC721Enumerable: owner index out of bounds'
        mem[0] = idx
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function getWhitelistedAddresses() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    mem[64] = (32 * stor18.length) + 128
    mem[96] = stor18.length
    if not stor18.length:
        mem[(32 * stor18.length) + 128] = 32
        mem[(32 * stor18.length) + 160] = stor18.length
        idx = 0
        s = (32 * stor18.length) + 192
        t = 128
        while idx < stor18.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor18.length) + 128
           len (96 * stor18.length) + 64
    mem[128] = address(stor18.field_0)
    idx = 128
    s = 0
    while (32 * stor18.length) + 96 > idx:
        mem[idx + 32] = stor18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18.length) + 128] = 32
    mem[(32 * stor18.length) + 160] = stor18.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor18.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor18.length) + -mem[64] + 192
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while (uint255(stor11.length) * 0.5) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function setUnrevealedURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while (uint255(stor12.length) * 0.5) + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
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
    idx = 0
    while idx < stor29.length:
        mem[0] = 29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
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
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
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
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
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
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    idx = 0
    while idx < stor29.length:
        mem[0] = 29
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if sub_dceb2629 > !sub_dd76cba3:
        revert with 0, 17
    if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3:
        revert with 0, 17
    if eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    call stor26 with:
       value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer funds to payout wallet!'
        call stor27 with:
           value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer funds to vault wallet #1!'
            call stor28 with:
               value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer funds to vault wallet #2!'
                if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3:
                    revert with 0, 17
                call owner with:
                   value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Failed to transfer funds to owner wallet!'
                else:
                    if not ext_call.success:
                        revert with 0, 'Failed to transfer funds to owner wallet!'
            else:
                if not ext_call.success:
                    revert with 0, 'Failed to transfer funds to vault wallet #2!'
                if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3:
                    revert with 0, 17
                call owner with:
                   value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to transfer funds to owner wallet!'
        else:
            if not ext_call.success:
                revert with 0, 'Failed to transfer funds to vault wallet #1!'
            call stor28 with:
               value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to transfer funds to vault wallet #2!'
            if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3:
                revert with 0, 17
            call owner with:
               value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to transfer funds to owner wallet!'
    else:
        if not ext_call.success:
            revert with 0, 'Failed to transfer funds to payout wallet!'
        call stor27 with:
           value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to transfer funds to vault wallet #1!'
        call stor28 with:
           value (10 * eth.balance(this.address)) - (10 * sub_dceb2629) - (10 * sub_dd76cba3) / 100 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to transfer funds to vault wallet #2!'
        if eth.balance(this.address) < sub_dceb2629 + sub_dd76cba3:
            revert with 0, 17
        call owner with:
           value eth.balance(this.address) - sub_dceb2629 - sub_dd76cba3 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to transfer funds to owner wallet!'
    ('bool', 'ext_call.success')
}

function sub_f9daade4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 1
    if not ('cd', 36).length:
        revert with 0, 1
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 1
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] == uint8(('cd', 36)[0])
        if uint16(s) > -uint8(('cd', 36)[0]) + 65535:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = uint8(('cd', 36)[0]) + uint16(s)
        continue 
    if tokenByIndex.length > !uint16(uint8(('cd', 36)[0]) * ('cd', 36).length):
        revert with 0, 17
    if tokenByIndex.length + uint16(uint8(('cd', 36)[0]) * ('cd', 36).length) > maxSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Number of tokens exceeded max supply!'
    idx = 0
    while ('cd', 4).length > uint8(idx):
        if uint8(idx) >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * uint8(idx)) + cd[36] + 36)] == uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
        if uint8(idx) >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * uint8(idx)) + cd[4] + 36)] == address(cd[((32 * uint8(idx)) + cd[4] + 36)])
        s = 1
        while uint8(s) <= uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]):
            if tokenByIndex.length > !uint8(idx):
                revert with 0, 17
            if tokenByIndex.length + uint8(idx) > !uint8(s):
                revert with 0, 17
            _370 = mem[64]
            mem[64] = mem[64] + 32
            mem[_370] = 0
            if not address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor8.length + uint8(idx) + uint8(s)]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor8.length + uint8(idx) + uint8(s)] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = tokenByIndex.length + uint8(idx) + uint8(s)
            if address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
                if not address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
                    if balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]++
                    mem[0] = tokenByIndex.length + uint8(idx) + uint8(s)
                    mem[32] = 2
                    ownerOf[stor8.length + uint8(idx) + uint8(s)] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                    emit Transfer(0, address(cd[((32 * uint8(idx)) + cd[4] + 36)]), tokenByIndex.length + uint8(idx) + uint8(s));
                    if ext_code.size(address(cd[((32 * uint8(idx)) + cd[4] + 36)])):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + uint8(idx) + uint8(s)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _370 + 32]
                            t = t + 32
                            continue 
                        call address(cd[((32 * uint8(idx)) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + uint8(idx) + uint8(s), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _500 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_500] == Mask(32, 224, mem[_500])
                        if Mask(32, 224, mem[_500]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if not address(cd[((32 * uint8(idx)) + cd[4] + 36)]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[((32 * uint8(idx)) + cd[4] + 36)])][stor3[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]] = tokenByIndex.length + uint8(idx) + uint8(s)
                    stor7[stor8.length + uint8(idx) + uint8(s)] = balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]
                    if balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]++
                    mem[0] = tokenByIndex.length + uint8(idx) + uint8(s)
                    mem[32] = 2
                    ownerOf[stor8.length + uint8(idx) + uint8(s)] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                    emit Transfer(0, address(cd[((32 * uint8(idx)) + cd[4] + 36)]), tokenByIndex.length + uint8(idx) + uint8(s));
                    if ext_code.size(address(cd[((32 * uint8(idx)) + cd[4] + 36)])):
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = tokenByIndex.length + uint8(idx) + uint8(s)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        t = 0
                        while t < 0:
                            mem[t + mem[64] + 164] = mem[t + _370 + 32]
                            t = t + 32
                            continue 
                        call address(cd[((32 * uint8(idx)) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, tokenByIndex.length + uint8(idx) + uint8(s), 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if not return_data.size:
                                if not mem[96]:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                revert with memory
                                  from 128
                                   len mem[96]
                            if not return_data.size:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with ext_call.return_data[0 len return_data.size]
                        _502 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_502] == Mask(32, 224, mem[_502])
                        if Mask(32, 224, mem[_502]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor8.length + uint8(idx) + uint8(s)] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[tokenByIndex.length + uint8(idx) + uint8(s)]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor8.length + uint8(idx) + uint8(s)]
                stor9[stor8.length + uint8(idx) + uint8(s)] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])] > -2:
                    revert with 0, 17
                balanceOf[address(cd[((32 * uint8(idx)) + cd[4] + 36)])]++
                mem[0] = tokenByIndex.length + uint8(idx) + uint8(s)
                mem[32] = 2
                ownerOf[stor8.length + uint8(idx) + uint8(s)] = address(cd[((32 * uint8(idx)) + cd[4] + 36)])
                emit Transfer(0, address(cd[((32 * uint8(idx)) + cd[4] + 36)]), tokenByIndex.length + uint8(idx) + uint8(s));
                if ext_code.size(address(cd[((32 * uint8(idx)) + cd[4] + 36)])):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = tokenByIndex.length + uint8(idx) + uint8(s)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    t = 0
                    while t < 0:
                        mem[t + mem[64] + 164] = mem[t + _370 + 32]
                        t = t + 32
                        continue 
                    call address(cd[((32 * uint8(idx)) + cd[4] + 36)]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, tokenByIndex.length + uint8(idx) + uint8(s), 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_504] == Mask(32, 224, mem[_504])
                    if Mask(32, 224, mem[_504]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if uint8(s) == 255:
                revert with 0, 17
            s = uint8(s) + 1
            continue 
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721 Metadata: URI query for nonexistent token!'
    if not revealed:
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor12.length):
                if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor12.length):
                    if 31 < uint255(stor12.length) * 0.5:
                        mem[128] = uint256(stor12.field_0)
                        idx = 128
                        s = 0
                        while (uint255(stor12.length) * 0.5) + 96 > idx:
                            mem[idx + 32] = stor12[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                    mem[128] = 256 * stor12.length.field_8
            else:
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 0, 34
                if stor12.length.field_1:
                    if 31 < stor12.length.field_1:
                        mem[128] = uint256(stor12.field_0)
                        idx = 128
                        s = 0
                        while stor12.length.field_1 + 96 > idx:
                            mem[idx + 32] = stor12[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                    mem[128] = 256 * stor12.length.field_8
            mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
            if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
                mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
            return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + 192] = 0
        return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _224 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_224) > _224:
                        mem[_224 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_224) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor11.length) * 0.5:
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor11.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor11.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor11.length) * 0.5) + 198] = 32
            mem[(uint255(stor11.length) * 0.5) + 230] = mem[160]
            mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor11.length) * 0.5) + 262] = 0
            return Array(len=mem[160], data=mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])])
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[192] = Mask(248, 8, stor11.length)
        else:
            if bool(stor11.length) != 1:
                mem[64] = 6
                _228 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_228) > _228:
                    mem[_228 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_228) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor11.length.field_1:
                mem[idx + 192] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor11.length.field_1 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor11.length.field_1 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor11.length.field_1 + 198] = 32
        mem[stor11.length.field_1 + 230] = mem[160]
        mem[stor11.length.field_1 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor11.length.field_1 + 262] = 0
        return Array(len=mem[160], data=mem[stor11.length.field_1 + 262 len ceil32(mem[160])])
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
        _473 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _509 = mem[96]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_509) <= _509:
                    _721 = mem[64]
                    mem[64] = _509 + _473 + (uint255(stor11.length) * 0.5) + 37
                    mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 37] = 32
                    _757 = mem[_721]
                    mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 69] = mem[_721]
                    mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_757)] = mem[_721 + 32 len ceil32(_757)]
                    if ceil32(_757) > _757:
                        mem[_757 + _509 + _473 + (uint255(stor11.length) * 0.5) + 101] = 0
                    return 32, mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_757) + 32]
                _722 = mem[64]
                mem[64] = _509 + _473 + (uint255(stor11.length) * 0.5) + 37
                mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 37] = 32
                _758 = mem[_722]
                mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 69] = mem[_722]
                mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_758)] = mem[_722 + 32 len ceil32(_758)]
                if ceil32(_758) > _758:
                    mem[_758 + _509 + _473 + (uint255(stor11.length) * 0.5) + 101] = 0
                return 32, mem[_509 + _473 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_758) + 32]
            if bool(stor11.length) != 1:
                _513 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_513] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_513) <= _513:
                    _724 = mem[64]
                    mem[64] = _513 + 5
                    mem[_513 + 5] = 32
                    _759 = mem[_724]
                    mem[_513 + 37] = mem[_724]
                    mem[_513 + 69 len ceil32(_759)] = mem[_724 + 32 len ceil32(_759)]
                    if ceil32(_759) > _759:
                        mem[_759 + _513 + 69] = 0
                    return 32, mem[_513 + 37 len ceil32(_759) + 32]
                _725 = mem[64]
                mem[64] = _513 + 5
                mem[_513 + 5] = 32
                _760 = mem[_725]
                mem[_513 + 37] = mem[_725]
                mem[_513 + 69 len ceil32(_760)] = mem[_725 + 32 len ceil32(_760)]
                if ceil32(_760) > _760:
                    mem[_760 + _513 + 69] = 0
                return 32, mem[_513 + 37 len ceil32(_760) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length) * 0.5:
                mem[idx + _473 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _709 = mem[96]
            mem[_473 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_709) <= _709:
                _921 = mem[64]
                mem[64] = _709 + _473 + (uint255(stor11.length) * 0.5) + 37
                mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 37] = 32
                _937 = mem[_921]
                mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 69] = mem[_921]
                mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_937)] = mem[_921 + 32 len ceil32(_937)]
                if ceil32(_937) > _937:
                    mem[_937 + _709 + _473 + (uint255(stor11.length) * 0.5) + 101] = 0
                return 32, mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_937) + 32]
            _922 = mem[64]
            mem[64] = _709 + _473 + (uint255(stor11.length) * 0.5) + 37
            mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 37] = 32
            _938 = mem[_922]
            mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 69] = mem[_922]
            mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_938)] = mem[_922 + 32 len ceil32(_938)]
            if ceil32(_938) > _938:
                mem[_938 + _709 + _473 + (uint255(stor11.length) * 0.5) + 101] = 0
            return 32, mem[_709 + _473 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_938) + 32]
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _514 = mem[96]
            mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[96] + mem[64] + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _726 = mem[64]
                mem[64] = _514 + _473 + stor11.length.field_1 + 37
                mem[_514 + _473 + stor11.length.field_1 + 37] = 32
                _761 = mem[_726]
                mem[_514 + _473 + stor11.length.field_1 + 69] = mem[_726]
                mem[_514 + _473 + stor11.length.field_1 + 101 len ceil32(_761)] = mem[_726 + 32 len ceil32(_761)]
                if ceil32(_761) > _761:
                    mem[_761 + _514 + _473 + stor11.length.field_1 + 101] = 0
                return 32, mem[_514 + _473 + stor11.length.field_1 + 69 len ceil32(_761) + 32]
            _727 = mem[64]
            mem[64] = _514 + _473 + stor11.length.field_1 + 37
            mem[_514 + _473 + stor11.length.field_1 + 37] = 32
            _762 = mem[_727]
            mem[_514 + _473 + stor11.length.field_1 + 69] = mem[_727]
            mem[_514 + _473 + stor11.length.field_1 + 101 len ceil32(_762)] = mem[_727 + 32 len ceil32(_762)]
            if ceil32(_762) > _762:
                mem[_762 + _514 + _473 + stor11.length.field_1 + 101] = 0
            return 32, mem[_514 + _473 + stor11.length.field_1 + 69 len ceil32(_762) + 32]
        if bool(stor11.length) != 1:
            _521 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_521] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_521) <= _521:
                _729 = mem[64]
                mem[64] = _521 + 5
                mem[_521 + 5] = 32
                _763 = mem[_729]
                mem[_521 + 37] = mem[_729]
                mem[_521 + 69 len ceil32(_763)] = mem[_729 + 32 len ceil32(_763)]
                if ceil32(_763) > _763:
                    mem[_763 + _521 + 69] = 0
                return 32, mem[_521 + 37 len ceil32(_763) + 32]
            _730 = mem[64]
            mem[64] = _521 + 5
            mem[_521 + 5] = 32
            _764 = mem[_730]
            mem[_521 + 37] = mem[_730]
            mem[_521 + 69 len ceil32(_764)] = mem[_730 + 32 len ceil32(_764)]
            if ceil32(_764) > _764:
                mem[_764 + _521 + 69] = 0
            return 32, mem[_521 + 37 len ceil32(_764) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1:
            mem[idx + _473 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _710 = mem[96]
        mem[_473 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_710 + _473 + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_710) <= _710:
            _923 = mem[64]
            mem[64] = _710 + _473 + stor11.length.field_1 + 37
            mem[_710 + _473 + stor11.length.field_1 + 37] = 32
            _939 = mem[_923]
            mem[_710 + _473 + stor11.length.field_1 + 69] = mem[_923]
            mem[_710 + _473 + stor11.length.field_1 + 101 len ceil32(_939)] = mem[_923 + 32 len ceil32(_939)]
            if ceil32(_939) > _939:
                mem[_939 + _710 + _473 + stor11.length.field_1 + 101] = 0
            return 32, mem[_710 + _473 + stor11.length.field_1 + 69 len ceil32(_939) + 32]
        _924 = mem[64]
        mem[64] = _710 + _473 + stor11.length.field_1 + 37
        mem[_710 + _473 + stor11.length.field_1 + 37] = 32
        _940 = mem[_924]
        mem[_710 + _473 + stor11.length.field_1 + 69] = mem[_924]
        mem[_710 + _473 + stor11.length.field_1 + 101 len ceil32(_940)] = mem[_924 + 32 len ceil32(_940)]
        if ceil32(_940) > _940:
            mem[_940 + _710 + _473 + stor11.length.field_1 + 101] = 0
        return 32, mem[_710 + _473 + stor11.length.field_1 + 69 len ceil32(_940) + 32]
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
    _474 = mem[64]
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _511 = mem[96]
            mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_511) <= _511:
                _731 = mem[64]
                mem[64] = _511 + _474 + (uint255(stor11.length) * 0.5) + 37
                mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 37] = 32
                _765 = mem[_731]
                mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 69] = mem[_731]
                mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_765)] = mem[_731 + 32 len ceil32(_765)]
                if ceil32(_765) > _765:
                    mem[_765 + _511 + _474 + (uint255(stor11.length) * 0.5) + 101] = 0
                return 32, mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_765) + 32]
            _732 = mem[64]
            mem[64] = _511 + _474 + (uint255(stor11.length) * 0.5) + 37
            mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 37] = 32
            _766 = mem[_732]
            mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 69] = mem[_732]
            mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_766)] = mem[_732 + 32 len ceil32(_766)]
            if ceil32(_766) > _766:
                mem[_766 + _511 + _474 + (uint255(stor11.length) * 0.5) + 101] = 0
            return 32, mem[_511 + _474 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_766) + 32]
        if bool(stor11.length) != 1:
            _515 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_515] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_515) <= _515:
                _734 = mem[64]
                mem[64] = _515 + 5
                mem[_515 + 5] = 32
                _767 = mem[_734]
                mem[_515 + 37] = mem[_734]
                mem[_515 + 69 len ceil32(_767)] = mem[_734 + 32 len ceil32(_767)]
                if ceil32(_767) > _767:
                    mem[_767 + _515 + 69] = 0
                return 32, mem[_515 + 37 len ceil32(_767) + 32]
            _735 = mem[64]
            mem[64] = _515 + 5
            mem[_515 + 5] = 32
            _768 = mem[_735]
            mem[_515 + 37] = mem[_735]
            mem[_515 + 69 len ceil32(_768)] = mem[_735 + 32 len ceil32(_768)]
            if ceil32(_768) > _768:
                mem[_768 + _515 + 69] = 0
            return 32, mem[_515 + 37 len ceil32(_768) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < uint255(stor11.length) * 0.5:
            mem[idx + _474 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _711 = mem[96]
        mem[_474 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_711) <= _711:
            _925 = mem[64]
            mem[64] = _711 + _474 + (uint255(stor11.length) * 0.5) + 37
            mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 37] = 32
            _941 = mem[_925]
            mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 69] = mem[_925]
            mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_941)] = mem[_925 + 32 len ceil32(_941)]
            if ceil32(_941) > _941:
                mem[_941 + _711 + _474 + (uint255(stor11.length) * 0.5) + 101] = 0
            return 32, mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_941) + 32]
        _926 = mem[64]
        mem[64] = _711 + _474 + (uint255(stor11.length) * 0.5) + 37
        mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 37] = 32
        _942 = mem[_926]
        mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 69] = mem[_926]
        mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 101 len ceil32(_942)] = mem[_926 + 32 len ceil32(_942)]
        if ceil32(_942) > _942:
            mem[_942 + _711 + _474 + (uint255(stor11.length) * 0.5) + 101] = 0
        return 32, mem[_711 + _474 + (uint255(stor11.length) * 0.5) + 69 len ceil32(_942) + 32]
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 0, 34
    if not bool(stor11.length):
        mem[mem[64] + 32] = Mask(248, 8, stor11.length)
        _516 = mem[96]
        mem[mem[64] + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[96] + mem[64] + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _736 = mem[64]
            mem[64] = _516 + _474 + stor11.length.field_1 + 37
            mem[_516 + _474 + stor11.length.field_1 + 37] = 32
            _769 = mem[_736]
            mem[_516 + _474 + stor11.length.field_1 + 69] = mem[_736]
            mem[_516 + _474 + stor11.length.field_1 + 101 len ceil32(_769)] = mem[_736 + 32 len ceil32(_769)]
            if ceil32(_769) > _769:
                mem[_769 + _516 + _474 + stor11.length.field_1 + 101] = 0
            return 32, mem[_516 + _474 + stor11.length.field_1 + 69 len ceil32(_769) + 32]
        _737 = mem[64]
        mem[64] = _516 + _474 + stor11.length.field_1 + 37
        mem[_516 + _474 + stor11.length.field_1 + 37] = 32
        _770 = mem[_737]
        mem[_516 + _474 + stor11.length.field_1 + 69] = mem[_737]
        mem[_516 + _474 + stor11.length.field_1 + 101 len ceil32(_770)] = mem[_737 + 32 len ceil32(_770)]
        if ceil32(_770) > _770:
            mem[_770 + _516 + _474 + stor11.length.field_1 + 101] = 0
        return 32, mem[_516 + _474 + stor11.length.field_1 + 69 len ceil32(_770) + 32]
    if bool(stor11.length) != 1:
        _523 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_523] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_523) <= _523:
            _739 = mem[64]
            mem[64] = _523 + 5
            mem[_523 + 5] = 32
            _771 = mem[_739]
            mem[_523 + 37] = mem[_739]
            mem[_523 + 69 len ceil32(_771)] = mem[_739 + 32 len ceil32(_771)]
            if ceil32(_771) > _771:
                mem[_771 + _523 + 69] = 0
            return 32, mem[_523 + 37 len ceil32(_771) + 32]
        _740 = mem[64]
        mem[64] = _523 + 5
        mem[_523 + 5] = 32
        _772 = mem[_740]
        mem[_523 + 37] = mem[_740]
        mem[_523 + 69 len ceil32(_772)] = mem[_740 + 32 len ceil32(_772)]
        if ceil32(_772) > _772:
            mem[_772 + _523 + 69] = 0
        return 32, mem[_523 + 37 len ceil32(_772) + 32]
    mem[0] = 11
    idx = 0
    s = 0
    while idx < stor11.length.field_1:
        mem[idx + _474 + 32] = stor11[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _712 = mem[96]
    mem[_474 + stor11.length.field_1 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_712 + _474 + stor11.length.field_1 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_712) <= _712:
        _927 = mem[64]
        mem[64] = _712 + _474 + stor11.length.field_1 + 37
        mem[_712 + _474 + stor11.length.field_1 + 37] = 32
        _943 = mem[_927]
        mem[_712 + _474 + stor11.length.field_1 + 69] = mem[_927]
        mem[_712 + _474 + stor11.length.field_1 + 101 len ceil32(_943)] = mem[_927 + 32 len ceil32(_943)]
        if ceil32(_943) > _943:
            mem[_943 + _712 + _474 + stor11.length.field_1 + 101] = 0
        return 32, mem[_712 + _474 + stor11.length.field_1 + 69 len ceil32(_943) + 32]
    _928 = mem[64]
    mem[64] = _712 + _474 + stor11.length.field_1 + 37
    mem[_712 + _474 + stor11.length.field_1 + 37] = 32
    _944 = mem[_928]
    mem[_712 + _474 + stor11.length.field_1 + 69] = mem[_928]
    mem[_712 + _474 + stor11.length.field_1 + 101 len ceil32(_944)] = mem[_928 + 32 len ceil32(_944)]
    if ceil32(_944) > _944:
        mem[_944 + _712 + _474 + stor11.length.field_1 + 101] = 0
    return 32, mem[_712 + _474 + stor11.length.field_1 + 69 len ceil32(_944) + 32]
}



}
