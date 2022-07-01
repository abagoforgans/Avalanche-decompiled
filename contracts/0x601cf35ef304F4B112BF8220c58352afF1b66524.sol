contract main {




// =====================  Runtime code  =====================


#
#  - sub_6be423ce(?)
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
mapping of struct stor10;
address owner;
uint256 tokenIdCounter;
uint256 sub_d4b2001d;
uint256 stor14;
uint256 stor15;
uint256 stor16;
array of struct stor17;
array of struct stor18;
array of struct stor19;
array of struct stor20;
array of struct stor21;
mapping of uint256 category;
mapping of struct stor23;
mapping of struct stor24;
mapping of struct stor25;
address sub_81323911Address;
uint256 sub_3ba7736a;
uint256 discountPercent;
uint256 maxNumberOfTokens;
address stor30;
uint256 stor31;

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

function sub_3ba7736a(?) {
    return sub_3ba7736a
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

function sub_81323911(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return sub_81323911Address
}

function owner() {
    return owner
}

function getMaxNumberOfTokens() {
    return maxNumberOfTokens
}

function getDiscountPercent() {
    return discountPercent
}

function sub_d4b2001d(?) {
    return sub_d4b2001d
}

function getTokenIdCounter() {
    return tokenIdCounter
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function getCategory(uint256 arg1) {
    require calldata.size - 4 >= 32
    return category[arg1]
}

function _fallback() payable {
    revert
}

function sub_9091a3f0(?) {
    return Array(len=3, data=stor14, stor15, stor16)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_16da0a58(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3ba7736a = arg1
}

function sub_eafe42fd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    discountPercent = arg1
}

function sub_4cf09d8b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxNumberOfTokens = arg1
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 and stor31 > -1 / arg2:
        revert with 0, 17
    return stor30, arg2 * stor31 / 100
}

function sub_f709b55e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_81323911Address = address(arg1)
}

function setRoyalties(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30 = arg1
    stor31 = arg2
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

function sub_fdf2026a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0eb4b7f6(?) {
    if stor20.length:
        mem[128] = uint256(stor20.field_0)
        idx = 128
        s = 0
        while (32 * stor20.length) + 96 > idx:
            mem[idx + 32] = stor20[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor20.length, data=mem[128 len 32 * stor20.length])
    mem[(32 * stor20.length) + 128] = 32
    mem[(32 * stor20.length) + 160] = stor20.length
    mem[(32 * stor20.length) + 192 len 32 * stor20.length] = mem[128 len 32 * stor20.length]
    return memory
      from (32 * stor20.length) + 128
       len (96 * stor20.length) + 64
}

function sub_37a02a8e(?) {
    if stor21.length:
        mem[128] = uint256(stor21.field_0)
        if (32 * stor21.length) + 32 > 64:
            mem[160] = uint256(stor21.field_256)
            idx = 160
            s = 1
            while (32 * stor21.length) + 96 > idx:
                mem[idx + 32] = stor21[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor21.length) + 128] = 32
    mem[(32 * stor21.length) + 160] = stor21.length
    mem[(32 * stor21.length) + 192 len 32 * stor21.length] = mem[128 len 32 * stor21.length]
    return memory
      from (32 * stor21.length) + 128
       len (96 * stor21.length) + 64
}

function sub_7b449654(?) {
    if stor19.length:
        mem[128] = uint256(stor19.field_0)
        if (32 * stor19.length) + 32 > 64:
            mem[160] = uint256(stor19.field_256)
            idx = 160
            s = 1
            while (32 * stor19.length) + 96 > idx:
                mem[idx + 32] = stor19[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor19.length) + 128] = 32
    mem[(32 * stor19.length) + 160] = stor19.length
    mem[(32 * stor19.length) + 192 len 32 * stor19.length] = mem[128 len 32 * stor19.length]
    return memory
      from (32 * stor19.length) + 128
       len (96 * stor19.length) + 64
}

