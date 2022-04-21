contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
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
array of struct stor11;
array of struct stor12;
uint256 maxSupply;
uint256 maxMintAmount;
uint8 paused;
mapping of uint8 stor16;

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

function maxMintAmount() {
    return maxMintAmount
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

function paused() {
    return bool(paused)
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

function maxSupply() {
    return maxSupply
}

function whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function setmaxMintAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintAmount = arg1
}

function whitelistUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 1
}

function removeWhitelistUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 0
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

function calculateCost() {
    if paused:
        revert with 0, 'Mint paused'
    if tokenByIndex.length >= maxSupply:
        revert with 0, 'Sale has already ended'
    if tokenByIndex.length >= 767:
        return 3 * 10^18
    if tokenByIndex.length >= 750:
        return 2 * 10^18
    if tokenByIndex.length >= 650:
        return 175 * 10^16
    if tokenByIndex.length >= 500:
        return 15 * 10^17
    if tokenByIndex.length < 350:
        return 10^18
    return 125 * 10^16
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

function mint(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if paused:
        revert with 0, 'Mint paused'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must mint at least one BoredPunk3D'
    if arg2 > maxMintAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't mint more than 20 BoredPunk3D'
    if tokenByIndex.length > -arg2 - 1:
        revert with 'NH{q', 17
    if tokenByIndex.length + arg2 > maxSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LFG, 777 BoredPunk3D has been minted !! '
    if msg.sender == owner:
        idx = 1
        while idx <= arg2:
            if tokenByIndex.length > -idx - 1:
                revert with 'NH{q', 17
            _730 = mem[64]
            mem[64] = mem[64] + 32
            mem[_730] = 0
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
                        mem[mem[64] + s + 164] = mem[_730 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                    _1482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1482] == Mask(32, 224, mem[_1482])
                    if Mask(32, 224, mem[_1482]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                        mem[mem[64] + s + 164] = mem[_730 + s + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                    _1483 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1483] == Mask(32, 224, mem[_1483])
                    if Mask(32, 224, mem[_1483]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 16
        if bool(stor16[address(msg.sender)]) == 1:
            idx = 1
            while idx <= arg2:
                if tokenByIndex.length > -idx - 1:
                    revert with 'NH{q', 17
                _731 = mem[64]
                mem[64] = mem[64] + 32
                mem[_731] = 0
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
                            mem[mem[64] + s + 164] = mem[_731 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                        _1484 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1484] == Mask(32, 224, mem[_1484])
                        if Mask(32, 224, mem[_1484]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                            mem[mem[64] + s + 164] = mem[_731 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                        _1485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1485] == Mask(32, 224, mem[_1485])
                        if Mask(32, 224, mem[_1485]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if paused:
                revert with 0, 'Mint paused'
            if tokenByIndex.length >= maxSupply:
                revert with 0, 'Sale has already ended'
            if tokenByIndex.length >= 767:
                if arg2 > 0x6261f45f0c13935a2754cc1eec2d1534cc8ff782edb84b50b:
                    revert with 'NH{q', 17
                if msg.value < 3 * 10^18 * arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                idx = 1
                while idx <= arg2:
                    if tokenByIndex.length > -idx - 1:
                        revert with 'NH{q', 17
                    _737 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_737] = 0
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
                                mem[mem[64] + s + 164] = mem[_737 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                            _1496 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1496] == Mask(32, 224, mem[_1496])
                            if Mask(32, 224, mem[_1496]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                mem[mem[64] + s + 164] = mem[_737 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                            _1497 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1497] == Mask(32, 224, mem[_1497])
                            if Mask(32, 224, mem[_1497]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if tokenByIndex.length >= 750:
                    if arg2 > 0x9392ee8e921d5d073aff322e62439fcf32d7f344649470f90:
                        revert with 'NH{q', 17
                    if msg.value < 2 * 10^18 * arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                    idx = 1
                    while idx <= arg2:
                        if tokenByIndex.length > -idx - 1:
                            revert with 'NH{q', 17
                        _736 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_736] = 0
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
                                    mem[mem[64] + s + 164] = mem[_736 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                _1494 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1494] == Mask(32, 224, mem[_1494])
                                if Mask(32, 224, mem[_1494]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                    mem[mem[64] + s + 164] = mem[_736 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(arg1)
                                call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                _1495 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1495] == Mask(32, 224, mem[_1495])
                                if Mask(32, 224, mem[_1495]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if tokenByIndex.length >= 650:
                        if arg2 > 0xa8a7ec10a6fcfc9a8c915debde04245a833ff172bc175c8a5:
                            revert with 'NH{q', 17
                        if msg.value < 175 * 10^16 * arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                        idx = 1
                        while idx <= arg2:
                            if tokenByIndex.length > -idx - 1:
                                revert with 'NH{q', 17
                            _735 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_735] = 0
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
                                        mem[mem[64] + s + 164] = mem[_735 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                    _1492 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1492] == Mask(32, 224, mem[_1492])
                                    if Mask(32, 224, mem[_1492]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                        mem[mem[64] + s + 164] = mem[_735 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(arg1)
                                    call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                    _1493 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1493] == Mask(32, 224, mem[_1493])
                                    if Mask(32, 224, mem[_1493]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if tokenByIndex.length >= 500:
                            if arg2 > 0xc4c3e8be182726b44ea9983dd85a2a69991fef05db7096a16:
                                revert with 'NH{q', 17
                            if msg.value < 15 * 10^17 * arg2:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                            idx = 1
                            while idx <= arg2:
                                if tokenByIndex.length > -idx - 1:
                                    revert with 'NH{q', 17
                                _734 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_734] = 0
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
                                            mem[mem[64] + s + 164] = mem[_734 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(arg1)
                                        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                        _1490 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1490] == Mask(32, 224, mem[_1490])
                                        if Mask(32, 224, mem[_1490]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                            mem[mem[64] + s + 164] = mem[_734 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(arg1)
                                        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                        _1491 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1491] == Mask(32, 224, mem[_1491])
                                        if Mask(32, 224, mem[_1491]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if tokenByIndex.length < 350:
                                if arg2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if msg.value < 10^18 * arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                idx = 1
                                while idx <= arg2:
                                    if tokenByIndex.length > -idx - 1:
                                        revert with 'NH{q', 17
                                    _732 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_732] = 0
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
                                                mem[mem[64] + s + 164] = mem[_732 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(arg1)
                                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                            _1486 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1486] == Mask(32, 224, mem[_1486])
                                            if Mask(32, 224, mem[_1486]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                mem[mem[64] + s + 164] = mem[_732 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(arg1)
                                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                            _1487 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1487] == Mask(32, 224, mem[_1487])
                                            if Mask(32, 224, mem[_1487]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
                            else:
                                if arg2 > 0xec1e4a7db69561a52b31e9e3d06c32e51e2652070753e7f4e:
                                    revert with 'NH{q', 17
                                if msg.value < 125 * 10^16 * arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Avax value sent is below the price'
                                idx = 1
                                while idx <= arg2:
                                    if tokenByIndex.length > -idx - 1:
                                        revert with 'NH{q', 17
                                    _733 = mem[64]
                                    mem[64] = mem[64] + 32
                                    mem[_733] = 0
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
                                                mem[mem[64] + s + 164] = mem[_733 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(arg1)
                                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                            _1488 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1488] == Mask(32, 224, mem[_1488])
                                            if Mask(32, 224, mem[_1488]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
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
                                                mem[mem[64] + s + 164] = mem[_733 + s + 32]
                                                s = s + 32
                                                continue 
                                            require ext_code.size(arg1)
                                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                                            _1489 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1489] == Mask(32, 224, mem[_1489])
                                            if Mask(32, 224, mem[_1489]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    continue 
}



}
