contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
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
address stor11;
mapping of struct sub_8ee74912;
mapping of struct stor13;
array of struct stor14;
uint256 nextTokenId;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 isSaleActive;
uint8 stor19; offset 8
uint256 stor19;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function isSaleActive() {
    return bool(isSaleActive)
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

function nextTokenId() {
    return nextTokenId
}

function owner() {
    return owner
}

function sub_8ee74912(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_8ee74912[arg1][arg2[all]][arg3].field_0, sub_8ee74912[arg1][arg2[all]][arg3].field_256
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

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
}

function toggleSaleStatus() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor19.field_0) = not isSaleActive or Mask(248, 8, uint256(stor19.field_0))
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'MB: Failed to withdraw Ether'
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
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 % 128 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_eb8d72b7(?) {
    require calldata.size - 4 >= 64
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13[cd[4] << 240].field_0):
        if bool(stor13[cd[4] << 240].field_0) == uint255(stor13[cd[4] << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor13[cd[4] << 240].field_0 = 0
            idx = 0
            while (uint255(stor13[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor13[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor13[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor13[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13[cd[4] << 240].field_0) == stor13[cd[4] << 240].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor13[cd[4] << 240].field_0 = 0
            idx = 0
            while stor13[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor13[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor13[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor13[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor13[cd[4] << 240][idx].field_0 = 0
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
        revert with 0, 'ERC721: transfer from incorrect owner'
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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
        revert with 0, 'ERC721: transfer from incorrect owner'
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
                revert with 0, 17
            if balanceOf[address(arg1)] - 1 != stor8[arg3]:
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
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[arg3] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[arg3]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[arg3]
        stor10[arg3] = 0
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

function sub_1c37a822(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    if msg.sender != this.address:
        revert with 0, 'NonblockingReceiver: caller must be Bridge.'
    require arg4.length >= 64
    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
        revert with 0, 'ERC721: token already minted'
    stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = mem[ceil32(ceil32(arg2.length)) + 161]
    if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        if mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
            if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
                revert with 0, 'ERC721: balance query for the zero address'
            tokenOfOwnerByIndex[address(mem[ceil32(ceil32(arg2.length)) + 129])][stor3[address(mem[ceil32(ceil32(arg2.length)) + 129])]] = mem[ceil32(ceil32(arg2.length)) + 161]
            stor8[mem[ceil32(ceil32(arg2.length)) + 161]] = balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]
    else:
        if tokenByIndex.length < 1:
            revert with 0, 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 0, 50
        if stor10[mem[ceil32(ceil32(arg2.length)) + 161]] >= tokenByIndex.length:
            revert with 0, 50
        tokenByIndex[stor10[mem[ceil32(ceil32(arg2.length)) + 161]]] = tokenByIndex[tokenByIndex.length]
        stor10[stor9[stor9.length]] = stor10[mem[ceil32(ceil32(arg2.length)) + 161]]
        stor10[mem[ceil32(ceil32(arg2.length)) + 161]] = 0
        if not tokenByIndex.length:
            revert with 0, 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
        revert with 0, 17
    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, mem[ceil32(ceil32(arg2.length)) + 161], 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_7533d788(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13[arg1].field_0):
            if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13[arg1].field_0):
                if 31 < uint255(stor13[arg1].field_0) * 0.5:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        else:
            if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor13[arg1].field_1 % 128:
                if 31 < stor13[arg1].field_1 % 128:
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while stor13[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        mem[ceil32(uint255(stor13[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor13[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor13[arg1].field_0) * 0.5) > uint255(stor13[arg1].field_0) * 0.5:
            mem[(uint255(stor13[arg1].field_0) * 0.5) + ceil32(uint255(stor13[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13[arg1].field_0), data=mem[128 len ceil32(uint255(stor13[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor13[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor13[arg1].field_0) * 0.5)]), 
    if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13[arg1].field_0):
            if 31 < uint255(stor13[arg1].field_0) * 0.5:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor13[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    else:
        if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor13[arg1].field_1 % 128:
            if 31 < stor13[arg1].field_1 % 128:
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while stor13[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    mem[ceil32(stor13[arg1].field_1 % 128) + 192 len ceil32(stor13[arg1].field_1 % 128)] = mem[128 len ceil32(stor13[arg1].field_1 % 128)]
    if ceil32(stor13[arg1].field_1 % 128) > stor13[arg1].field_1 % 128:
        mem[stor13[arg1].field_1 % 128 + ceil32(stor13[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)], mem[(2 * ceil32(stor13[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1 % 128)]), 
}

function sub_d1deba1f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(arg1 << 240, 12)
    if ceil32(arg2.length) <= arg2.length:
        _42 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_42][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0 = 0
    else:
        _45 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_45][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0 = 0
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 293 len arg4.length] = arg4[all]
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + arg4.length + 293 len ceil32(arg4.length) - arg4.length]), arg3 << 192, ceil32(arg2.length) + 160
    else:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 261] = arg4.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 293 len arg4.length] = arg4[all]
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 293 len ceil32(arg4.length) - arg2.length + ceil32(arg2.length)]), arg3 << 192, ceil32(arg2.length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function devMint() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if nextTokenId > !uint8(stor19.field_8):
        revert with 0, 17
    if nextTokenId + uint8(stor19.field_8) > stor16:
        revert with 0, 'MB: Mint exceeds supply'
    if not uint8(stor19.field_8):
        revert with 0, 'MB: Already minted'
    idx = 0
    while uint8(idx) < uint8(stor19.field_8):
        if nextTokenId == -1:
            revert with 0, 17
        nextTokenId++
        _128 = mem[64]
        mem[64] = mem[64] + 32
        mem[_128] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor15 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor15 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = nextTokenId + 1
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = nextTokenId + 1
                mem[32] = 2
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, nextTokenId + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = nextTokenId + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _128 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, nextTokenId + 1, 128, 0
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
                    _258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_258] == Mask(32, 224, mem[_258])
                    if Mask(32, 224, mem[_258]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId + 1
                stor8[stor15 + 1] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = nextTokenId + 1
                mem[32] = 2
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, nextTokenId + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = nextTokenId + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _128 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, nextTokenId + 1, 128, 0
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
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_260] == Mask(32, 224, mem[_260])
                    if Mask(32, 224, mem[_260]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor10[stor15 + 1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor10[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor15 + 1]
            stor10[stor15 + 1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = nextTokenId + 1
            mem[32] = 2
            ownerOf[stor15 + 1] = msg.sender
            emit Transfer(0, msg.sender, nextTokenId + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = nextTokenId + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _128 + 32]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, nextTokenId + 1, 128, 0
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
                _262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_262] == Mask(32, 224, mem[_262])
                if Mask(32, 224, mem[_262]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
    uint8(stor19.field_8) = 0
}

function mint(uint8 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'MB: Contract calls not allowed'
    if not isSaleActive:
        revert with 0, 'MB: Sale not started'
    if arg1 > 10:
        revert with 0, 'MB: Max 10 NFTs per transaction'
    if nextTokenId > !arg1:
        revert with 0, 17
    if nextTokenId + arg1 > stor16:
        revert with 0, 'MB: Mint exceeds supply'
    if stor17 and arg1 > -1 / stor17:
        revert with 0, 17
    if msg.value < stor17 * arg1:
        revert with 0, 'MB: Value insufficient'
    idx = 0
    while uint8(idx) < arg1:
        if nextTokenId == -1:
            revert with 0, 17
        nextTokenId++
        _132 = mem[64]
        mem[64] = mem[64] + 32
        mem[_132] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor15 + 1]:
            revert with 0, 'ERC721: token already minted'
        stor10[stor15 + 1] = tokenByIndex.length
        tokenByIndex.length++
        tokenByIndex[tokenByIndex.length] = nextTokenId + 1
        if msg.sender:
            if not msg.sender:
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = nextTokenId + 1
                mem[32] = 2
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, nextTokenId + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = nextTokenId + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _132 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, nextTokenId + 1, 128, 0
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
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_262] == Mask(32, 224, mem[_262])
                    if Mask(32, 224, mem[_262]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not msg.sender:
                    revert with 0, 'ERC721: balance query for the zero address'
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = nextTokenId + 1
                stor8[stor15 + 1] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = nextTokenId + 1
                mem[32] = 2
                ownerOf[stor15 + 1] = msg.sender
                emit Transfer(0, msg.sender, nextTokenId + 1);
                if ext_code.size(msg.sender):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = nextTokenId + 1
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _132 + 32]
                        s = s + 32
                        continue 
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, nextTokenId + 1, 128, 0
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
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_264] == Mask(32, 224, mem[_264])
                    if Mask(32, 224, mem[_264]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if tokenByIndex.length < 1:
                revert with 0, 17
            if tokenByIndex.length - 1 >= tokenByIndex.length:
                revert with 0, 50
            if stor10[stor15 + 1] >= tokenByIndex.length:
                revert with 0, 50
            tokenByIndex[stor10[stor15 + 1]] = tokenByIndex[tokenByIndex.length]
            stor10[stor9[stor9.length]] = stor10[stor15 + 1]
            stor10[stor15 + 1] = 0
            if not tokenByIndex.length:
                revert with 0, 49
            tokenByIndex[tokenByIndex.length] = 0
            tokenByIndex.length--
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = nextTokenId + 1
            mem[32] = 2
            ownerOf[stor15 + 1] = msg.sender
            emit Transfer(0, msg.sender, nextTokenId + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = nextTokenId + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _132 + 32]
                    s = s + 32
                    continue 
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, nextTokenId + 1, 128, 0
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
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == Mask(32, 224, mem[_266])
                if Mask(32, 224, mem[_266]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if uint8(idx) == 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        continue 
}

function sub_cf89fa03(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MB: You must own the token to traverse'
    if bool(stor13[arg1 << 240].field_0):
        if bool(stor13[arg1 << 240].field_0) == uint255(stor13[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor13[arg1 << 240].field_0) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MB: This chain is currently unavailable for travel'
    else:
        if bool(stor13[arg1 << 240].field_0) == stor13[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        if stor13[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MB: This chain is currently unavailable for travel'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2]:
        if not ownerOf[arg2]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor2[arg2]] < 1:
            revert with 0, 17
        if balanceOf[stor2[arg2]] - 1 != stor8[arg2]:
            tokenOfOwnerByIndex[stor2[arg2]][stor8[arg2]] = tokenOfOwnerByIndex[stor2[arg2]][stor3[stor2[arg2]] - 1]
            stor8[stor7[stor2[arg2]][stor3[stor2[arg2]] - 1]] = stor8[arg2]
        stor8[arg2] = 0
        tokenOfOwnerByIndex[stor2[arg2]][stor3[stor2[arg2]] - 1] = 0
    if tokenByIndex.length < 1:
        revert with 0, 17
    if tokenByIndex.length - 1 >= tokenByIndex.length:
        revert with 0, 50
    if stor10[arg2] >= tokenByIndex.length:
        revert with 0, 50
    tokenByIndex[stor10[arg2]] = tokenByIndex[tokenByIndex.length]
    stor10[stor9[stor9.length]] = stor10[arg2]
    stor10[arg2] = 0
    if not tokenByIndex.length:
        revert with 0, 49
    tokenByIndex[tokenByIndex.length] = 0
    tokenByIndex.length--
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor2[arg2]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[226] = stor18
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, stor18, 0, uint16(arg1) << 192
    mem[584] = 0
    staticcall stor11.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor18, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'MB: msg.value not enough to cover messageFee. Send gas for message fees'
    mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 262] = uint16(arg1)
    mem[ceil32(return_data.size) + 294] = 192
    if bool(stor13[arg1 << 240].field_0):
        if bool(stor13[arg1 << 240].field_0) == uint255(stor13[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = uint255(stor13[arg1 << 240].field_0) * 0.5
        if not bool(stor13[arg1 << 240].field_0):
            require ext_code.size(stor11)
            call stor11.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor13[arg1 << 240].field_0), Mask(248, 8, stor13[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor18, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor13[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor13[arg1 << 240].field_0) * 0.5:
                    mem[idx + ceil32(return_data.size) + 486] = stor13[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 486] = 64
                require ext_code.size(stor11)
                call stor11.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor13[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor13[arg1 << 240].field_0) * 0.5) + 32], msg.sender, arg2, 34, stor18, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor18, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor11)
                call stor11.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    else:
        if bool(stor13[arg1 << 240].field_0) == stor13[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = stor13[arg1 << 240].field_1 % 128
        if not bool(stor13[arg1 << 240].field_0):
            require ext_code.size(stor11)
            call stor11.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor13[arg1 << 240].field_0 % 128, Mask(248, 8, stor13[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor18, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor13[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor13[arg1 << 240].field_1 % 128:
                    mem[idx + ceil32(return_data.size) + 486] = stor13[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(stor13[arg1 << 240].field_1 % 128) + 486] = 64
                require ext_code.size(stor11)
                call stor11.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(stor13[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor13[arg1 << 240].field_1 % 128) + 320, stor13[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor13[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, stor18, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor18, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor11)
                call stor11.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor14.length):
                if stor14.length.field_1 % 128 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                    mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                    mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                    mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                        return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289] = 0
                    return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
                mem[ceil32(stor14.length.field_1 % 128) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                    if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                    mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) > mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                    _3720 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(_3720) + 32], 
                mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) > mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                        mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                    _3722 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(_3722) + 32], 
                mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
                mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
            if 31 >= uint255(stor14.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
            else:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if stor14.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) > stor14.length.field_1 % 128:
                mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor14.length.field_1 % 128:
            if stor14.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
            if ceil32(stor14.length.field_1 % 128) > stor14.length.field_1 % 128:
                mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
            mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
            mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
        if 31 >= stor14.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
            if stor14.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                if ceil32(stor14.length.field_1 % 128) <= stor14.length.field_1 % 128:
                    mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
                mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128]) > mem[ceil32(stor14.length.field_1 % 128) + 128]:
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
                _3744 = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(_3744) + 32], 
            mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        else:
            mem[128] = uint256(stor14.field_0)
            idx = 128
            s = 0
            while stor14.length.field_1 % 128 + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor14.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257] = mem[ceil32(stor14.length.field_1 % 128) + 192]
                mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])] = mem[ceil32(stor14.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) <= mem[ceil32(stor14.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor14.length.field_1 % 128) + 192], data=mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor14.length.field_1 % 128) + 192] + ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor14.length.field_1 % 128) + stor14.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor14.length.field_1 % 128) + 128] = s
            if s:
                mem[ceil32(stor14.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor14.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor14.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor14.length.field_1 % 128)] = mem[128 len ceil32(stor14.length.field_1 % 128)]
        if ceil32(stor14.length.field_1 % 128) > stor14.length.field_1 % 128:
            mem[stor14.length.field_1 % 128 + ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])] = mem[ceil32(stor14.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + 128])]
        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 192] = 32
        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160])]), 
        mem[mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor14.length.field_1 % 128) + 128] + ceil32(stor14.length.field_1 % 128) + ceil32(s) + stor14.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor14.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
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
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
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
            mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
            if uint255(stor14.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
                mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
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
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
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
                    _4406 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[_4406 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                _4407 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[_4407 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4407) + 32], 
            mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _4408 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[_4408 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4408) + 32], 
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
            mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
                _4410 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[_4410 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4410) + 32], 
            _4411 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[_4411 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4411) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            _4412 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[_4412 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4412) + 32], 
        _4413 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[_4413 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4413) + 32], 
    if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor14.length.field_1 % 128:
        if uint255(stor14.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
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
    if 31 >= stor14.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor14.length.field_8)
        if uint255(stor14.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
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
    while stor14.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint255(stor14.length) * 0.5 <= 0:
        return ''
    if not arg1:
        mem[ceil32(uint255(stor14.length) * 0.5) + 224 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 224] = '0'
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
                _4414 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                if ceil32(_4414) > _4414:
                    mem[_4414 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4414) + 32], 
            _4415 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
            if ceil32(_4415) > _4415:
                mem[_4415 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4415) + 32], 
        mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            _4416 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
            if ceil32(_4416) > _4416:
                mem[_4416 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4416) + 32], 
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
        mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
            _4418 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
            if ceil32(_4418) > _4418:
                mem[_4418 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4418) + 32], 
        _4419 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
        if ceil32(_4419) > _4419:
            mem[_4419 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4419) + 32], 
    mem[(uint255(stor14.length) * 0.5) + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192] = 0
    mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])] = mem[ceil32(uint255(stor14.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128])]
    mem[64] = mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 192] = 32
    if ceil32(mem[ceil32(uint255(stor14.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor14.length) * 0.5) + 128]:
        _4420 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
        if ceil32(_4420) > _4420:
            mem[_4420 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4420) + 32], 
    _4421 = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 160]
    mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
    if ceil32(_4421) > _4421:
        mem[_4421 + mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 256] = 0
    return 32, mem[mem[ceil32(uint255(stor14.length) * 0.5) + 128] + ceil32(uint255(stor14.length) * 0.5) + ceil32(s) + (uint255(stor14.length) * 0.5) + 224 len ceil32(_4421) + 32], 
}



}
