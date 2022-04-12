contract main {




// =====================  Runtime code  =====================


#
#  - sub_1f0e2c72(?)
#  - nfts(uint256 arg1)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor8;
array of uint256 tokenByIndex;
mapping of uint256 stor10;
array of struct stor12;
mapping of address nftOwners;
uint256 airdropEnd;
uint256 sub_2b9fce47;
uint256 sub_a4a5412e;
uint256 nftsSale;
uint256 price;
array of struct stor19;
uint256 MAX_AIRDROP_TOKENS;
uint256 sub_54a33d92;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function airdropEnd() {
    return airdropEnd
}

function totalSupply() {
    return tokenByIndex.length
}

function sub_2b9fce47(?) {
    return sub_2b9fce47
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

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function sub_54a33d92(?) {
    return sub_54a33d92
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

function owner() {
    return owner
}

function price() {
    return price
}

function sub_a4a5412e(?) {
    return sub_a4a5412e
}

function nftsSale() {
    return nftsSale
}

function nftOwners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nftOwners[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function MAX_AIRDROP_TOKENS() {
    return MAX_AIRDROP_TOKENS
}

function _fallback() {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f29e51e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropEnd = arg1
}

function sub_6de80541(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2b9fce47 = arg1
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    price = arg1
}

function sub_c1d86ba9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54a33d92 = arg1
}

function sub_8f0e3b07(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_AIRDROP_TOKENS = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor19.length = 0
            idx = 0
            while stor19.length.field_1 + 31 / 32 > idx:
                stor19[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_33c66553(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if nftOwners[arg1] != msg.sender:
        revert with 0, 'You have not bought this NFT.'
    if block.timestamp < airdropEnd:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The Airdrop/Sale has not finished yet.'
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 >= stor12.length:
        revert with 'NH{q', 50
    if stor12[arg1].field_0:
        revert with 0, 'The NFT is already bought.'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != owner:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not owner:
        stor10[arg1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg1
    else:
        if owner != msg.sender:
            if not owner:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[stor6] < 1:
                revert with 'NH{q', 17
            if stor8[arg1] != balanceOf[stor6] - 1:
                tokenOfOwnerByIndex[stor6][stor8[arg1]] = tokenOfOwnerByIndex[stor6][stor3[stor6] - 1]
                stor8[stor7[stor6][stor3[stor6] - 1]] = stor8[arg1]
            stor8[arg1] = 0
            tokenOfOwnerByIndex[stor6][stor3[stor6] - 1] = 0
    if msg.sender:
        if owner != msg.sender:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = arg1
            stor8[arg1] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor10[arg1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor10[arg1]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg1]
        stor10[arg1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor6] < 1:
        revert with 'NH{q', 17
    balanceOf[stor6]--
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    emit Transfer(owner, msg.sender, arg1);
    if arg1 < 1:
        revert with 'NH{q', 17
    if arg1 - 1 >= stor12.length:
        revert with 'NH{q', 50
    stor12[arg1].field_0 = 1
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
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
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
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
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
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
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
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

function baseURI() {
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 < stor19.length.field_1:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)])
                mem[128] = 256 * stor19.length.field_8
        mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) > stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length.field_1), data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    else:
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor19.length.field_1:
            if 31 < stor19.length.field_1:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)])
            mem[128] = 256 * stor19.length.field_8
    mem[ceil32(stor19.length.field_1) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) > stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1)], mem[(2 * ceil32(stor19.length.field_1)) + 192 len 2 * ceil32(stor19.length.field_1)]), 
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
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
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
                tokenOfOwnerByIndex[address(arg1)][stor8[arg3]] = tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1]
                stor8[stor7[address(arg1)][stor3[address(arg1)] - 1]] = stor8[arg3]
            stor8[arg3] = 0
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)] - 1] = 0
    if arg2:
        if arg2 != arg1:
            if not arg2:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(arg2)][stor3[address(arg2)]] = arg3
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

