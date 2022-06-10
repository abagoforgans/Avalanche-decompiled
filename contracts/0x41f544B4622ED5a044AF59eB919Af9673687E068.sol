contract main {




// =====================  Runtime code  =====================


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
array of struct stor11;
array of struct stor12;
uint256 cost;
uint256 maxSupply;
uint256 maxMintPerWallet;
uint8 stor16; offset 96
uint32 sub_9292caaf;
uint32 preSaleStartTime; offset 32
uint32 sub_6bb7b1d9; offset 64
address stor16; offset 96
mapping of uint256 totalMinted;
mapping of uint8 stor18;

function totalMinted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalMinted[arg1]
}

function preSaleStartTime() {
    return preSaleStartTime
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor18[address(arg1)])
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function paused() {
    return bool(uint8(stor16.field_96))
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6bb7b1d9(?) {
    return sub_6bb7b1d9
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

function sub_9292caaf(?) {
    return sub_9292caaf
}

function maxMintPerWallet() {
    return maxMintPerWallet
}

function maxSupply() {
    return maxSupply
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

function publicSaleIsActive() {
    return sub_6bb7b1d9 <= block.timestamp
}

function sub_1fe70d6f(?) {
    if sub_9292caaf > block.timestamp:
        return sub_9292caaf <= block.timestamp
    return preSaleStartTime >= block.timestamp
}

function preSaleIsActive() {
    if preSaleStartTime > block.timestamp:
        return preSaleStartTime <= block.timestamp
    return sub_6bb7b1d9 >= block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cost = arg1
}

function sub_5fd84c28(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6bb7b1d9 = uint32(arg1)
}

function sub_e1a41022(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9292caaf = uint32(arg1)
}

function sub_287df8a3(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    preSaleStartTime = uint32(arg1)
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor16.field_96) = address(arg1)
}

function setmaxMintPerWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintPerWallet = arg1
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
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

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_9292caaf > block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adding to Whitelist is not active'
    if preSaleStartTime < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adding to Whitelist is not active'
    stor18[address(arg1)] = 1
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

function tokenHoldings(address arg1) {
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
        mem[32] = sha3(address(arg1), 6)
        if idx >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = tokenOfOwnerByIndex[address(arg1)][idx]
        if idx == -1:
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
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
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

function setBaseExtension(string arg1) {
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
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor12[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor12.length = 0
            idx = 0
            while stor12.length.field_1 + 31 / 32 > idx:
                stor12[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
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

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            if not stor5[stor2[arg1]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Burnable: caller is not owner nor approved'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    if stor7[arg1] != balanceOf[stor2[arg1]] - 1:
        tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
        stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
    stor7[arg1] = 0
    tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 'NH{q', 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 'NH{q', 50
    if stor9[arg1] >= tokenByIndex.length:
        revert with 'NH{q', 50
    tokenByIndex[stor9[arg1]] = tokenByIndex[tokenByIndex.length]
    stor9[stor8[stor8.length]] = stor9[arg1]
    stor9[arg1] = 0
    if not tokenByIndex.length:
        revert with 'NH{q', 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
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
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        call arg2.0x150b7a02 with:
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

function baseURI() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function baseExtension() {
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
        if ceil32(stor12.length.field_1) > stor12.length.field_1:
            mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length.field_1), data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor12.length.field_1) + stor12.length.field_1 + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
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
        stor9[arg3] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = arg3
    else:
        if arg1 != arg2:
            if not arg1:
                revert with 0, 'ERC721: balance query for the zero address'
            if balanceOf[address(arg1)] < 1:
                revert with 'NH{q', 17
            if stor7[arg3] != balanceOf[address(arg1)] - 1:
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
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[arg3] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[arg3]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[arg3]
        stor9[arg3] = 0
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
        call arg2.0x150b7a02 with:
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

function mint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_6bb7b1d9 > block.timestamp:
        revert with 0, 'Public sale is not active'
    if uint8(stor16.field_96):
        revert with 0, 'VE: Minting paused'
    if arg2 <= 0:
        revert with 0, 'VE: Invalid amount'
    if arg2 > maxMintPerWallet:
        revert with 0, 'VE: mint exceeds maximum'
    if arg2 + totalMinted[address(msg.sender)] > maxMintPerWallet:
        revert with 0, 'VE: mint exceeds maximum'
    if tokenByIndex.length > -arg2 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg2 > maxSupply:
        revert with 0, 'VE: mint exceeds supply'
    if cost and arg2 > -1 / cost:
        revert with 'NH{q', 17
    if cost * arg2 > msg.value:
        revert with 0, 'VE: Insufficient AVAX'
    mem[0] = msg.sender
    mem[32] = 17
    if totalMinted[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    totalMinted[address(msg.sender)] += arg2
    idx = 1
    while idx <= arg2:
        if tokenByIndex.length > -idx - 1:
            revert with 'NH{q', 17
        _105 = mem[64]
        mem[64] = mem[64] + 32
        mem[_105] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_105 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _199 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_199] == Mask(32, 224, mem[_199])
                if Mask(32, 224, mem[_199]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor8.length + idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_105 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_200] == Mask(32, 224, mem[_200])
                if Mask(32, 224, mem[_200]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_51135af6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_6bb7b1d9 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner cannot mint. Public sale is active!'
    cost = 0
    if uint8(stor16.field_96):
        revert with 0, 'VE: Minting paused'
    if arg2 <= 0:
        revert with 0, 'VE: Invalid amount'
    if tokenByIndex.length > -arg2 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg2 > maxSupply:
        revert with 0, 'VE: mint exceeds supply'
    if cost and arg2 > -1 / cost:
        revert with 'NH{q', 17
    if cost * arg2 > msg.value:
        revert with 0, 'VE: Insufficient AVAX'
    mem[0] = msg.sender
    mem[32] = 17
    if totalMinted[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    totalMinted[address(msg.sender)] += arg2
    idx = 1
    while idx <= arg2:
        if tokenByIndex.length > -idx - 1:
            revert with 'NH{q', 17
        _102 = mem[64]
        mem[64] = mem[64] + 32
        mem[_102] = 0
        if not address(arg1):
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if address(arg1):
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = address(arg1)
            emit Transfer(0, address(arg1), tokenByIndex.length + idx);
            if ext_code.size(address(arg1)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _196 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_196] == Mask(32, 224, mem[_196])
                if Mask(32, 224, mem[_196]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor8.length + idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = address(arg1)
            emit Transfer(0, address(arg1), tokenByIndex.length + idx);
            if ext_code.size(address(arg1)) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_102 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(address(arg1))
                call address(arg1).0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _197 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_197] == Mask(32, 224, mem[_197])
                if Mask(32, 224, mem[_197]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function presaleMint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if preSaleStartTime > block.timestamp:
        revert with 0, 'Presale is not active'
    if sub_6bb7b1d9 < block.timestamp:
        revert with 0, 'Presale is not active'
    if not stor18[address(msg.sender)]:
        revert with 0, 'You are not whitelisted'
    if uint8(stor16.field_96):
        revert with 0, 'VE: Minting paused'
    if arg2 <= 0:
        revert with 0, 'VE: Invalid amount'
    if arg2 > maxMintPerWallet:
        revert with 0, 'VE: mint exceeds maximum'
    if arg2 + totalMinted[address(msg.sender)] > maxMintPerWallet:
        revert with 0, 'VE: mint exceeds maximum'
    if tokenByIndex.length > -arg2 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg2 > maxSupply:
        revert with 0, 'VE: mint exceeds supply'
    if cost and arg2 > -1 / cost:
        revert with 'NH{q', 17
    if cost * arg2 > msg.value:
        revert with 0, 'VE: Insufficient AVAX'
    mem[0] = msg.sender
    mem[32] = 17
    if totalMinted[address(msg.sender)] > -arg2 - 1:
        revert with 'NH{q', 17
    totalMinted[address(msg.sender)] += arg2
    idx = 1
    while idx <= arg2:
        if tokenByIndex.length > -idx - 1:
            revert with 'NH{q', 17
        _114 = mem[64]
        mem[64] = mem[64] + 32
        mem[_114] = 0
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor8.length + idx]:
            revert with 0, 'ERC721: token already minted'
        stor9[stor8.length + idx] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = tokenByIndex.length + idx
        if arg1:
            tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = tokenByIndex.length + idx
            stor7[stor8.length + idx] = balanceOf[address(arg1)]
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_114 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_208] == Mask(32, 224, mem[_208])
                if Mask(32, 224, mem[_208]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 'NH{q', 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 'NH{q', 50
            if stor9[stor8.length + idx] >= tokenByIndex.length:
                revert with 'NH{q', 50
            tokenByIndex[stor9[tokenByIndex.length + idx]] = tokenByIndex[tokenByIndex.length]
            stor9[stor8[stor8.length]] = stor9[stor8.length + idx]
            stor9[stor8.length + idx] = 0
            if not tokenByIndex.length:
                revert with 'NH{q', 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(arg1)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(arg1)]++
            mem[0] = tokenByIndex.length + idx
            mem[32] = 2
            ownerOf[stor8.length + idx] = arg1
            emit Transfer(0, arg1, tokenByIndex.length + idx);
            if ext_code.size(arg1) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = tokenByIndex.length + idx
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_114 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(arg1)
                call arg1.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, 0, tokenByIndex.length + idx, 128, 0
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
                _209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_209] == Mask(32, 224, mem[_209])
                if Mask(32, 224, mem[_209]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    call 0x89fa73cd098797c4cade66f7e236782477bbf033 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor11.length.field_1
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7126 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7126) > _7126:
                                        mem[_7126 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7126) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7230 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7230) > _7230:
                                    mem[_7230 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7230) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7131 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7131) > _7131:
                                        mem[_7131 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7131) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7233 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7233) > _7233:
                                    mem[_7233 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7233) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18710 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18710) > _18710:
                                            mem[_18710 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18710) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18903 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18903) > _18903:
                                        mem[_18903 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18903) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18904 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18904) > _18904:
                                            mem[_18904 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18904) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19096 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19096) > _19096:
                                        mem[_19096 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19096) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18715 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18715) > _18715:
                                            mem[_18715 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18715) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18908 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18908) > _18908:
                                        mem[_18908 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18908) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18909 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18909) > _18909:
                                            mem[_18909 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18909) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19099 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19099) > _19099:
                                        mem[_19099 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19099) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18720 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18720) > _18720:
                                            mem[_18720 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18720) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18913 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18913) > _18913:
                                        mem[_18913 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18913) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18914 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18914) > _18914:
                                            mem[_18914 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18914) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19102 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19102) > _19102:
                                        mem[_19102 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19102) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18725 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18725) > _18725:
                                            mem[_18725 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18725) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18918 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18918) > _18918:
                                        mem[_18918 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18918) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18919 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18919) > _18919:
                                            mem[_18919 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18919) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19105 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19105) > _19105:
                                        mem[_19105 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19105) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7140 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7140) > _7140:
                                            mem[_7140 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7140) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7239 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7239) > _7239:
                                        mem[_7239 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7239) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7145 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7145) > _7145:
                                            mem[_7145 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7145) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7242 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7242) > _7242:
                                        mem[_7242 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7242) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18738 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18738) > _18738:
                                                mem[_18738 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18738) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18931 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18931) > _18931:
                                            mem[_18931 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18931) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18932 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18932) > _18932:
                                                mem[_18932 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18932) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19108 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19108) > _19108:
                                            mem[_19108 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19108) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18743 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18743) > _18743:
                                                mem[_18743 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18743) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18936 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18936) > _18936:
                                            mem[_18936 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18936) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18937 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18937) > _18937:
                                                mem[_18937 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18937) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19111 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19111) > _19111:
                                            mem[_19111 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19111) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18748 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18748) > _18748:
                                                mem[_18748 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18748) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18941 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18941) > _18941:
                                            mem[_18941 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18941) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18942 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18942) > _18942:
                                                mem[_18942 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18942) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19114 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19114) > _19114:
                                            mem[_19114 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19114) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18753 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18753) > _18753:
                                                mem[_18753 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18753) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18946 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18946) > _18946:
                                            mem[_18946 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18946) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18947 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18947) > _18947:
                                                mem[_18947 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18947) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19117 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19117) > _19117:
                                            mem[_19117 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19117) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                else:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var86001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                if bool(stor12.length) == 1:
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[64] = 0
                                _13306 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var87001 = ceil32(_13306)
                                if ceil32(_13306) > _13306:
                                    mem[_13306 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13306) + -mem[64] + 64
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13410 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var88001 = ceil32(_13410)
                            if ceil32(_13410) > _13410:
                                mem[_13410 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13410) + -mem[64] + 64
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13311 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var88001 = ceil32(_13311)
                            if ceil32(_13311) > _13311:
                                mem[_13311 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13311) + -mem[64] + 64
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _13413 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_13413) > _13413:
                                    mem[_13413 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13413) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23478 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23478) > _23478:
                                                mem[_23478 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23478) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23687 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23687) > _23687:
                                            mem[_23687 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23687) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23688 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23688) > _23688:
                                                mem[_23688 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23688) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23880 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23880) > _23880:
                                            mem[_23880 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23880) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23483 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23483) > _23483:
                                                mem[_23483 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23483) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23692 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23692) > _23692:
                                            mem[_23692 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23692) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23693 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23693) > _23693:
                                                mem[_23693 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23693) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23883 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23883) > _23883:
                                            mem[_23883 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23883) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23488 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23488) > _23488:
                                                mem[_23488 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23488) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23697 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23697) > _23697:
                                            mem[_23697 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23697) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23698 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23698) > _23698:
                                                mem[_23698 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23698) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23886 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23886) > _23886:
                                            mem[_23886 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23886) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23493 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23493) > _23493:
                                                mem[_23493 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23493) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23702 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23702) > _23702:
                                            mem[_23702 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23702) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23703 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23703) > _23703:
                                                mem[_23703 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23703) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23889 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23889) > _23889:
                                            mem[_23889 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23889) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if stor11.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 128] = 1
                    mem[ceil32(stor11.length.field_1) + 160] = '0'
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7152 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7152) > _7152:
                                        mem[_7152 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7152) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7247 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7247) > _7247:
                                    mem[_7247 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7247) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7157 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7157) > _7157:
                                        mem[_7157 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7157) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _7250 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_7250) > _7250:
                                    mem[_7250 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7250) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[ceil32(stor11.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18758 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18758) > _18758:
                                            mem[_18758 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18758) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18951 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18951) > _18951:
                                        mem[_18951 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18951) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18952 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18952) > _18952:
                                            mem[_18952 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18952) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19120 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19120) > _19120:
                                        mem[_19120 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19120) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18763 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18763) > _18763:
                                            mem[_18763 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18763) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18956 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18956) > _18956:
                                        mem[_18956 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18956) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18957 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18957) > _18957:
                                            mem[_18957 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18957) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19123 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19123) > _19123:
                                        mem[_19123 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19123) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18768 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18768) > _18768:
                                            mem[_18768 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18768) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18961 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18961) > _18961:
                                        mem[_18961 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18961) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18962 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18962) > _18962:
                                            mem[_18962 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18962) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19126 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19126) > _19126:
                                        mem[_19126 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19126) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18773 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18773) > _18773:
                                            mem[_18773 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18773) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _18966 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_18966) > _18966:
                                        mem[_18966 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18966) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18967 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18967) > _18967:
                                            mem[_18967 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18967) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _19129 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(_19129) > _19129:
                                        mem[_19129 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19129) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                if 31 >= stor11.length.field_1:
                    mem[128] = 256 * stor11.length.field_8
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7166 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7166) > _7166:
                                            mem[_7166 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7166) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7256 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7256) > _7256:
                                        mem[_7256 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7256) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _7171 = mem[ceil32(stor11.length.field_1) + 192]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                        if ceil32(_7171) > _7171:
                                            mem[_7171 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_7171) + -mem[64] + 64
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            else:
                                if bool(stor12.length) != 1:
                                    mem[64] = 0
                                    _7259 = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(_7259) > _7259:
                                        mem[_7259 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7259) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18786 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18786) > _18786:
                                                mem[_18786 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18786) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18979 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18979) > _18979:
                                            mem[_18979 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18979) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18980 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18980) > _18980:
                                                mem[_18980 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18980) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19132 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19132) > _19132:
                                            mem[_19132 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19132) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18791 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18791) > _18791:
                                                mem[_18791 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18791) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18984 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18984) > _18984:
                                            mem[_18984 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18984) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18985 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18985) > _18985:
                                                mem[_18985 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18985) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19135 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19135) > _19135:
                                            mem[_19135 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19135) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18796 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18796) > _18796:
                                                mem[_18796 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18796) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18989 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18989) > _18989:
                                            mem[_18989 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18989) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18990 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18990) > _18990:
                                                mem[_18990 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18990) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19138 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19138) > _19138:
                                            mem[_19138 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19138) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18801 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18801) > _18801:
                                                mem[_18801 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18801) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _18994 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_18994) > _18994:
                                            mem[_18994 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18994) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _18995 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_18995) > _18995:
                                                mem[_18995 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_18995) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _19141 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_19141) > _19141:
                                            mem[_19141 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19141) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                else:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor11.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor11.length.field_1) + 128] = 1
                        mem[ceil32(stor11.length.field_1) + 160] = '0'
                        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            if bool(stor12.length):
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                if bool(stor12.length) == 1:
                                    idx = 0
                                    s = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                                mem[64] = 0
                                _13334 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var88001 = ceil32(_13334)
                                if ceil32(_13334) > _13334:
                                    mem[_13334 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13334) + -mem[64] + 64
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13418 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(_13418)
                            if ceil32(_13418) > _13418:
                                mem[_13418 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13418) + -mem[64] + 64
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            if bool(stor12.length) == 1:
                                idx = 0
                                s = 0
                                while idx < stor12.length.field_1:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[64] = 0
                            _13339 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(_13339)
                            if ceil32(_13339) > _13339:
                                mem[_13339 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13339) + -mem[64] + 64
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        else:
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _13421 = mem[ceil32(stor11.length.field_1) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                                if ceil32(_13421) > _13421:
                                    mem[_13421 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_13421) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + 128] = s
                    if not s:
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23530 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23530) > _23530:
                                                mem[_23530 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23530) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23739 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23739) > _23739:
                                            mem[_23739 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23739) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23740 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23740) > _23740:
                                                mem[_23740 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23740) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23892 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23892) > _23892:
                                            mem[_23892 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23892) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23535 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23535) > _23535:
                                                mem[_23535 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23535) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23744 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23744) > _23744:
                                            mem[_23744 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23744) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23745 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23745) > _23745:
                                                mem[_23745 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23745) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23895 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23895) > _23895:
                                            mem[_23895 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23895) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                    else:
                        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
                        t = s
                        idx = arg1
                        while idx:
                            if t < 1:
                                revert with 'NH{q', 17
                            if 48 > -(idx % 10) - 1:
                                revert with 'NH{q', 17
                            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                                revert with 'NH{q', 50
                            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23540 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23540) > _23540:
                                                mem[_23540 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23540) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23749 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23749) > _23749:
                                            mem[_23749 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23749) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23750 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23750) > _23750:
                                                mem[_23750 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23750) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23898 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23898) > _23898:
                                            mem[_23898 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23898) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                        else:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23545 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23545) > _23545:
                                                mem[_23545 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23545) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23754 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23754) > _23754:
                                            mem[_23754 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23754) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                            else:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                                if bool(stor12.length):
                                    if bool(stor12.length) == stor12.length.field_1 < 32:
                                        revert with 'NH{q', 34
                                    if not bool(stor12.length):
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                    else:
                                        if bool(stor12.length) != 1:
                                            mem[64] = 0
                                            _23755 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                            if ceil32(_23755) > _23755:
                                                mem[_23755 + 64] = 0
                                            return memory
                                              from mem[64]
                                               len ceil32(_23755) + -mem[64] + 64
                                        idx = 0
                                        t = 0
                                        while idx < stor12.length.field_1:
                                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                            idx = idx + 32
                                            t = t + 1
                                            continue 
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                    if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
                                    return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
                                if bool(stor12.length) == stor12.length.field_1 < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor12.length):
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                else:
                                    if bool(stor12.length) != 1:
                                        mem[64] = 0
                                        _23901 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                        if ceil32(_23901) > _23901:
                                            mem[_23901 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23901) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < stor12.length.field_1:
                                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor11.length.field_1
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1:
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[64] = ceil32(stor11.length.field_1) + 192
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7178 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7178) > _7178:
                                mem[_7178 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7178) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _12440 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        _12864 = mem[_12440]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12440]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12864)] = mem[_12440 + 32 len ceil32(_12864)]
                        if ceil32(_12864) > _12864:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12864 + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12864) + 32]
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7264 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7264) > _7264:
                            mem[_7264 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7264) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12441 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    _12865 = mem[_12441]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12441]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12865)] = mem[_12441 + 32 len ceil32(_12865)]
                    if ceil32(_12865) > _12865:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12865 + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12865) + 32]
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7183 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7183) > _7183:
                            mem[_7183 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7183) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12444 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    _12868 = mem[_12444]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12444]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12868)] = mem[_12444 + 32 len ceil32(_12868)]
                    if ceil32(_12868) > _12868:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12868 + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12868) + 32]
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7267 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7267) > _7267:
                        mem[_7267 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7267) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12445 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                _12869 = mem[_12445]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12445]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12869)] = mem[_12445 + 32 len ceil32(_12869)]
                if ceil32(_12869) > _12869:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12869 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12869) + 32]
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    _12514 = mem[ceil32(stor11.length.field_1) + 128]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                _18662 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18662)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18662)]
                                if ceil32(_18662) > _18662:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18662 + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18662) + 32], 
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18806 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18806) > _18806:
                                    mem[_18806 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18806) + -mem[64] + 64
                            mem[0] = 12
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            _22086 = mem[64]
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192] = 32
                            _22918 = mem[_22086]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224] = mem[_22086]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 256 len ceil32(_22918)] = mem[_22086 + 32 len ceil32(_22918)]
                            if ceil32(_22918) > _22918:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + _22918 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224 len ceil32(_22918) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18807 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18807)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18807)]
                            if ceil32(_18807) > _18807:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18807 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18807) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18999 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18999) > _18999:
                                mem[_18999 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18999) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22087 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192] = 32
                        _22919 = mem[_22087]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224] = mem[_22087]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 256 len ceil32(_22919)] = mem[_22087 + 32 len ceil32(_22919)]
                        if ceil32(_22919) > _22919:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + _22919 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224 len ceil32(_22919) + 32], 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18809 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18809)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18809)]
                            if ceil32(_18809) > _18809:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18809 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18809) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19000 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19000) > _19000:
                                mem[_19000 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19000) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22088 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192] = 32
                        _22920 = mem[_22088]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224] = mem[_22088]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 256 len ceil32(_22920)] = mem[_22088 + 32 len ceil32(_22920)]
                        if ceil32(_22920) > _22920:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + _22920 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224 len ceil32(_22920) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _19001 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19001)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19001)]
                        if ceil32(_19001) > _19001:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19001 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19001) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19144 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19144) > _19144:
                            mem[_19144 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19144) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22089 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 192] = 32
                    _22921 = mem[_22089]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224] = mem[_22089]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 256 len ceil32(_22921)] = mem[_22089 + 32 len ceil32(_22921)]
                    if ceil32(_22921) > _22921:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + _22921 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12514 + stor12.length.field_1 + 224 len ceil32(_22921) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                _12630 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18665 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18665)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18665)]
                            if ceil32(_18665) > _18665:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18665 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18665) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18811 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18811) > _18811:
                                mem[_18811 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18811) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22090 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192] = 32
                        _22922 = mem[_22090]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224] = mem[_22090]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 256 len ceil32(_22922)] = mem[_22090 + 32 len ceil32(_22922)]
                        if ceil32(_22922) > _22922:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + _22922 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224 len ceil32(_22922) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18812 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18812)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18812)]
                        if ceil32(_18812) > _18812:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18812 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18812) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19004 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19004) > _19004:
                            mem[_19004 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19004) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22091 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192] = 32
                    _22923 = mem[_22091]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224] = mem[_22091]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 256 len ceil32(_22923)] = mem[_22091 + 32 len ceil32(_22923)]
                    if ceil32(_22923) > _22923:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + _22923 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224 len ceil32(_22923) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18814 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18814)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18814)]
                        if ceil32(_18814) > _18814:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18814 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18814) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19005 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19005) > _19005:
                            mem[_19005 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19005) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22092 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192] = 32
                    _22924 = mem[_22092]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224] = mem[_22092]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 256 len ceil32(_22924)] = mem[_22092 + 32 len ceil32(_22924)]
                    if ceil32(_22924) > _22924:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + _22924 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224 len ceil32(_22924) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _19006 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19006)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19006)]
                    if ceil32(_19006) > _19006:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19006 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19006) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19147 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19147) > _19147:
                        mem[_19147 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19147) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22093 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 192] = 32
                _22925 = mem[_22093]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224] = mem[_22093]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 256 len ceil32(_22925)] = mem[_22093 + 32 len ceil32(_22925)]
                if ceil32(_22925) > _22925:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + _22925 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12630 + stor12.length.field_1 + 224 len ceil32(_22925) + 32], 
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                _12515 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18668 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18668)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18668)]
                            if ceil32(_18668) > _18668:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18668 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18668) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18816 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18816) > _18816:
                                mem[_18816 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18816) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22094 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192] = 32
                        _22926 = mem[_22094]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224] = mem[_22094]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 256 len ceil32(_22926)] = mem[_22094 + 32 len ceil32(_22926)]
                        if ceil32(_22926) > _22926:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + _22926 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224 len ceil32(_22926) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18817 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18817)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18817)]
                        if ceil32(_18817) > _18817:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18817 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18817) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19009 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19009) > _19009:
                            mem[_19009 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19009) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22095 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192] = 32
                    _22927 = mem[_22095]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224] = mem[_22095]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 256 len ceil32(_22927)] = mem[_22095 + 32 len ceil32(_22927)]
                    if ceil32(_22927) > _22927:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + _22927 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224 len ceil32(_22927) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18819 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18819)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18819)]
                        if ceil32(_18819) > _18819:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18819 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18819) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19010 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19010) > _19010:
                            mem[_19010 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19010) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22096 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192] = 32
                    _22928 = mem[_22096]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224] = mem[_22096]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 256 len ceil32(_22928)] = mem[_22096 + 32 len ceil32(_22928)]
                    if ceil32(_22928) > _22928:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + _22928 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224 len ceil32(_22928) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _19011 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19011)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19011)]
                    if ceil32(_19011) > _19011:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19011 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19011) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19150 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19150) > _19150:
                        mem[_19150 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19150) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22097 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 192] = 32
                _22929 = mem[_22097]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224] = mem[_22097]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 256 len ceil32(_22929)] = mem[_22097 + 32 len ceil32(_22929)]
                if ceil32(_22929) > _22929:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + _22929 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12515 + stor12.length.field_1 + 224 len ceil32(_22929) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            _12631 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18671 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18671)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18671)]
                        if ceil32(_18671) > _18671:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18671 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18671) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18821 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18821) > _18821:
                            mem[_18821 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18821) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22098 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192] = 32
                    _22930 = mem[_22098]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224] = mem[_22098]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 256 len ceil32(_22930)] = mem[_22098 + 32 len ceil32(_22930)]
                    if ceil32(_22930) > _22930:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + _22930 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224 len ceil32(_22930) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18822 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18822)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18822)]
                    if ceil32(_18822) > _18822:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18822 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18822) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19014 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19014) > _19014:
                        mem[_19014 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19014) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22099 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192] = 32
                _22931 = mem[_22099]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224] = mem[_22099]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 256 len ceil32(_22931)] = mem[_22099 + 32 len ceil32(_22931)]
                if ceil32(_22931) > _22931:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + _22931 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224 len ceil32(_22931) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18824 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18824)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18824)]
                    if ceil32(_18824) > _18824:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18824 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18824) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19015 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19015) > _19015:
                        mem[_19015 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19015) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22100 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192] = 32
                _22932 = mem[_22100]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224] = mem[_22100]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 256 len ceil32(_22932)] = mem[_22100 + 32 len ceil32(_22932)]
                if ceil32(_22932) > _22932:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + _22932 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224 len ceil32(_22932) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _19016 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19016)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19016)]
                if ceil32(_19016) > _19016:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19016 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19016) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19153 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19153) > _19153:
                    mem[_19153 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19153) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22101 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 192] = 32
            _22933 = mem[_22101]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224] = mem[_22101]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 256 len ceil32(_22933)] = mem[_22101 + 32 len ceil32(_22933)]
            if ceil32(_22933) > _22933:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + _22933 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12631 + stor12.length.field_1 + 224 len ceil32(_22933) + 32], 
        if 31 >= stor11.length.field_1:
            mem[128] = 256 * stor11.length.field_8
            if stor11.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[64] = ceil32(stor11.length.field_1) + 192
                mem[ceil32(stor11.length.field_1) + 128] = 1
                mem[ceil32(stor11.length.field_1) + 160] = '0'
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _7192 = mem[ceil32(stor11.length.field_1) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                            if ceil32(_7192) > _7192:
                                mem[_7192 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7192) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _12448 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        _12872 = mem[_12448]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12448]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12872)] = mem[_12448 + 32 len ceil32(_12872)]
                        if ceil32(_12872) > _12872:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12872 + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12872) + 32]
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7273 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7273) > _7273:
                            mem[_7273 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7273) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12449 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    _12873 = mem[_12449]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12449]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12873)] = mem[_12449 + 32 len ceil32(_12873)]
                    if ceil32(_12873) > _12873:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12873 + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12873) + 32]
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7197 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7197) > _7197:
                            mem[_7197 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7197) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12452 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    _12876 = mem[_12452]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12452]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12876)] = mem[_12452 + 32 len ceil32(_12876)]
                    if ceil32(_12876) > _12876:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12876 + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12876) + 32]
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7276 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7276) > _7276:
                        mem[_7276 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7276) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12453 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                _12877 = mem[_12453]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12453]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12877)] = mem[_12453 + 32 len ceil32(_12877)]
                if ceil32(_12877) > _12877:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12877 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12877) + 32]
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
            mem[ceil32(stor11.length.field_1) + 128] = s
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                    _12526 = mem[ceil32(stor11.length.field_1) + 128]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        if bool(stor12.length):
                            if bool(stor12.length) == stor12.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor12.length):
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                                _18674 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18674)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18674)]
                                if ceil32(_18674) > _18674:
                                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18674 + 256] = 0
                                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18674) + 32], 
                            if bool(stor12.length) != 1:
                                mem[64] = 0
                                _18834 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                                if ceil32(_18834) > _18834:
                                    mem[_18834 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18834) + -mem[64] + 64
                            mem[0] = 12
                            idx = 0
                            t = 0
                            while idx < stor12.length.field_1:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            _22102 = mem[64]
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192] = 32
                            _22934 = mem[_22102]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224] = mem[_22102]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 256 len ceil32(_22934)] = mem[_22102 + 32 len ceil32(_22934)]
                            if ceil32(_22934) > _22934:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + _22934 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224 len ceil32(_22934) + 32], 
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18835 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18835)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18835)]
                            if ceil32(_18835) > _18835:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18835 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18835) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19027 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19027) > _19027:
                                mem[_19027 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19027) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22103 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192] = 32
                        _22935 = mem[_22103]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224] = mem[_22103]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 256 len ceil32(_22935)] = mem[_22103 + 32 len ceil32(_22935)]
                        if ceil32(_22935) > _22935:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + _22935 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224 len ceil32(_22935) + 32], 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18837 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18837)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18837)]
                            if ceil32(_18837) > _18837:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18837 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18837) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _19028 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_19028) > _19028:
                                mem[_19028 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19028) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22104 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192] = 32
                        _22936 = mem[_22104]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224] = mem[_22104]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 256 len ceil32(_22936)] = mem[_22104 + 32 len ceil32(_22936)]
                        if ceil32(_22936) > _22936:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + _22936 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224 len ceil32(_22936) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _19029 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19029)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19029)]
                        if ceil32(_19029) > _19029:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19029 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19029) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19156 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19156) > _19156:
                            mem[_19156 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19156) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22105 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 192] = 32
                    _22937 = mem[_22105]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224] = mem[_22105]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 256 len ceil32(_22937)] = mem[_22105 + 32 len ceil32(_22937)]
                    if ceil32(_22937) > _22937:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + _22937 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12526 + stor12.length.field_1 + 224 len ceil32(_22937) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                _12648 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18677 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18677)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18677)]
                            if ceil32(_18677) > _18677:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18677 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18677) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18839 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18839) > _18839:
                                mem[_18839 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18839) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22106 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192] = 32
                        _22938 = mem[_22106]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224] = mem[_22106]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 256 len ceil32(_22938)] = mem[_22106 + 32 len ceil32(_22938)]
                        if ceil32(_22938) > _22938:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + _22938 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224 len ceil32(_22938) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18840 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18840)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18840)]
                        if ceil32(_18840) > _18840:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18840 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18840) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19032 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19032) > _19032:
                            mem[_19032 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19032) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22107 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192] = 32
                    _22939 = mem[_22107]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224] = mem[_22107]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 256 len ceil32(_22939)] = mem[_22107 + 32 len ceil32(_22939)]
                    if ceil32(_22939) > _22939:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + _22939 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224 len ceil32(_22939) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18842 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18842)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18842)]
                        if ceil32(_18842) > _18842:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18842 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18842) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19033 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19033) > _19033:
                            mem[_19033 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19033) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22108 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192] = 32
                    _22940 = mem[_22108]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224] = mem[_22108]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 256 len ceil32(_22940)] = mem[_22108 + 32 len ceil32(_22940)]
                    if ceil32(_22940) > _22940:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + _22940 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224 len ceil32(_22940) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _19034 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19034)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19034)]
                    if ceil32(_19034) > _19034:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19034 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19034) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19159 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19159) > _19159:
                        mem[_19159 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19159) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22109 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 192] = 32
                _22941 = mem[_22109]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224] = mem[_22109]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 256 len ceil32(_22941)] = mem[_22109 + 32 len ceil32(_22941)]
                if ceil32(_22941) > _22941:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + _22941 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12648 + stor12.length.field_1 + 224 len ceil32(_22941) + 32], 
            mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                _12527 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18680 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18680)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18680)]
                            if ceil32(_18680) > _18680:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18680 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18680) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18844 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18844) > _18844:
                                mem[_18844 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18844) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22110 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192] = 32
                        _22942 = mem[_22110]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224] = mem[_22110]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 256 len ceil32(_22942)] = mem[_22110 + 32 len ceil32(_22942)]
                        if ceil32(_22942) > _22942:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + _22942 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224 len ceil32(_22942) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18845 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18845)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18845)]
                        if ceil32(_18845) > _18845:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18845 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18845) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19037 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19037) > _19037:
                            mem[_19037 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19037) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22111 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192] = 32
                    _22943 = mem[_22111]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224] = mem[_22111]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 256 len ceil32(_22943)] = mem[_22111 + 32 len ceil32(_22943)]
                    if ceil32(_22943) > _22943:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + _22943 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224 len ceil32(_22943) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18847 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18847)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18847)]
                        if ceil32(_18847) > _18847:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18847 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18847) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19038 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19038) > _19038:
                            mem[_19038 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19038) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22112 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192] = 32
                    _22944 = mem[_22112]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224] = mem[_22112]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 256 len ceil32(_22944)] = mem[_22112 + 32 len ceil32(_22944)]
                    if ceil32(_22944) > _22944:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + _22944 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224 len ceil32(_22944) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _19039 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19039)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19039)]
                    if ceil32(_19039) > _19039:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19039 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19039) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19162 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19162) > _19162:
                        mem[_19162 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19162) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22113 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 192] = 32
                _22945 = mem[_22113]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224] = mem[_22113]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 256 len ceil32(_22945)] = mem[_22113 + 32 len ceil32(_22945)]
                if ceil32(_22945) > _22945:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + _22945 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12527 + stor12.length.field_1 + 224 len ceil32(_22945) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            _12649 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18683 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18683)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18683)]
                        if ceil32(_18683) > _18683:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18683 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18683) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18849 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18849) > _18849:
                            mem[_18849 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18849) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22114 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192] = 32
                    _22946 = mem[_22114]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224] = mem[_22114]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 256 len ceil32(_22946)] = mem[_22114 + 32 len ceil32(_22946)]
                    if ceil32(_22946) > _22946:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + _22946 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224 len ceil32(_22946) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18850 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18850)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18850)]
                    if ceil32(_18850) > _18850:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18850 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18850) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19042 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19042) > _19042:
                        mem[_19042 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19042) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22115 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192] = 32
                _22947 = mem[_22115]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224] = mem[_22115]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 256 len ceil32(_22947)] = mem[_22115 + 32 len ceil32(_22947)]
                if ceil32(_22947) > _22947:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + _22947 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224 len ceil32(_22947) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18852 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18852)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18852)]
                    if ceil32(_18852) > _18852:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18852 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18852) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19043 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19043) > _19043:
                        mem[_19043 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19043) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22116 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192] = 32
                _22948 = mem[_22116]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224] = mem[_22116]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 256 len ceil32(_22948)] = mem[_22116 + 32 len ceil32(_22948)]
                if ceil32(_22948) > _22948:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + _22948 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224 len ceil32(_22948) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _19044 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19044)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19044)]
                if ceil32(_19044) > _19044:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19044 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19044) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19165 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19165) > _19165:
                    mem[_19165 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19165) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22117 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 192] = 32
            _22949 = mem[_22117]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224] = mem[_22117]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 256 len ceil32(_22949)] = mem[_22117 + 32 len ceil32(_22949)]
            if ceil32(_22949) > _22949:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + _22949 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12649 + stor12.length.field_1 + 224 len ceil32(_22949) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while stor11.length.field_1 + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 128] = 1
            mem[ceil32(stor11.length.field_1) + 160] = '0'
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        var87001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    mem[64] = 0
                    _13362 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var88001 = ceil32(_13362)
                    if ceil32(_13362) > _13362:
                        mem[_13362 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13362) + -mem[64] + 64
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                mem[64] = 0
                _13426 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var89001 = ceil32(_13426)
                if ceil32(_13426) > _13426:
                    mem[_13426 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13426) + -mem[64] + 64
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                mem[64] = 0
                _13367 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var89001 = ceil32(_13367)
                if ceil32(_13367) > _13367:
                    mem[_13367 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13367) + -mem[64] + 64
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
            else:
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _13429 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_13429) > _13429:
                        mem[_13429 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13429) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                _17642 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _23438 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23438)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23438)]
                            if ceil32(_23438) > _23438:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23438 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23438) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _23582 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_23582) > _23582:
                                mem[_23582 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23582) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _24870 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192] = 32
                        _25510 = mem[_24870]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224] = mem[_24870]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 256 len ceil32(_25510)] = mem[_24870 + 32 len ceil32(_25510)]
                        if ceil32(_25510) > _25510:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + _25510 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224 len ceil32(_25510) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _23583 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23583)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23583)]
                        if ceil32(_23583) > _23583:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23583 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23583) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _23791 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_23791) > _23791:
                            mem[_23791 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23791) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24871 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192] = 32
                    _25511 = mem[_24871]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224] = mem[_24871]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 256 len ceil32(_25511)] = mem[_24871 + 32 len ceil32(_25511)]
                    if ceil32(_25511) > _25511:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + _25511 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224 len ceil32(_25511) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _23585 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23585)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23585)]
                        if ceil32(_23585) > _23585:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23585 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23585) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _23792 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_23792) > _23792:
                            mem[_23792 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23792) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24872 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192] = 32
                    _25512 = mem[_24872]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224] = mem[_24872]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 256 len ceil32(_25512)] = mem[_24872 + 32 len ceil32(_25512)]
                    if ceil32(_25512) > _25512:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + _25512 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224 len ceil32(_25512) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23793 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23793)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23793)]
                    if ceil32(_23793) > _23793:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23793 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23793) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23904 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23904) > _23904:
                        mem[_23904 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23904) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24873 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 192] = 32
                _25513 = mem[_24873]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224] = mem[_24873]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 256 len ceil32(_25513)] = mem[_24873 + 32 len ceil32(_25513)]
                if ceil32(_25513) > _25513:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + _25513 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17642 + stor12.length.field_1 + 224 len ceil32(_25513) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            _17738 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _23441 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23441)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23441)]
                        if ceil32(_23441) > _23441:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23441 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23441) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _23587 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_23587) > _23587:
                            mem[_23587 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23587) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24874 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192] = 32
                    _25514 = mem[_24874]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224] = mem[_24874]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 256 len ceil32(_25514)] = mem[_24874 + 32 len ceil32(_25514)]
                    if ceil32(_25514) > _25514:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + _25514 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224 len ceil32(_25514) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23588 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23588)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23588)]
                    if ceil32(_23588) > _23588:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23588 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23588) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23796 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23796) > _23796:
                        mem[_23796 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23796) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24875 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192] = 32
                _25515 = mem[_24875]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224] = mem[_24875]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 256 len ceil32(_25515)] = mem[_24875 + 32 len ceil32(_25515)]
                if ceil32(_25515) > _25515:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + _25515 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224 len ceil32(_25515) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23590 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23590)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23590)]
                    if ceil32(_23590) > _23590:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23590 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23590) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23797 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23797) > _23797:
                        mem[_23797 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23797) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24876 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192] = 32
                _25516 = mem[_24876]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224] = mem[_24876]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 256 len ceil32(_25516)] = mem[_24876 + 32 len ceil32(_25516)]
                if ceil32(_25516) > _25516:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + _25516 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224 len ceil32(_25516) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23798 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23798)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23798)]
                if ceil32(_23798) > _23798:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23798 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23798) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23907 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23907) > _23907:
                    mem[_23907 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23907) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24877 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 192] = 32
            _25517 = mem[_24877]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224] = mem[_24877]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 256 len ceil32(_25517)] = mem[_24877 + 32 len ceil32(_25517)]
            if ceil32(_25517) > _25517:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + _25517 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17738 + stor12.length.field_1 + 224 len ceil32(_25517) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _17643 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _23444 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23444)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23444)]
                        if ceil32(_23444) > _23444:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23444 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23444) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _23592 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_23592) > _23592:
                            mem[_23592 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23592) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24878 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192] = 32
                    _25518 = mem[_24878]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224] = mem[_24878]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 256 len ceil32(_25518)] = mem[_24878 + 32 len ceil32(_25518)]
                    if ceil32(_25518) > _25518:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + _25518 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224 len ceil32(_25518) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23593 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23593)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23593)]
                    if ceil32(_23593) > _23593:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23593 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23593) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23801 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23801) > _23801:
                        mem[_23801 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23801) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24879 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192] = 32
                _25519 = mem[_24879]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224] = mem[_24879]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 256 len ceil32(_25519)] = mem[_24879 + 32 len ceil32(_25519)]
                if ceil32(_25519) > _25519:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + _25519 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224 len ceil32(_25519) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23595 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23595)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23595)]
                    if ceil32(_23595) > _23595:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23595 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23595) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23802 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23802) > _23802:
                        mem[_23802 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23802) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24880 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192] = 32
                _25520 = mem[_24880]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224] = mem[_24880]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 256 len ceil32(_25520)] = mem[_24880 + 32 len ceil32(_25520)]
                if ceil32(_25520) > _25520:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + _25520 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224 len ceil32(_25520) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23803 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23803)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23803)]
                if ceil32(_23803) > _23803:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23803 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23803) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23910 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23910) > _23910:
                    mem[_23910 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23910) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24881 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 192] = 32
            _25521 = mem[_24881]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224] = mem[_24881]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 256 len ceil32(_25521)] = mem[_24881 + 32 len ceil32(_25521)]
            if ceil32(_25521) > _25521:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + _25521 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17643 + stor12.length.field_1 + 224 len ceil32(_25521) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _17739 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23447 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23447)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23447)]
                    if ceil32(_23447) > _23447:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23447 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23447) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23597 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23597) > _23597:
                        mem[_23597 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23597) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24882 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192] = 32
                _25522 = mem[_24882]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224] = mem[_24882]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 256 len ceil32(_25522)] = mem[_24882 + 32 len ceil32(_25522)]
                if ceil32(_25522) > _25522:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + _25522 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224 len ceil32(_25522) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23598 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23598)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23598)]
                if ceil32(_23598) > _23598:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23598 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23598) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23806 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23806) > _23806:
                    mem[_23806 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23806) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24883 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192] = 32
            _25523 = mem[_24883]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224] = mem[_24883]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 256 len ceil32(_25523)] = mem[_24883 + 32 len ceil32(_25523)]
            if ceil32(_25523) > _25523:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + _25523 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224 len ceil32(_25523) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23600 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23600)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23600)]
                if ceil32(_23600) > _23600:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23600 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23600) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23807 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23807) > _23807:
                    mem[_23807 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23807) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24884 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192] = 32
            _25524 = mem[_24884]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224] = mem[_24884]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 256 len ceil32(_25524)] = mem[_24884 + 32 len ceil32(_25524)]
            if ceil32(_25524) > _25524:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + _25524 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224 len ceil32(_25524) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _23808 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23808)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23808)]
            if ceil32(_23808) > _23808:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23808 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23808) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23913 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23913) > _23913:
                mem[_23913 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23913) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24885 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 192] = 32
        _25525 = mem[_24885]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224] = mem[_24885]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 256 len ceil32(_25525)] = mem[_24885 + 32 len ceil32(_25525)]
        if ceil32(_25525) > _25525:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + _25525 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17739 + stor12.length.field_1 + 224 len ceil32(_25525) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1:
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[64] = ceil32(stor11.length.field_1) + 192
            mem[ceil32(stor11.length.field_1) + 128] = 1
            mem[ceil32(stor11.length.field_1) + 160] = '0'
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7204 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7204) > _7204:
                            mem[_7204 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7204) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12456 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    _12880 = mem[_12456]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12456]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12880)] = mem[_12456 + 32 len ceil32(_12880)]
                    if ceil32(_12880) > _12880:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12880 + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12880) + 32]
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7281 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7281) > _7281:
                        mem[_7281 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7281) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12457 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                _12881 = mem[_12457]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12457]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12881)] = mem[_12457 + 32 len ceil32(_12881)]
                if ceil32(_12881) > _12881:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12881 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12881) + 32]
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7209 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7209) > _7209:
                        mem[_7209 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7209) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12460 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                _12884 = mem[_12460]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12460]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12884)] = mem[_12460 + 32 len ceil32(_12884)]
                if ceil32(_12884) > _12884:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12884 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12884) + 32]
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _7284 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(_7284) > _7284:
                    mem[_7284 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_7284) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _12461 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            _12885 = mem[_12461]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12461]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12885)] = mem[_12461 + 32 len ceil32(_12885)]
            if ceil32(_12885) > _12885:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12885 + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12885) + 32]
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                _12536 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18686 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18686)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18686)]
                            if ceil32(_18686) > _18686:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18686 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18686) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18854 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18854) > _18854:
                                mem[_18854 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18854) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22118 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192] = 32
                        _22950 = mem[_22118]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224] = mem[_22118]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 256 len ceil32(_22950)] = mem[_22118 + 32 len ceil32(_22950)]
                        if ceil32(_22950) > _22950:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + _22950 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224 len ceil32(_22950) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18855 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18855)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18855)]
                        if ceil32(_18855) > _18855:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18855 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18855) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19047 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19047) > _19047:
                            mem[_19047 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19047) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22119 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192] = 32
                    _22951 = mem[_22119]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224] = mem[_22119]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 256 len ceil32(_22951)] = mem[_22119 + 32 len ceil32(_22951)]
                    if ceil32(_22951) > _22951:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + _22951 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224 len ceil32(_22951) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18857 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18857)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18857)]
                        if ceil32(_18857) > _18857:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18857 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18857) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19048 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19048) > _19048:
                            mem[_19048 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19048) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22120 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192] = 32
                    _22952 = mem[_22120]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224] = mem[_22120]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 256 len ceil32(_22952)] = mem[_22120 + 32 len ceil32(_22952)]
                    if ceil32(_22952) > _22952:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + _22952 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224 len ceil32(_22952) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _19049 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19049)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19049)]
                    if ceil32(_19049) > _19049:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19049 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19049) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19168 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19168) > _19168:
                        mem[_19168 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19168) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22121 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 192] = 32
                _22953 = mem[_22121]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224] = mem[_22121]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 256 len ceil32(_22953)] = mem[_22121 + 32 len ceil32(_22953)]
                if ceil32(_22953) > _22953:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + _22953 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12536 + stor12.length.field_1 + 224 len ceil32(_22953) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            _12666 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18689 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18689)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18689)]
                        if ceil32(_18689) > _18689:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18689 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18689) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18859 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18859) > _18859:
                            mem[_18859 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18859) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22122 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192] = 32
                    _22954 = mem[_22122]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224] = mem[_22122]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 256 len ceil32(_22954)] = mem[_22122 + 32 len ceil32(_22954)]
                    if ceil32(_22954) > _22954:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + _22954 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224 len ceil32(_22954) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18860 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18860)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18860)]
                    if ceil32(_18860) > _18860:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18860 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18860) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19052 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19052) > _19052:
                        mem[_19052 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19052) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22123 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192] = 32
                _22955 = mem[_22123]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224] = mem[_22123]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 256 len ceil32(_22955)] = mem[_22123 + 32 len ceil32(_22955)]
                if ceil32(_22955) > _22955:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + _22955 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224 len ceil32(_22955) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18862 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18862)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18862)]
                    if ceil32(_18862) > _18862:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18862 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18862) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19053 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19053) > _19053:
                        mem[_19053 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19053) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22124 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192] = 32
                _22956 = mem[_22124]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224] = mem[_22124]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 256 len ceil32(_22956)] = mem[_22124 + 32 len ceil32(_22956)]
                if ceil32(_22956) > _22956:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + _22956 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224 len ceil32(_22956) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _19054 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19054)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19054)]
                if ceil32(_19054) > _19054:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19054 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19054) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19171 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19171) > _19171:
                    mem[_19171 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19171) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22125 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 192] = 32
            _22957 = mem[_22125]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224] = mem[_22125]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 256 len ceil32(_22957)] = mem[_22125 + 32 len ceil32(_22957)]
            if ceil32(_22957) > _22957:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + _22957 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12666 + stor12.length.field_1 + 224 len ceil32(_22957) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _12537 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18692 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18692)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18692)]
                        if ceil32(_18692) > _18692:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18692 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18692) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18864 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18864) > _18864:
                            mem[_18864 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18864) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22126 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192] = 32
                    _22958 = mem[_22126]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224] = mem[_22126]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 256 len ceil32(_22958)] = mem[_22126 + 32 len ceil32(_22958)]
                    if ceil32(_22958) > _22958:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + _22958 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224 len ceil32(_22958) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18865 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18865)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18865)]
                    if ceil32(_18865) > _18865:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18865 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18865) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19057 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19057) > _19057:
                        mem[_19057 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19057) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22127 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192] = 32
                _22959 = mem[_22127]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224] = mem[_22127]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 256 len ceil32(_22959)] = mem[_22127 + 32 len ceil32(_22959)]
                if ceil32(_22959) > _22959:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + _22959 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224 len ceil32(_22959) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18867 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18867)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18867)]
                    if ceil32(_18867) > _18867:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18867 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18867) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19058 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19058) > _19058:
                        mem[_19058 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19058) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22128 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192] = 32
                _22960 = mem[_22128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224] = mem[_22128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 256 len ceil32(_22960)] = mem[_22128 + 32 len ceil32(_22960)]
                if ceil32(_22960) > _22960:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + _22960 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224 len ceil32(_22960) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _19059 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19059)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19059)]
                if ceil32(_19059) > _19059:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19059 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19059) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19174 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19174) > _19174:
                    mem[_19174 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19174) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22129 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 192] = 32
            _22961 = mem[_22129]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224] = mem[_22129]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 256 len ceil32(_22961)] = mem[_22129 + 32 len ceil32(_22961)]
            if ceil32(_22961) > _22961:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + _22961 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12537 + stor12.length.field_1 + 224 len ceil32(_22961) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _12667 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18695 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18695)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18695)]
                    if ceil32(_18695) > _18695:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18695 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18695) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _18869 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18869) > _18869:
                        mem[_18869 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18869) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22130 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192] = 32
                _22962 = mem[_22130]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224] = mem[_22130]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 256 len ceil32(_22962)] = mem[_22130 + 32 len ceil32(_22962)]
                if ceil32(_22962) > _22962:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + _22962 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224 len ceil32(_22962) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _18870 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18870)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18870)]
                if ceil32(_18870) > _18870:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18870 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18870) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19062 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19062) > _19062:
                    mem[_19062 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19062) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22131 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192] = 32
            _22963 = mem[_22131]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224] = mem[_22131]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 256 len ceil32(_22963)] = mem[_22131 + 32 len ceil32(_22963)]
            if ceil32(_22963) > _22963:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + _22963 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224 len ceil32(_22963) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _18872 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18872)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18872)]
                if ceil32(_18872) > _18872:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18872 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18872) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19063 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19063) > _19063:
                    mem[_19063 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19063) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22132 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192] = 32
            _22964 = mem[_22132]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224] = mem[_22132]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 256 len ceil32(_22964)] = mem[_22132 + 32 len ceil32(_22964)]
            if ceil32(_22964) > _22964:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + _22964 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224 len ceil32(_22964) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _19064 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19064)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19064)]
            if ceil32(_19064) > _19064:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19064 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19064) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _19177 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19177) > _19177:
                mem[_19177 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19177) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22133 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 192] = 32
        _22965 = mem[_22133]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224] = mem[_22133]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 256 len ceil32(_22965)] = mem[_22133 + 32 len ceil32(_22965)]
        if ceil32(_22965) > _22965:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + _22965 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12667 + stor12.length.field_1 + 224 len ceil32(_22965) + 32], 
    if 31 >= stor11.length.field_1:
        mem[128] = 256 * stor11.length.field_8
        if stor11.length.field_1 <= 0:
            return ''
        if not arg1:
            mem[64] = ceil32(stor11.length.field_1) + 192
            mem[ceil32(stor11.length.field_1) + 128] = 1
            mem[ceil32(stor11.length.field_1) + 160] = '0'
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _7218 = mem[ceil32(stor11.length.field_1) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                        if ceil32(_7218) > _7218:
                            mem[_7218 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7218) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12464 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    _12888 = mem[_12464]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12464]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12888)] = mem[_12464 + 32 len ceil32(_12888)]
                    if ceil32(_12888) > _12888:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12888 + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12888) + 32]
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7290 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7290) > _7290:
                        mem[_7290 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7290) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12465 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                _12889 = mem[_12465]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12465]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12889)] = mem[_12465 + 32 len ceil32(_12889)]
                if ceil32(_12889) > _12889:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12889 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12889) + 32]
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _7223 = mem[ceil32(stor11.length.field_1) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(_7223) > _7223:
                        mem[_7223 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7223) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12468 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                _12892 = mem[_12468]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12468]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12892)] = mem[_12468 + 32 len ceil32(_12892)]
                if ceil32(_12892) > _12892:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12892 + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12892) + 32]
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _7293 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(_7293) > _7293:
                    mem[_7293 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_7293) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 224] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _12469 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            _12893 = mem[_12469]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[_12469]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(_12893)] = mem[_12469 + 32 len ceil32(_12893)]
            if ceil32(_12893) > _12893:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + _12893 + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(_12893) + 32]
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
        mem[ceil32(stor11.length.field_1) + 128] = s
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            if ceil32(stor11.length.field_1) <= stor11.length.field_1:
                _12548 = mem[ceil32(stor11.length.field_1) + 128]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    if bool(stor12.length):
                        if bool(stor12.length) == stor12.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor12.length):
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                            _18698 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18698)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18698)]
                            if ceil32(_18698) > _18698:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18698 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18698) + 32], 
                        if bool(stor12.length) != 1:
                            mem[64] = 0
                            _18882 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                            if ceil32(_18882) > _18882:
                                mem[_18882 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18882) + -mem[64] + 64
                        mem[0] = 12
                        idx = 0
                        t = 0
                        while idx < stor12.length.field_1:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22134 = mem[64]
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192] = 32
                        _22966 = mem[_22134]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224] = mem[_22134]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 256 len ceil32(_22966)] = mem[_22134 + 32 len ceil32(_22966)]
                        if ceil32(_22966) > _22966:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + _22966 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224 len ceil32(_22966) + 32], 
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18883 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18883)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18883)]
                        if ceil32(_18883) > _18883:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18883 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18883) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19075 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19075) > _19075:
                            mem[_19075 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19075) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22135 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192] = 32
                    _22967 = mem[_22135]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224] = mem[_22135]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 256 len ceil32(_22967)] = mem[_22135 + 32 len ceil32(_22967)]
                    if ceil32(_22967) > _22967:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + _22967 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224 len ceil32(_22967) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18885 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18885)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18885)]
                        if ceil32(_18885) > _18885:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18885 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18885) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _19076 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_19076) > _19076:
                            mem[_19076 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19076) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22136 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192] = 32
                    _22968 = mem[_22136]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224] = mem[_22136]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 256 len ceil32(_22968)] = mem[_22136 + 32 len ceil32(_22968)]
                    if ceil32(_22968) > _22968:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + _22968 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224 len ceil32(_22968) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _19077 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19077)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19077)]
                    if ceil32(_19077) > _19077:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19077 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19077) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19180 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19180) > _19180:
                        mem[_19180 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19180) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22137 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 192] = 32
                _22969 = mem[_22137]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224] = mem[_22137]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 256 len ceil32(_22969)] = mem[_22137 + 32 len ceil32(_22969)]
                if ceil32(_22969) > _22969:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + _22969 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12548 + stor12.length.field_1 + 224 len ceil32(_22969) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            _12684 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18701 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18701)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18701)]
                        if ceil32(_18701) > _18701:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18701 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18701) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18887 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18887) > _18887:
                            mem[_18887 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18887) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22138 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192] = 32
                    _22970 = mem[_22138]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224] = mem[_22138]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 256 len ceil32(_22970)] = mem[_22138 + 32 len ceil32(_22970)]
                    if ceil32(_22970) > _22970:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + _22970 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224 len ceil32(_22970) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18888 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18888)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18888)]
                    if ceil32(_18888) > _18888:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18888 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18888) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19080 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19080) > _19080:
                        mem[_19080 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19080) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22139 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192] = 32
                _22971 = mem[_22139]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224] = mem[_22139]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 256 len ceil32(_22971)] = mem[_22139 + 32 len ceil32(_22971)]
                if ceil32(_22971) > _22971:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + _22971 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224 len ceil32(_22971) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18890 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18890)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18890)]
                    if ceil32(_18890) > _18890:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18890 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18890) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19081 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19081) > _19081:
                        mem[_19081 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19081) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22140 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192] = 32
                _22972 = mem[_22140]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224] = mem[_22140]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 256 len ceil32(_22972)] = mem[_22140 + 32 len ceil32(_22972)]
                if ceil32(_22972) > _22972:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + _22972 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224 len ceil32(_22972) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _19082 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19082)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19082)]
                if ceil32(_19082) > _19082:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19082 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19082) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19183 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19183) > _19183:
                    mem[_19183 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19183) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22141 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 192] = 32
            _22973 = mem[_22141]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224] = mem[_22141]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 256 len ceil32(_22973)] = mem[_22141 + 32 len ceil32(_22973)]
            if ceil32(_22973) > _22973:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + _22973 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12684 + stor12.length.field_1 + 224 len ceil32(_22973) + 32], 
        mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _12549 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _18704 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18704)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18704)]
                        if ceil32(_18704) > _18704:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18704 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18704) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _18892 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_18892) > _18892:
                            mem[_18892 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18892) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22142 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192] = 32
                    _22974 = mem[_22142]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224] = mem[_22142]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 256 len ceil32(_22974)] = mem[_22142 + 32 len ceil32(_22974)]
                    if ceil32(_22974) > _22974:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + _22974 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224 len ceil32(_22974) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18893 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18893)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18893)]
                    if ceil32(_18893) > _18893:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18893 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18893) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19085 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19085) > _19085:
                        mem[_19085 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19085) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22143 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192] = 32
                _22975 = mem[_22143]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224] = mem[_22143]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 256 len ceil32(_22975)] = mem[_22143 + 32 len ceil32(_22975)]
                if ceil32(_22975) > _22975:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + _22975 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224 len ceil32(_22975) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18895 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18895)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18895)]
                    if ceil32(_18895) > _18895:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18895 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18895) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _19086 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_19086) > _19086:
                        mem[_19086 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19086) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22144 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192] = 32
                _22976 = mem[_22144]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224] = mem[_22144]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 256 len ceil32(_22976)] = mem[_22144 + 32 len ceil32(_22976)]
                if ceil32(_22976) > _22976:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + _22976 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224 len ceil32(_22976) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _19087 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19087)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19087)]
                if ceil32(_19087) > _19087:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19087 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19087) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19186 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19186) > _19186:
                    mem[_19186 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19186) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22145 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 192] = 32
            _22977 = mem[_22145]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224] = mem[_22145]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 256 len ceil32(_22977)] = mem[_22145 + 32 len ceil32(_22977)]
            if ceil32(_22977) > _22977:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + _22977 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12549 + stor12.length.field_1 + 224 len ceil32(_22977) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _12685 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _18707 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18707)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18707)]
                    if ceil32(_18707) > _18707:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18707 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18707) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _18897 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_18897) > _18897:
                        mem[_18897 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18897) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22146 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192] = 32
                _22978 = mem[_22146]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224] = mem[_22146]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 256 len ceil32(_22978)] = mem[_22146 + 32 len ceil32(_22978)]
                if ceil32(_22978) > _22978:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + _22978 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224 len ceil32(_22978) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _18898 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18898)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18898)]
                if ceil32(_18898) > _18898:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18898 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18898) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19090 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19090) > _19090:
                    mem[_19090 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19090) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22147 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192] = 32
            _22979 = mem[_22147]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224] = mem[_22147]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 256 len ceil32(_22979)] = mem[_22147 + 32 len ceil32(_22979)]
            if ceil32(_22979) > _22979:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + _22979 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224 len ceil32(_22979) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _18900 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_18900)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_18900)]
                if ceil32(_18900) > _18900:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _18900 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_18900) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _19091 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_19091) > _19091:
                    mem[_19091 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19091) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22148 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192] = 32
            _22980 = mem[_22148]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224] = mem[_22148]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 256 len ceil32(_22980)] = mem[_22148 + 32 len ceil32(_22980)]
            if ceil32(_22980) > _22980:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + _22980 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224 len ceil32(_22980) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _19092 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_19092)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_19092)]
            if ceil32(_19092) > _19092:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _19092 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_19092) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _19189 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_19189) > _19189:
                mem[_19189 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19189) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22149 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 192] = 32
        _22981 = mem[_22149]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224] = mem[_22149]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 256 len ceil32(_22981)] = mem[_22149 + 32 len ceil32(_22981)]
        if ceil32(_22981) > _22981:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + _22981 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _12685 + stor12.length.field_1 + 224 len ceil32(_22981) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor11.length.field_1 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor11.length.field_1) + 128] = 1
        mem[ceil32(stor11.length.field_1) + 160] = '0'
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 0
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    var88001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                if bool(stor12.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
                mem[64] = 0
                _13390 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var89001 = ceil32(_13390)
                if ceil32(_13390) > _13390:
                    mem[_13390 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13390) + -mem[64] + 64
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            if bool(stor12.length) == 1:
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            mem[64] = 0
            _13434 = mem[ceil32(stor11.length.field_1) + 192]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            var90001 = ceil32(_13434)
            if ceil32(_13434) > _13434:
                mem[_13434 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_13434) + -mem[64] + 64
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                var89001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            if bool(stor12.length) == 1:
                idx = 0
                s = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
            mem[64] = 0
            _13395 = mem[ceil32(stor11.length.field_1) + 192]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            var90001 = ceil32(_13395)
            if ceil32(_13395) > _13395:
                mem[_13395 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_13395) + -mem[64] + 64
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = Mask(248, 8, stor12.length)
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            var90001 = ceil32(mem[ceil32(stor11.length.field_1) + 192])
        else:
            if bool(stor12.length) != 1:
                mem[64] = 0
                _13437 = mem[ceil32(stor11.length.field_1) + 192]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(_13437) > _13437:
                    mem[_13437 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13437) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + idx + 225] = stor12[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
        return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + stor12.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
    mem[ceil32(stor11.length.field_1) + 128] = s
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) <= stor11.length.field_1:
            _17652 = mem[ceil32(stor11.length.field_1) + 128]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                if bool(stor12.length):
                    if bool(stor12.length) == stor12.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor12.length):
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                        _23450 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23450)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23450)]
                        if ceil32(_23450) > _23450:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23450 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23450) + 32], 
                    if bool(stor12.length) != 1:
                        mem[64] = 0
                        _23634 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                        if ceil32(_23634) > _23634:
                            mem[_23634 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23634) + -mem[64] + 64
                    mem[0] = 12
                    idx = 0
                    t = 0
                    while idx < stor12.length.field_1:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24886 = mem[64]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192] = 32
                    _25526 = mem[_24886]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224] = mem[_24886]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 256 len ceil32(_25526)] = mem[_24886 + 32 len ceil32(_25526)]
                    if ceil32(_25526) > _25526:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + _25526 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224 len ceil32(_25526) + 32], 
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23635 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23635)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23635)]
                    if ceil32(_23635) > _23635:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23635 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23635) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23843 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23843) > _23843:
                        mem[_23843 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23843) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24887 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192] = 32
                _25527 = mem[_24887]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224] = mem[_24887]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 256 len ceil32(_25527)] = mem[_24887 + 32 len ceil32(_25527)]
                if ceil32(_25527) > _25527:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + _25527 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224 len ceil32(_25527) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23637 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23637)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23637)]
                    if ceil32(_23637) > _23637:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23637 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23637) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23844 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23844) > _23844:
                        mem[_23844 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23844) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24888 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192] = 32
                _25528 = mem[_24888]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224] = mem[_24888]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 256 len ceil32(_25528)] = mem[_24888 + 32 len ceil32(_25528)]
                if ceil32(_25528) > _25528:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + _25528 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224 len ceil32(_25528) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23845 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23845)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23845)]
                if ceil32(_23845) > _23845:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23845 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23845) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23916 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23916) > _23916:
                    mem[_23916 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23916) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24889 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 192] = 32
            _25529 = mem[_24889]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224] = mem[_24889]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 256 len ceil32(_25529)] = mem[_24889 + 32 len ceil32(_25529)]
            if ceil32(_25529) > _25529:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + _25529 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17652 + stor12.length.field_1 + 224 len ceil32(_25529) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        _17772 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23453 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23453)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23453)]
                    if ceil32(_23453) > _23453:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23453 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23453) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23639 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23639) > _23639:
                        mem[_23639 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23639) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24890 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192] = 32
                _25530 = mem[_24890]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224] = mem[_24890]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 256 len ceil32(_25530)] = mem[_24890 + 32 len ceil32(_25530)]
                if ceil32(_25530) > _25530:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + _25530 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224 len ceil32(_25530) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23640 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23640)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23640)]
                if ceil32(_23640) > _23640:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23640 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23640) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23848 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23848) > _23848:
                    mem[_23848 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23848) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24891 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192] = 32
            _25531 = mem[_24891]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224] = mem[_24891]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 256 len ceil32(_25531)] = mem[_24891 + 32 len ceil32(_25531)]
            if ceil32(_25531) > _25531:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + _25531 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224 len ceil32(_25531) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23642 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23642)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23642)]
                if ceil32(_23642) > _23642:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23642 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23642) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23849 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23849) > _23849:
                    mem[_23849 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23849) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24892 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192] = 32
            _25532 = mem[_24892]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224] = mem[_24892]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 256 len ceil32(_25532)] = mem[_24892 + 32 len ceil32(_25532)]
            if ceil32(_25532) > _25532:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + _25532 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224 len ceil32(_25532) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _23850 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23850)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23850)]
            if ceil32(_23850) > _23850:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23850 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23850) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23919 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23919) > _23919:
                mem[_23919 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23919) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24893 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 192] = 32
        _25533 = mem[_24893]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224] = mem[_24893]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 256 len ceil32(_25533)] = mem[_24893 + 32 len ceil32(_25533)]
        if ceil32(_25533) > _25533:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + _25533 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17772 + stor12.length.field_1 + 224 len ceil32(_25533) + 32], 
    mem[ceil32(stor11.length.field_1) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor11.length.field_1) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor11.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) <= stor11.length.field_1:
        _17653 = mem[ceil32(stor11.length.field_1) + 128]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            if bool(stor12.length):
                if bool(stor12.length) == stor12.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor12.length):
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                    _23456 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23456)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23456)]
                    if ceil32(_23456) > _23456:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23456 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23456) + 32], 
                if bool(stor12.length) != 1:
                    mem[64] = 0
                    _23644 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                    if ceil32(_23644) > _23644:
                        mem[_23644 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23644) + -mem[64] + 64
                mem[0] = 12
                idx = 0
                t = 0
                while idx < stor12.length.field_1:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24894 = mem[64]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192] = 32
                _25534 = mem[_24894]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224] = mem[_24894]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 256 len ceil32(_25534)] = mem[_24894 + 32 len ceil32(_25534)]
                if ceil32(_25534) > _25534:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + _25534 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224 len ceil32(_25534) + 32], 
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23645 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23645)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23645)]
                if ceil32(_23645) > _23645:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23645 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23645) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23853 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23853) > _23853:
                    mem[_23853 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23853) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24895 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192] = 32
            _25535 = mem[_24895]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224] = mem[_24895]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 256 len ceil32(_25535)] = mem[_24895 + 32 len ceil32(_25535)]
            if ceil32(_25535) > _25535:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + _25535 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224 len ceil32(_25535) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23647 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23647)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23647)]
                if ceil32(_23647) > _23647:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23647 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23647) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23854 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23854) > _23854:
                    mem[_23854 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23854) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24896 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192] = 32
            _25536 = mem[_24896]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224] = mem[_24896]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 256 len ceil32(_25536)] = mem[_24896 + 32 len ceil32(_25536)]
            if ceil32(_25536) > _25536:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + _25536 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224 len ceil32(_25536) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _23855 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23855)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23855)]
            if ceil32(_23855) > _23855:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23855 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23855) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23922 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23922) > _23922:
                mem[_23922 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23922) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24897 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 192] = 32
        _25537 = mem[_24897]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224] = mem[_24897]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 256 len ceil32(_25537)] = mem[_24897 + 32 len ceil32(_25537)]
        if ceil32(_25537) > _25537:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + _25537 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17653 + stor12.length.field_1 + 224 len ceil32(_25537) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    _17773 = mem[ceil32(stor11.length.field_1) + 128]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        if bool(stor12.length):
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 'NH{q', 34
            if not bool(stor12.length):
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
                _23459 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23459)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23459)]
                if ceil32(_23459) > _23459:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23459 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23459) + 32], 
            if bool(stor12.length) != 1:
                mem[64] = 0
                _23649 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
                if ceil32(_23649) > _23649:
                    mem[_23649 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23649) + -mem[64] + 64
            mem[0] = 12
            idx = 0
            t = 0
            while idx < stor12.length.field_1:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24898 = mem[64]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192] = 32
            _25538 = mem[_24898]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224] = mem[_24898]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 256 len ceil32(_25538)] = mem[_24898 + 32 len ceil32(_25538)]
            if ceil32(_25538) > _25538:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + _25538 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224 len ceil32(_25538) + 32], 
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _23650 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23650)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23650)]
            if ceil32(_23650) > _23650:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23650 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23650) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23858 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23858) > _23858:
                mem[_23858 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23858) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24899 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192] = 32
        _25539 = mem[_24899]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224] = mem[_24899]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 256 len ceil32(_25539)] = mem[_24899 + 32 len ceil32(_25539)]
        if ceil32(_25539) > _25539:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + _25539 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224 len ceil32(_25539) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
    if bool(stor12.length):
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 'NH{q', 34
        if not bool(stor12.length):
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
            _23652 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23652)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23652)]
            if ceil32(_23652) > _23652:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23652 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23652) + 32], 
        if bool(stor12.length) != 1:
            mem[64] = 0
            _23859 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
            if ceil32(_23859) > _23859:
                mem[_23859 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23859) + -mem[64] + 64
        mem[0] = 12
        idx = 0
        t = 0
        while idx < stor12.length.field_1:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24900 = mem[64]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192] = 32
        _25540 = mem[_24900]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224] = mem[_24900]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 256 len ceil32(_25540)] = mem[_24900 + 32 len ceil32(_25540)]
        if ceil32(_25540) > _25540:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + _25540 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224 len ceil32(_25540) + 32], 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 'NH{q', 34
    if not bool(stor12.length):
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = Mask(248, 8, stor12.length)
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 192] = 32
        _23860 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 256 len ceil32(_23860)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_23860)]
        if ceil32(_23860) > _23860:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + _23860 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + stor12.length.field_1 + 224 len ceil32(_23860) + 32], 
    if bool(stor12.length) != 1:
        mem[64] = 0
        _23925 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[64 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1) + ceil32(s) + 160])]
        if ceil32(_23925) > _23925:
            mem[_23925 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_23925) + -mem[64] + 64
    mem[0] = 12
    idx = 0
    t = 0
    while idx < stor12.length.field_1:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + idx + 192] = stor12[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    _24901 = mem[64]
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 192] = 32
    _25541 = mem[_24901]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224] = mem[_24901]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 256 len ceil32(_25541)] = mem[_24901 + 32 len ceil32(_25541)]
    if ceil32(_25541) > _25541:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + _25541 + 256] = 0
    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + _17773 + stor12.length.field_1 + 224 len ceil32(_25541) + 32], 
}



}
