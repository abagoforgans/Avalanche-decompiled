contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4)
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
uint256 totalSupply;
uint8 activeSale;
uint64 sub_12a98762; offset 8
uint64 sub_a2a7b0f2; offset 72
uint256 stor12;
uint256 sub_f9a7eecb;
array of struct stor14;
uint8 stor15;
uint256 stor15;
array of address stor16;
address stor17;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_12a98762(?) {
    return sub_12a98762
}

function totalSupply() {
    return totalSupply
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

function activeSale() {
    return bool(activeSale)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
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

function owner() {
    return owner
}

function getPrice() {
    return sub_f9a7eecb
}

function sub_a2a7b0f2(?) {
    return sub_a2a7b0f2
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f9a7eecb(?) {
    return sub_f9a7eecb
}

function _fallback() payable {
    revert
}

function setSaleState() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = not activeSale or Mask(248, 8, stor12)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c7d6d9c5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15) = not uint8(stor15) or Mask(248, 8, uint256(stor15))
}

function sub_3e9f610b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a2a7b0f2 = uint64(arg1)
}

function sub_fa0e022b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_12a98762 = uint64(arg1)
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16.length++
    stor16[stor16.length] = arg1
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
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while (uint255(stor14.length) * 0.5) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_5fc4442b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > sub_12a98762:
        revert with 0, 'No more sapphire nodes to mint'
    totalSupply++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor11]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor11] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = totalSupply
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = totalSupply
            stor7[stor11] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor11] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor11]
        stor9[stor11] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor11] = msg.sender
    emit 0xfeddf252: 0, msg.sender, totalSupply
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, totalSupply, 128, 0
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
    if uint8(stor15):
        idx = 0
        s = 1
        while idx < stor16.length:
            mem[0] = 16
            if stor16[idx] != arg1:
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = 16
                if stor16[idx] != arg2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 0
            continue 
        if s:
            revert with 0, 'Transfer is forbidden'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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
    emit 0xfeddf252: arg1, arg2, arg3
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
    if uint8(stor15):
        idx = 0
        s = 1
        while idx < stor16.length:
            mem[0] = 16
            if stor16[idx] != arg1:
                if idx >= stor16.length:
                    revert with 0, 50
                mem[0] = 16
                if stor16[idx] != arg2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = 0
            continue 
        if s:
            revert with 0, 'Transfer is forbidden'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
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
    emit 0xfeddf252: arg1, arg2, arg3
    if ext_code.size(arg2):
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