function sub_df64e161(?) {
    if stor17.length:
        mem[128] = uint256(stor17.field_0)
        if (32 * stor17.length) + 32 > 64:
            mem[160] = uint256(stor17.field_256)
            idx = 160
            s = 1
            while (32 * stor17.length) + 96 > idx:
                mem[idx + 32] = stor17[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor17.length) + 128] = 32
    mem[(32 * stor17.length) + 160] = stor17.length
    mem[(32 * stor17.length) + 192 len 32 * stor17.length] = mem[128 len 32 * stor17.length]
    return memory
      from (32 * stor17.length) + 128
       len (96 * stor17.length) + 64
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x2a55205a00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x780e9d6300000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_b2b6aecd(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor18.length:
        mem[128] = uint256(stor18.field_0)
        if (32 * stor18.length) + 32 > 64:
            mem[160] = uint256(stor18.field_256)
            idx = 160
            s = 1
            while (32 * stor18.length) + 96 > idx:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor18.length) + 128] = 32
    mem[(32 * stor18.length) + 160] = stor18.length
    mem[(32 * stor18.length) + 192 len 32 * stor18.length] = mem[128 len 32 * stor18.length]
    return memory
      from (32 * stor18.length) + 128
       len (96 * stor18.length) + 64
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

function sub_bf196e16(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg1 <= 3
    if stor23[arg1].field_0:
        if stor23[arg1].field_0 == uint255(stor23[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor23[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor23[arg1].field_0 = 0
            idx = 0
            while (uint255(stor23[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor23[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor23[arg1].field_0 == stor23[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor23[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor23[arg1].field_0 = 0
            idx = 0
            while stor23[arg1].field_1 + 31 / 32 > idx:
                stor23[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_28bd4574(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg1 <= 3
    if stor24[arg1].field_0:
        if stor24[arg1].field_0 == uint255(stor24[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor24[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor24[arg1].field_0 = 0
            idx = 0
            while (uint255(stor24[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor24[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor24[arg1].field_0 == stor24[arg1].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor24[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor24[arg1].field_0 = 0
            idx = 0
            while stor24[arg1].field_1 + 31 / 32 > idx:
                stor24[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor25[arg1].field_0:
        if stor25[arg1].field_0 == uint255(stor25[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor25[arg1][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor25[arg1].field_0 = 0
            idx = 0
            while (uint255(stor25[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor25[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor25[arg1].field_0 == stor25[arg1].field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor25[arg1][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor25[arg1].field_0 = 0
            idx = 0
            while stor25[arg1].field_1 + 31 / 32 > idx:
                stor25[arg1][idx].field_0 = 0
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
        require ext_code.size(arg2)
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
        require ext_code.size(arg2)
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

function sub_b8211375(?) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= 3
    if stor25[arg1].field_0:
        if stor25[arg1].field_0 == uint255(stor25[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor25[arg1].field_0:
            if stor25[arg1].field_0 == uint255(stor25[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor25[arg1].field_0):
                if 31 < uint255(stor25[arg1].field_0) * 0.5:
                    mem[128] = stor25[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor25[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor25[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor25[arg1].field_0), data=mem[128 len ceil32(uint255(stor25[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor25[arg1].field_8
        else:
            if stor25[arg1].field_0 == stor25[arg1].field_1 < 32:
                revert with 0, 34
            if stor25[arg1].field_1:
                if 31 < stor25[arg1].field_1:
                    mem[128] = stor25[arg1].field_0
                    idx = 128
                    s = 0
                    while stor25[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor25[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor25[arg1].field_0), data=mem[128 len ceil32(uint255(stor25[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor25[arg1].field_8
        mem[ceil32(uint255(stor25[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor25[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor25[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor25[arg1].field_0) * 0.5) > uint255(stor25[arg1].field_0) * 0.5:
            mem[(uint255(stor25[arg1].field_0) * 0.5) + ceil32(uint255(stor25[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor25[arg1].field_0), data=mem[128 len ceil32(uint255(stor25[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor25[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor25[arg1].field_0) * 0.5)]), 
    if stor25[arg1].field_0 == stor25[arg1].field_1 < 32:
        revert with 0, 34
    if stor25[arg1].field_0:
        if stor25[arg1].field_0 == uint255(stor25[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor25[arg1].field_0):
            if 31 < uint255(stor25[arg1].field_0) * 0.5:
                mem[128] = stor25[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor25[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor25[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor25[arg1].field_0, data=mem[128 len ceil32(stor25[arg1].field_1)])
            mem[128] = 256 * stor25[arg1].field_8
    else:
        if stor25[arg1].field_0 == stor25[arg1].field_1 < 32:
            revert with 0, 34
        if stor25[arg1].field_1:
            if 31 < stor25[arg1].field_1:
                mem[128] = stor25[arg1].field_0
                idx = 128
                s = 0
                while stor25[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor25[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor25[arg1].field_0, data=mem[128 len ceil32(stor25[arg1].field_1)])
            mem[128] = 256 * stor25[arg1].field_8
    mem[ceil32(stor25[arg1].field_1) + 192 len ceil32(stor25[arg1].field_1)] = mem[128 len ceil32(stor25[arg1].field_1)]
    if ceil32(stor25[arg1].field_1) > stor25[arg1].field_1:
        mem[stor25[arg1].field_1 + ceil32(stor25[arg1].field_1) + 192] = 0
    return Array(len=stor25[arg1].field_0, data=mem[128 len ceil32(stor25[arg1].field_1)], mem[(2 * ceil32(stor25[arg1].field_1)) + 192 len 2 * ceil32(stor25[arg1].field_1)]), 
}

function sub_b92ae7af(?) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= 3
    if stor24[arg1].field_0:
        if stor24[arg1].field_0 == uint255(stor24[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor24[arg1].field_0:
            if stor24[arg1].field_0 == uint255(stor24[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor24[arg1].field_0):
                if 31 < uint255(stor24[arg1].field_0) * 0.5:
                    mem[128] = stor24[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor24[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor24[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24[arg1].field_0), data=mem[128 len ceil32(uint255(stor24[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor24[arg1].field_8
        else:
            if stor24[arg1].field_0 == stor24[arg1].field_1 < 32:
                revert with 0, 34
            if stor24[arg1].field_1:
                if 31 < stor24[arg1].field_1:
                    mem[128] = stor24[arg1].field_0
                    idx = 128
                    s = 0
                    while stor24[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor24[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor24[arg1].field_0), data=mem[128 len ceil32(uint255(stor24[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor24[arg1].field_8
        mem[ceil32(uint255(stor24[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor24[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor24[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor24[arg1].field_0) * 0.5) > uint255(stor24[arg1].field_0) * 0.5:
            mem[(uint255(stor24[arg1].field_0) * 0.5) + ceil32(uint255(stor24[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor24[arg1].field_0), data=mem[128 len ceil32(uint255(stor24[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor24[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor24[arg1].field_0) * 0.5)]), 
    if stor24[arg1].field_0 == stor24[arg1].field_1 < 32:
        revert with 0, 34
    if stor24[arg1].field_0:
        if stor24[arg1].field_0 == uint255(stor24[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor24[arg1].field_0):
            if 31 < uint255(stor24[arg1].field_0) * 0.5:
                mem[128] = stor24[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor24[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor24[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24[arg1].field_0, data=mem[128 len ceil32(stor24[arg1].field_1)])
            mem[128] = 256 * stor24[arg1].field_8
    else:
        if stor24[arg1].field_0 == stor24[arg1].field_1 < 32:
            revert with 0, 34
        if stor24[arg1].field_1:
            if 31 < stor24[arg1].field_1:
                mem[128] = stor24[arg1].field_0
                idx = 128
                s = 0
                while stor24[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor24[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor24[arg1].field_0, data=mem[128 len ceil32(stor24[arg1].field_1)])
            mem[128] = 256 * stor24[arg1].field_8
    mem[ceil32(stor24[arg1].field_1) + 192 len ceil32(stor24[arg1].field_1)] = mem[128 len ceil32(stor24[arg1].field_1)]
    if ceil32(stor24[arg1].field_1) > stor24[arg1].field_1:
        mem[stor24[arg1].field_1 + ceil32(stor24[arg1].field_1) + 192] = 0
    return Array(len=stor24[arg1].field_0, data=mem[128 len ceil32(stor24[arg1].field_1)], mem[(2 * ceil32(stor24[arg1].field_1)) + 192 len 2 * ceil32(stor24[arg1].field_1)]), 
}

function getCategoryName(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= 3
    if stor23[arg1].field_0:
        if stor23[arg1].field_0 == uint255(stor23[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor23[arg1].field_0:
            if stor23[arg1].field_0 == uint255(stor23[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor23[arg1].field_0):
                if 31 < uint255(stor23[arg1].field_0) * 0.5:
                    mem[128] = stor23[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor23[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor23[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23[arg1].field_0), data=mem[128 len ceil32(uint255(stor23[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor23[arg1].field_8
        else:
            if stor23[arg1].field_0 == stor23[arg1].field_1 < 32:
                revert with 0, 34
            if stor23[arg1].field_1:
                if 31 < stor23[arg1].field_1:
                    mem[128] = stor23[arg1].field_0
                    idx = 128
                    s = 0
                    while stor23[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor23[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor23[arg1].field_0), data=mem[128 len ceil32(uint255(stor23[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor23[arg1].field_8
        mem[ceil32(uint255(stor23[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor23[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor23[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor23[arg1].field_0) * 0.5) > uint255(stor23[arg1].field_0) * 0.5:
            mem[(uint255(stor23[arg1].field_0) * 0.5) + ceil32(uint255(stor23[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor23[arg1].field_0), data=mem[128 len ceil32(uint255(stor23[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor23[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor23[arg1].field_0) * 0.5)]), 
    if stor23[arg1].field_0 == stor23[arg1].field_1 < 32:
        revert with 0, 34
    if stor23[arg1].field_0:
        if stor23[arg1].field_0 == uint255(stor23[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor23[arg1].field_0):
            if 31 < uint255(stor23[arg1].field_0) * 0.5:
                mem[128] = stor23[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor23[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor23[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23[arg1].field_0, data=mem[128 len ceil32(stor23[arg1].field_1)])
            mem[128] = 256 * stor23[arg1].field_8
    else:
        if stor23[arg1].field_0 == stor23[arg1].field_1 < 32:
            revert with 0, 34
        if stor23[arg1].field_1:
            if 31 < stor23[arg1].field_1:
                mem[128] = stor23[arg1].field_0
                idx = 128
                s = 0
                while stor23[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor23[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor23[arg1].field_0, data=mem[128 len ceil32(stor23[arg1].field_1)])
            mem[128] = 256 * stor23[arg1].field_8
    mem[ceil32(stor23[arg1].field_1) + 192 len ceil32(stor23[arg1].field_1)] = mem[128 len ceil32(stor23[arg1].field_1)]
    if ceil32(stor23[arg1].field_1) > stor23[arg1].field_1:
        mem[stor23[arg1].field_1 + ceil32(stor23[arg1].field_1) + 192] = 0
    return Array(len=stor23[arg1].field_0, data=mem[128 len ceil32(stor23[arg1].field_1)], mem[(2 * ceil32(stor23[arg1].field_1)) + 192 len 2 * ceil32(stor23[arg1].field_1)]), 
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1]:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
        if balanceOf[stor2[arg1]] < 1:
            revert with 0, 17
        if balanceOf[stor2[arg1]] - 1 != stor7[arg1]:
            tokenOfOwnerByIndex[stor2[arg1]][stor7[arg1]] = tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1]
            stor7[stor6[stor2[arg1]][stor3[stor2[arg1]] - 1]] = stor7[arg1]
        stor7[arg1] = 0
        tokenOfOwnerByIndex[stor2[arg1]][stor3[stor2[arg1]] - 1] = 0
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
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_0):
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 0, 34
        if stor10[arg1].field_1:
            if stor10[arg1].field_0:
                if stor10[arg1].field_0 == uint255(stor10[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1:
                    idx = 0
                    while stor10[arg1].field_1 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function _transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2
    require arg3 > 0
    require arg3 < tokenIdCounter
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require ownerOf[arg3] == arg1
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
        require ext_code.size(arg2)
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
    sub_d4b2001d++
    stor17.length++
    stor17[stor17.length].field_0 = arg3
    if category[arg3] == 1:
        stor14++
    else:
        if 2 == category[arg3]:
            stor15++
        else:
            if 3 == category[arg3]:
                stor16++
    return 1
}



}