function allNfts() {
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    s = 128
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        _103 = mem[64]
        mem[64] = mem[64] + 224
        mem[_103] = stor12[idx].field_0
        mem[_103 + 32] = stor12[idx].field_256
        mem[_103 + 64] = stor12[idx].field_512
        if stor12[idx].field_768:
            if stor12[idx].field_768 == stor12[idx].field_769 < 32:
                revert with 'NH{q', 34
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].field_769) + 32
            mem[_106] = stor12[idx].field_769
            if stor12[idx].field_768:
                if stor12[idx].field_768 == stor12[idx].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor12[idx].field_769:
                    mem[_103 + 96] = _106
                    mem[_103 + 128] = stor12[idx].field_1024
                    mem[_103 + 160] = stor12[idx].field_1280
                    if stor12[idx].field_1536:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _115 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_115] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_115 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_115 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _115 + 32
                                    u = sha3(mem[0])
                                    while _115 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_115 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_115 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _115 + 32
                                    u = sha3(mem[0])
                                    while _115 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _115
                    else:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _116 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_116] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_116 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_116 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _116 + 32
                                    u = sha3(mem[0])
                                    while _116 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_116 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_116 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _116 + 32
                                    u = sha3(mem[0])
                                    while _116 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _116
                else:
                    if 31 >= stor12[idx].field_769:
                        mem[_106 + 32] = 256 * stor12[idx].field_776
                        mem[_103 + 96] = _106
                        mem[_103 + 128] = stor12[idx].field_1024
                        mem[_103 + 160] = stor12[idx].field_1280
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _119 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_119] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_119 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_119 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _119 + 32
                                        u = sha3(mem[0])
                                        while _119 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_119 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_119 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _119 + 32
                                        u = sha3(mem[0])
                                        while _119 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _119
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _123 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_123] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_123 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_123 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _123 + 32
                                        u = sha3(mem[0])
                                        while _123 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_123 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_123 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _123 + 32
                                        u = sha3(mem[0])
                                        while _123 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _123
                    else:
                        mem[0] = (7 * idx) + sha3(12) + 3
                        mem[_106 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 3)].field_0
                        t = _106 + 32
                        u = sha3(mem[0])
                        while _106 + stor12[idx].field_769 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_103 + 96] = _106
                        mem[_103 + 128] = stor12[idx].field_1024
                        mem[_103 + 160] = stor12[idx].field_1280
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _205 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_205] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if not stor12[idx].field_1537:
                                    mem[_103 + 192] = _205
                                    mem[s] = _103
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                if 31 >= stor12[idx].field_1537:
                                    mem[_205 + 32] = 256 * stor12[idx].field_1544
                                    mem[_103 + 192] = _205
                                    mem[s] = _103
                                    s = s + 32
                                    idx = idx + 1
                                    continue 
                                mem[0] = (7 * idx) + sha3(12) + 6
                                mem[_205 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                t = _205 + 32
                                u = sha3(mem[0])
                                while _205 + stor12[u].field_1537 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                                mem[_103 + 192] = _205
                                mem[t] = _103
                                t = t + 32
                                u = u + 1
                                continue 
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_205 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_205 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _205 + 32
                                    u = sha3(mem[0])
                                    while _205 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_103 + 192] = _205
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _210 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_210] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_210 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_210 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _210 + 32
                                        u = sha3(mem[0])
                                        while _210 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_210 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_210 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _210 + 32
                                        u = sha3(mem[0])
                                        while _210 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _210
            else:
                if stor12[idx].field_768 == stor12[idx].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor12[idx].field_769:
                    mem[_103 + 96] = _106
                    mem[_103 + 128] = stor12[idx].field_1024
                    mem[_103 + 160] = stor12[idx].field_1280
                    if stor12[idx].field_1536:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _117 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_117] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_117 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_117 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _117 + 32
                                    u = sha3(mem[0])
                                    while _117 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_117 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_117 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _117 + 32
                                    u = sha3(mem[0])
                                    while _117 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _117
                    else:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _120 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_120] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_120 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_120 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _120 + 32
                                    u = sha3(mem[0])
                                    while _120 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_120 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_120 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _120 + 32
                                    u = sha3(mem[0])
                                    while _120 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _120
                else:
                    if 31 >= stor12[idx].field_769:
                        mem[_106 + 32] = 256 * stor12[idx].field_776
                        mem[_103 + 96] = _106
                        mem[_103 + 128] = stor12[idx].field_1024
                        mem[_103 + 160] = stor12[idx].field_1280
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _124 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_124] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_124 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_124 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _124 + 32
                                        u = sha3(mem[0])
                                        while _124 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_124 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_124 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _124 + 32
                                        u = sha3(mem[0])
                                        while _124 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _124
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _129 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_129] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_129 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_129 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _129 + 32
                                    u = sha3(mem[0])
                                    while _129 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_103 + 192] = _129
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        if not stor12[idx].field_1537:
                            mem[_103 + 192] = _129
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor12[idx].field_1537:
                            mem[_129 + 32] = 256 * stor12[idx].field_1544
                            mem[_103 + 192] = _129
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (7 * idx) + sha3(12) + 6
                        mem[_129 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                        t = _129 + 32
                        u = sha3(mem[0])
                        while _129 + stor12[u].field_1537 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_103 + 192] = _129
                        mem[t] = _103
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (7 * idx) + sha3(12) + 3
                    mem[_106 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 3)].field_0
                    t = _106 + 32
                    u = sha3(mem[0])
                    while _106 + stor12[idx].field_769 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_103 + 96] = _106
                    mem[_103 + 128] = stor12[idx].field_1024
                    mem[_103 + 160] = stor12[idx].field_1280
                    if stor12[idx].field_1536:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _206 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_206] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_206 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_206 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _206 + 32
                                    u = sha3(mem[0])
                                    while _206 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_206 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_206 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _206 + 32
                                    u = sha3(mem[0])
                                    while _206 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _206
                    else:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _211 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_211] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_211 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_211 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_211 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_211 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _211 + 32
                                    u = sha3(mem[0])
                                    while _211 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _211
        else:
            if stor12[idx].field_768 == stor12[idx].field_769 < 32:
                revert with 'NH{q', 34
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].field_769) + 32
            mem[_107] = stor12[idx].field_769
            if stor12[idx].field_768:
                if stor12[idx].field_768 == stor12[idx].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor12[idx].field_769:
                    mem[_103 + 96] = _107
                    mem[_103 + 128] = stor12[idx].field_1024
                    mem[_103 + 160] = stor12[idx].field_1280
                    if stor12[idx].field_1536:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _118 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_118] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_118 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_118 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _118 + 32
                                    u = sha3(mem[0])
                                    while _118 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_118 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_118 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _118 + 32
                                    u = sha3(mem[0])
                                    while _118 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _118
                    else:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _121 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_121] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_121 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_121 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _121 + 32
                                    u = sha3(mem[0])
                                    while _121 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_121 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_121 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _121 + 32
                                    u = sha3(mem[0])
                                    while _121 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _121
                else:
                    if 31 >= stor12[idx].field_769:
                        mem[_107 + 32] = 256 * stor12[idx].field_776
                        mem[_103 + 96] = _107
                        mem[_103 + 128] = stor12[idx].field_1024
                        mem[_103 + 160] = stor12[idx].field_1280
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _125 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_125] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_125 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_125 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _125 + 32
                                        u = sha3(mem[0])
                                        while _125 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_125 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_125 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _125 + 32
                                        u = sha3(mem[0])
                                        while _125 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _125
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _130 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_130] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_130 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_130 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _130 + 32
                                    u = sha3(mem[0])
                                    while _130 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_103 + 192] = _130
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        if not stor12[idx].field_1537:
                            mem[_103 + 192] = _130
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor12[idx].field_1537:
                            mem[_130 + 32] = 256 * stor12[idx].field_1544
                            mem[_103 + 192] = _130
                            mem[s] = _103
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (7 * idx) + sha3(12) + 6
                        mem[_130 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                        t = _130 + 32
                        u = sha3(mem[0])
                        while _130 + stor12[u].field_1537 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_103 + 192] = _130
                        mem[t] = _103
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[0] = (7 * idx) + sha3(12) + 3
                    mem[_107 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 3)].field_0
                    t = _107 + 32
                    u = sha3(mem[0])
                    while _107 + stor12[idx].field_769 > t:
                        mem[t + 32] = stor1[u].field_0
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_103 + 96] = _107
                    mem[_103 + 128] = stor12[idx].field_1024
                    mem[_103 + 160] = stor12[idx].field_1280
                    if stor12[idx].field_1536:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _207 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_207] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_207 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_207 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _207 + 32
                                    u = sha3(mem[0])
                                    while _207 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_207 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_207 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _207 + 32
                                    u = sha3(mem[0])
                                    while _207 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _207
                    else:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _212 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_212] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_212 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_212 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _212 + 32
                                    u = sha3(mem[0])
                                    while _212 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_212 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_212 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _212 + 32
                                    u = sha3(mem[0])
                                    while _212 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _212
            else:
                if stor12[idx].field_768 == stor12[idx].field_769 < 32:
                    revert with 'NH{q', 34
                if not stor12[idx].field_769:
                    mem[_103 + 96] = _107
                    mem[_103 + 128] = stor12[idx].field_1024
                    mem[_103 + 160] = stor12[idx].field_1280
                    if stor12[idx].field_1536:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _122 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_122] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_122 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_122 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _122 + 32
                                    u = sha3(mem[0])
                                    while _122 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_122 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_122 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _122 + 32
                                    u = sha3(mem[0])
                                    while _122 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _122
                    else:
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _126 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_126] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_126 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_126 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _126 + 32
                                    u = sha3(mem[0])
                                    while _126 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if stor12[idx].field_1537:
                                if 31 >= stor12[idx].field_1537:
                                    mem[_126 + 32] = 256 * stor12[idx].field_1544
                                else:
                                    mem[0] = (7 * idx) + sha3(12) + 6
                                    mem[_126 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                    t = _126 + 32
                                    u = sha3(mem[0])
                                    while _126 + stor12[idx].field_1537 > t:
                                        mem[t + 32] = stor1[u].field_0
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_103 + 192] = _126
                else:
                    if 31 >= stor12[idx].field_769:
                        mem[_107 + 32] = 256 * stor12[idx].field_776
                        mem[_103 + 96] = _107
                        mem[_103 + 128] = stor12[idx].field_1024
                        mem[_103 + 160] = stor12[idx].field_1280
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _131 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_131] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_131 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_131 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _131 + 32
                                        u = sha3(mem[0])
                                        while _131 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                                mem[_103 + 192] = _131
                                mem[s] = _103
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if not stor12[idx].field_1537:
                                mem[_103 + 192] = _131
                                mem[s] = _103
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor12[idx].field_1537:
                                mem[_131 + 32] = 256 * stor12[idx].field_1544
                                mem[_103 + 192] = _131
                                mem[s] = _103
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (7 * idx) + sha3(12) + 6
                            mem[_131 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                            t = _131 + 32
                            u = sha3(mem[0])
                            while _131 + stor12[u].field_1537 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_103 + 192] = _131
                            mem[t] = _103
                            t = t + 32
                            u = u + 1
                            continue 
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        _135 = mem[64]
                        mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                        mem[_135] = stor12[idx].field_1537
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            if not stor12[idx].field_1537:
                                mem[_103 + 192] = _135
                                mem[s] = _103
                                s = s + 32
                                idx = idx + 1
                                continue 
                            if 31 >= stor12[idx].field_1537:
                                mem[_135 + 32] = 256 * stor12[idx].field_1544
                                mem[_103 + 192] = _135
                                mem[s] = _103
                                s = s + 32
                                idx = idx + 1
                                continue 
                            mem[0] = (7 * idx) + sha3(12) + 6
                            mem[_135 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                            t = _135 + 32
                            u = sha3(mem[0])
                            while _135 + stor12[u].field_1537 > t:
                                mem[t + 32] = stor1[u].field_0
                                t = t + 32
                                u = u + 1
                                continue 
                            mem[_103 + 192] = _135
                            mem[t] = _103
                            t = t + 32
                            u = u + 1
                            continue 
                        if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                            revert with 'NH{q', 34
                        if stor12[idx].field_1537:
                            if 31 >= stor12[idx].field_1537:
                                mem[_135 + 32] = 256 * stor12[idx].field_1544
                            else:
                                mem[0] = (7 * idx) + sha3(12) + 6
                                mem[_135 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                t = _135 + 32
                                u = sha3(mem[0])
                                while _135 + stor12[idx].field_1537 > t:
                                    mem[t + 32] = stor1[u].field_0
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_103 + 192] = _135
                    else:
                        mem[0] = (7 * idx) + sha3(12) + 3
                        mem[_107 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 3)].field_0
                        t = _107 + 32
                        u = sha3(mem[0])
                        while _107 + stor12[idx].field_769 > t:
                            mem[t + 32] = stor1[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_103 + 96] = _107
                        mem[_103 + 128] = stor12[idx].field_1024
                        mem[_103 + 160] = stor12[idx].field_1280
                        if stor12[idx].field_1536:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _208 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_208] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_208 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_208 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _208 + 32
                                        u = sha3(mem[0])
                                        while _208 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_208 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_208 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _208 + 32
                                        u = sha3(mem[0])
                                        while _208 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _208
                        else:
                            if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                revert with 'NH{q', 34
                            _213 = mem[64]
                            mem[64] = mem[64] + ceil32(stor12[idx].field_1537) + 32
                            mem[_213] = stor12[idx].field_1537
                            if stor12[idx].field_1536:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_213 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_213 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _213 + 32
                                        u = sha3(mem[0])
                                        while _213 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if stor12[idx].field_1536 == stor12[idx].field_1537 < 32:
                                    revert with 'NH{q', 34
                                if stor12[idx].field_1537:
                                    if 31 >= stor12[idx].field_1537:
                                        mem[_213 + 32] = 256 * stor12[idx].field_1544
                                    else:
                                        mem[0] = (7 * idx) + sha3(12) + 6
                                        mem[_213 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 6)].field_0
                                        t = _213 + 32
                                        u = sha3(mem[0])
                                        while _213 + stor12[idx].field_1537 > t:
                                            mem[t + 32] = stor1[u].field_0
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_103 + 192] = _213
        mem[s] = _103
        s = s + 32
        idx = idx + 1
        continue 
    _104 = mem[64]
    mem[mem[64]] = 32
    _105 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _105:
        mem[u] = t + -_104 - 64
        _202 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_202 + 32]
        mem[t + 64] = mem[_202 + 64]
        _231 = mem[_202 + 96]
        mem[t + 96] = 224
        _232 = mem[_231]
        mem[t + 224] = mem[_231]
        v = 0
        while v < _232:
            mem[t + v + 256] = mem[_231 + v + 32]
            v = v + 32
            continue 
        if ceil32(_232) <= _232:
            mem[t + 128] = mem[_202 + 140 len 20]
            mem[t + 160] = mem[_202 + 160]
            _249 = mem[_202 + 192]
            mem[t + 192] = ceil32(_232) + 256
            _251 = mem[_249]
            mem[t + ceil32(_232) + 256] = mem[_249]
            v = 0
            while v < _251:
                mem[t + ceil32(_232) + v + 288] = mem[_249 + v + 32]
                v = v + 32
                continue 
            if ceil32(_251) > _251:
                mem[t + ceil32(_232) + _251 + 288] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_232) + ceil32(_251) + 288
            u = u + 32
            continue 
        mem[t + _232 + 256] = 0
        mem[t + 128] = mem[_202 + 140 len 20]
        mem[t + 160] = mem[_202 + 160]
        _250 = mem[_202 + 192]
        mem[t + 192] = ceil32(_232) + 256
        _252 = mem[_250]
        mem[t + ceil32(_232) + 256] = mem[_250]
        v = 0
        while v < _252:
            mem[t + ceil32(_232) + v + 288] = mem[_250 + v + 32]
            v = v + 32
            continue 
        if ceil32(_252) > _252:
            mem[t + ceil32(_232) + _252 + 288] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_232) + ceil32(_252) + 288
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor19.length):
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor19.length.field_1:
                if 31 >= stor19.length.field_1:
                    mem[128] = 256 * stor19.length.field_8
                    if stor19.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
                        return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
                    mem[ceil32(stor19.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                    if ceil32(stor19.length.field_1) > stor19.length.field_1:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor19.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]), 
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + mem[ceil32(stor19.length.field_1) + ceil32(s) + 160] + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) + 32], 
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor19.length) == stor19.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor19.length.field_1:
                if stor19.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
                    return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
                mem[ceil32(stor19.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                if ceil32(stor19.length.field_1) > stor19.length.field_1:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor19.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + mem[ceil32(stor19.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) + 32], 
            if 31 >= stor19.length.field_1:
                mem[128] = 256 * stor19.length.field_8
                if stor19.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
                    return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
                mem[ceil32(stor19.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                if ceil32(stor19.length.field_1) > stor19.length.field_1:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor19.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]), 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + mem[ceil32(stor19.length.field_1) + ceil32(s) + 160] + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) + 32], 
            mem[128] = uint256(stor19.field_0)
            idx = 128
            s = 0
            while stor19.length.field_1 + 96 > idx:
                mem[idx + 32] = stor19[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if stor19.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
            return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
        mem[ceil32(stor19.length.field_1) + 128] = s
        if s:
            mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) > stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + mem[ceil32(stor19.length.field_1) + ceil32(s) + 160] + 261] = 0
        return Array(len=mem[ceil32(stor19.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(mem[ceil32(stor19.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor19.length.field_1
    if bool(stor19.length):
        if bool(stor19.length) == stor19.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor19.length.field_1:
            if stor19.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
                return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
            mem[ceil32(stor19.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                    mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                    if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                        _3702 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3702)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3702 + 261] = 0
                        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3702) + 32], 
                    _3734 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3734)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3734 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3734) + 32], 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _3703 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3703)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3703 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3703) + 32], 
                _3735 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3735)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3735 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3735) + 32], 
            mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _3704 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3704)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3704 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3704) + 32], 
                _3736 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3736)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3736 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3736) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3705 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3705)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3705 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3705) + 32], 
            _3737 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3737)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3737 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3737) + 32], 
        if 31 < stor19.length.field_1:
            mem[128] = uint256(stor19.field_0)
            idx = 128
            s = 0
            while stor19.length.field_1 + 96 > idx:
                mem[idx + 32] = stor19[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor19.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                    mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
                return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
            mem[ceil32(stor19.length.field_1) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
                if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                    if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                        _4414 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4414)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4414)]
                        if ceil32(_4414) > _4414:
                            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4414 + 261] = 0
                        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4414) + 32], 
                    _4430 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4430)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4430)]
                    if ceil32(_4430) > _4430:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4430 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4430) + 32], 
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _4415 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4415)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4415)]
                    if ceil32(_4415) > _4415:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4415 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4415) + 32], 
                _4431 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4431)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4431)]
                if ceil32(_4431) > _4431:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4431 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4431) + 32], 
            mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _4416 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4416)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4416)]
                    if ceil32(_4416) > _4416:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4416 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4416) + 32], 
                _4432 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4432)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4432)]
                if ceil32(_4432) > _4432:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4432 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4432) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _4417 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4417)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4417)]
                if ceil32(_4417) > _4417:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4417 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4417) + 32], 
            _4433 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4433)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4433)]
            if ceil32(_4433) > _4433:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4433 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4433) + 32], 
        mem[128] = 256 * stor19.length.field_8
        if stor19.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
            return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
        mem[ceil32(stor19.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _3706 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3706)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3706 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3706) + 32], 
                _3738 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3738)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3738 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3738) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3707 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3707)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3707 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3707) + 32], 
            _3739 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3739)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3739 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3739) + 32], 
        mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3708 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3708)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3708 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3708) + 32], 
            _3740 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3740)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3740 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3740) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
            _3709 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3709)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3709 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3709) + 32], 
        _3741 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3741)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3741 + 261] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3741) + 32], 
    if bool(stor19.length) == stor19.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor19.length.field_1:
        if stor19.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
            return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
        mem[ceil32(stor19.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _3710 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3710)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3710)]
                    if ceil32(_3710) > _3710:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3710 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3710) + 32], 
                _3742 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3742)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3742)]
                if ceil32(_3742) > _3742:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3742 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3742) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3711 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3711)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3711)]
                if ceil32(_3711) > _3711:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3711 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3711) + 32], 
            _3743 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3743)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3743)]
            if ceil32(_3743) > _3743:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3743 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3743) + 32], 
        mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3712 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3712)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3712)]
                if ceil32(_3712) > _3712:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3712 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3712) + 32], 
            _3744 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3744)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3744)]
            if ceil32(_3744) > _3744:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3744 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3744) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
            _3713 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3713)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3713)]
            if ceil32(_3713) > _3713:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3713 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3713) + 32], 
        _3745 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3745)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3745)]
        if ceil32(_3745) > _3745:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3745 + 261] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3745) + 32], 
    if 31 >= stor19.length.field_1:
        mem[128] = 256 * stor19.length.field_8
        if stor19.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
                mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
            return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
        mem[ceil32(stor19.length.field_1) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
            if ceil32(stor19.length.field_1) <= stor19.length.field_1:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
                mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
                if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                    _3714 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3714)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3714 + 261] = 0
                    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3714) + 32], 
                _3746 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3746)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3746 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3746) + 32], 
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3715 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3715)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3715 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3715) + 32], 
            _3747 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3747)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3747 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3747) + 32], 
        mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _3716 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3716)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3716 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3716) + 32], 
            _3748 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3748)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3748 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3748) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
            _3717 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3717)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3717 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3717) + 32], 
        _3749 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_3749)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _3749 + 261] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_3749) + 32], 
    mem[0] = 19
    mem[128] = uint256(stor19.field_0)
    idx = 128
    s = 0
    while stor19.length.field_1 + 96 > idx:
        mem[idx + 32] = stor19[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor19.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor19.length.field_1) + 224 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 224] = '0'
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 225] = '.json'
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 230] = 32
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 262] = mem[ceil32(stor19.length.field_1) + 192]
        mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])] = mem[ceil32(stor19.length.field_1) + 224 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor19.length.field_1) + 192]) > mem[ceil32(stor19.length.field_1) + 192]:
            mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 192] + 294] = 0
        return Array(len=mem[ceil32(stor19.length.field_1) + 192], data=mem[ceil32(stor19.length.field_1) + stor19.length.field_1 + 294 len ceil32(mem[ceil32(stor19.length.field_1) + 192])]), 
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
    mem[ceil32(stor19.length.field_1) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
        if ceil32(stor19.length.field_1) <= stor19.length.field_1:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
            mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
            if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
                _4418 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4418)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4418 + 261] = 0
                return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4418) + 32], 
            _4434 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4434)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4434 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4434) + 32], 
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
            _4419 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4419)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4419 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4419) + 32], 
        _4435 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4435)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4435 + 261] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4435) + 32], 
    mem[ceil32(stor19.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor19.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor19.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(stor19.length.field_1)] = mem[128 len ceil32(stor19.length.field_1)]
    if ceil32(stor19.length.field_1) <= stor19.length.field_1:
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
        mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
        if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
            _4420 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4420)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4420 + 261] = 0
            return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4420) + 32], 
        _4436 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4436)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4436 + 261] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4436) + 32], 
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192] = 0
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + 192 len ceil32(mem[ceil32(stor19.length.field_1) + 128])] = mem[ceil32(stor19.length.field_1) + 160 len ceil32(mem[ceil32(stor19.length.field_1) + 128])]
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 192] = '.json'
    mem[64] = ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 197] = 32
    if ceil32(mem[ceil32(stor19.length.field_1) + 128]) <= mem[ceil32(stor19.length.field_1) + 128]:
        _4421 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4421)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4421 + 261] = 0
        return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4421) + 32], 
    _4437 = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 261 len ceil32(_4437)] = mem[ceil32(stor19.length.field_1) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + _4437 + 261] = 0
    return 32, mem[ceil32(stor19.length.field_1) + ceil32(s) + stor19.length.field_1 + mem[ceil32(stor19.length.field_1) + 128] + 229 len ceil32(_4437) + 32], 
}



}