function sub_e7d68b71(?) payable {
    activeSale = 1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] > sub_a2a7b0f2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot mint more than `maxNodePerWallet` nodes'
    if totalSupply > sub_12a98762:
        revert with 0, 'No more sapphire nodes to mint'
    if sub_f9a7eecb and 10^18 > -1 / sub_f9a7eecb:
        revert with 0, 17
    mem[100] = msg.sender
    require ext_code.size(stor17)
    staticcall stor17.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * sub_f9a7eecb:
        revert with 0, 'Insuffucient DAI balance'
    if sub_f9a7eecb and 10^18 > -1 / sub_f9a7eecb:
        revert with 0, 17
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = 0xaef6bd49e374c067672babc554a7aee36fb71267
    mem[ceil32(return_data.size) + 164] = 10^18 * sub_f9a7eecb
    require ext_code.size(stor17)
    call stor17.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0xaef6bd49e374c067672babc554a7aee36fb71267, 10^18 * sub_f9a7eecb
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    totalSupply++
    mem[(2 * ceil32(return_data.size)) + 96] = 0
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor11]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor11] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = totalSupply
    if msg.sender:
        if msg.sender:
            if not msg.sender:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = totalSupply
            stor7[stor11] = balanceOf[address(msg.sender)]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor9[stor11] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor9[stor11]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor11]
        stor9[stor11] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor11] = msg.sender
    emit 0xfeddf252: 0, msg.sender, totalSupply
    if ext_code.size(msg.sender):
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = 0
        mem[(2 * ceil32(return_data.size)) + 196] = totalSupply
        mem[(2 * ceil32(return_data.size)) + 228] = 128
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, 0, totalSupply, 128, 0
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            if not return_data.size:
                if not ext_call.return_data[0]:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor14.length):
                if stor14.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                        mem[mem[ceil32(stor14.length.field_1) + 192] + ceil32(stor14.length.field_1) + stor14.length.field_1 + 289] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
                mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            if 31 >= uint255(stor14.length) * 0.5:
                mem[128] = 256 * stor14.length.field_8
                if stor14.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                        mem[mem[ceil32(stor14.length.field_1) + 192] + ceil32(stor14.length.field_1) + stor14.length.field_1 + 289] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
                mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
                mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                    mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor14.field_0)
            idx = 128
            s = 0
            while (uint255(stor14.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor14.length.field_1 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                    mem[mem[ceil32(stor14.length.field_1) + 192] + ceil32(stor14.length.field_1) + stor14.length.field_1 + 289] = 0
                return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
            mem[ceil32(stor14.length.field_1) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
            if ceil32(stor14.length.field_1) > stor14.length.field_1:
                mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if not stor14.length.field_1:
                if stor14.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                        mem[mem[ceil32(stor14.length.field_1) + 192] + ceil32(stor14.length.field_1) + stor14.length.field_1 + 289] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
                        if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                            _3734 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                            mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                                return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                            mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                            return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(_3734) + 32], 
                        _3735 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(_3735) + 32], 
                    mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) <= mem[ceil32(stor14.length.field_1) + 128]:
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
                    _3737 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(_3737) + 32], 
                mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) <= stor14.length.field_1:
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1) + 128]) > mem[ceil32(stor14.length.field_1) + 128]:
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                        return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
                    _3738 = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                    return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(_3738) + 32], 
                mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
            else:
                if 31 >= stor14.length.field_1:
                    mem[128] = 256 * stor14.length.field_8
                    if stor14.length.field_1 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                        if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                            mem[mem[ceil32(stor14.length.field_1) + 192] + ceil32(stor14.length.field_1) + stor14.length.field_1 + 289] = 0
                        return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                    mem[ceil32(stor14.length.field_1) + 128] = s
                    if s:
                        mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    if ceil32(stor14.length.field_1) > stor14.length.field_1:
                        mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
                    mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
                        mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor14.length.field_1 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1) + 224 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 225] = 32
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 257] = mem[ceil32(stor14.length.field_1) + 192]
                    mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])] = mem[ceil32(stor14.length.field_1) + 224 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1) + 192]) > mem[ceil32(stor14.length.field_1) + 192]:
                        mem[mem[ceil32(stor14.length.field_1) + 192] + ceil32(stor14.length.field_1) + stor14.length.field_1 + 289] = 0
                    return Array(len=mem[ceil32(stor14.length.field_1) + 192], data=mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 289 len ceil32(mem[ceil32(stor14.length.field_1) + 192])]), 
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
                mem[ceil32(stor14.length.field_1) + 128] = s
                if s:
                    mem[ceil32(stor14.length.field_1) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor14.length.field_1) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
                if ceil32(stor14.length.field_1) > stor14.length.field_1:
                    mem[stor14.length.field_1 + ceil32(stor14.length.field_1) + ceil32(s) + 192] = 0
        mem[ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192 len ceil32(mem[ceil32(stor14.length.field_1) + 128])] = mem[ceil32(stor14.length.field_1) + 160 len ceil32(mem[ceil32(stor14.length.field_1) + 128])]
        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 192] = 32
        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]
        mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor14.length.field_1) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor14.length.field_1) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 256] = 0
        return 32, mem[mem[ceil32(stor14.length.field_1) + 128] + ceil32(stor14.length.field_1) + ceil32(s) + stor14.length.field_1 + 224 len ceil32(mem[ceil32(stor14.length.field_1) + ceil32(s) + 160]) + 32], 
    if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
        revert with 0, 34
    mem[96] = uint255(stor14.length) * 0.5
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor14.length):
            if uint255(stor14.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                        _3686 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                        if ceil32(_3686) > _3686:
                            mem[_3686 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                    _3687 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                    if ceil32(_3687) > _3687:
                        mem[_3687 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3688 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                    if ceil32(_3688) > _3688:
                        mem[_3688 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                _3689 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                if ceil32(_3689) > _3689:
                    mem[_3689 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3689) + 32], 
            mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3690 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                    if ceil32(_3690) > _3690:
                        mem[_3690 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                _3691 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                if ceil32(_3691) > _3691:
                    mem[_3691 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3691) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _3692 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                if ceil32(_3692) > _3692:
                    mem[_3692 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3692) + 32], 
            _3693 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
            if ceil32(_3693) > _3693:
                mem[_3693 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3693) + 32], 
        if 31 >= uint255(stor14.length) * 0.5:
            mem[128] = 256 * stor14.length.field_8
            if uint255(stor14.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) + 32], 
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
            mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                        _3694 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                        if ceil32(_3694) > _3694:
                            mem[_3694 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                    _3695 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                    if ceil32(_3695) > _3695:
                        mem[_3695 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3696 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                    if ceil32(_3696) > _3696:
                        mem[_3696 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                _3697 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                if ceil32(_3697) > _3697:
                    mem[_3697 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3697) + 32], 
            mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3698 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                    if ceil32(_3698) > _3698:
                        mem[_3698 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                _3699 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                if ceil32(_3699) > _3699:
                    mem[_3699 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3699) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _3700 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                if ceil32(_3700) > _3700:
                    mem[_3700 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3700) + 32], 
            _3701 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
            if ceil32(_3701) > _3701:
                mem[_3701 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3701) + 32], 
        mem[0] = 14
        mem[128] = uint256(stor14.field_0)
        idx = 128
        s = 0
        while (uint255(stor14.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor14[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor14.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                    _4406 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[_4406 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                _4407 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[_4407 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4407) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                _4408 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[_4408 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4408) + 32], 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            _4409 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[_4409 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4409) + 32], 
        mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                _4410 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[_4410 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4410) + 32], 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            _4411 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[_4411 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4411) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            _4412 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[_4412 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4412) + 32], 
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        _4413 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[_4413 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4413) + 32], 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if not stor14.length.field_1:
        if uint255(stor14.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3702 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                    if ceil32(_3702) > _3702:
                        mem[_3702 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                _3703 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[_3703 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3703) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _3704 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                if ceil32(_3704) > _3704:
                    mem[_3704 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3704) + 32], 
            _3705 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
            if ceil32(_3705) > _3705:
                mem[_3705 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3705) + 32], 
        mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _3706 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                if ceil32(_3706) > _3706:
                    mem[_3706 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3706) + 32], 
            _3707 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
            if ceil32(_3707) > _3707:
                mem[_3707 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3707) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            _3708 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
            if ceil32(_3708) > _3708:
                mem[_3708 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3708) + 32], 
        _3709 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
        if ceil32(_3709) > _3709:
            mem[_3709 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3709) + 32], 
    if 31 >= stor14.length.field_1:
        mem[128] = 256 * stor14.length.field_8
        if uint255(stor14.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) + 32], 
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
        mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
                mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                    _3710 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                    if ceil32(_3710) > _3710:
                        mem[_3710 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                _3711 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                if ceil32(_3711) > _3711:
                    mem[_3711 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3711) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _3712 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                if ceil32(_3712) > _3712:
                    mem[_3712 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3712) + 32], 
            _3713 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
            if ceil32(_3713) > _3713:
                mem[_3713 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3713) + 32], 
        mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _3714 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[_3714 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3714) + 32], 
            _3715 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[_3715 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3715) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            _3716 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[_3716 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3716) + 32], 
        _3717 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[_3717 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_3717) + 32], 
    mem[0] = 14
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while stor14.length.field_1 + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint255(stor14.length) * 0.5 <= 0:
        return ''
    if not arg1:
        mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 225] = 32
        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257] = mem[ceil32(uint255(stor14.length) * 0.5) + 192]
        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])] = mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 192]:
            return Array(len=mem[ceil32(uint255(stor14.length) * 0.5) + 192], data=mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192])]), 
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 192] + ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 289] = 0
        return 32, mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 192]) + 32], 
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
    mem[ceil32(uint255(stor14.length) * 0.5) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
                _4414 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                if ceil32(_4414) > _4414:
                    mem[_4414 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4414) + 32], 
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            _4415 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
            if ceil32(_4415) > _4415:
                mem[_4415 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4415) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            _4416 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
            if ceil32(_4416) > _4416:
                mem[_4416 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4416) + 32], 
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        _4417 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
        if ceil32(_4417) > _4417:
            mem[_4417 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4417) + 32], 
    mem[ceil32(uint255(stor14.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            revert with 0, 50
        mem[t + ceil32(uint255(stor14.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
    if ceil32(uint255(stor14.length) * 0.5) <= uint255(stor14.length) * 0.5:
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            _4418 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
            if ceil32(_4418) > _4418:
                mem[_4418 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4418) + 32], 
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        _4419 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
        if ceil32(_4419) > _4419:
            mem[_4419 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4419) + 32], 
    mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        _4420 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
        if ceil32(_4420) > _4420:
            mem[_4420 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4420) + 32], 
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 0
    mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
    _4421 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
    if ceil32(_4421) > _4421:
        mem[_4421 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4421) + 32], 
}



}
