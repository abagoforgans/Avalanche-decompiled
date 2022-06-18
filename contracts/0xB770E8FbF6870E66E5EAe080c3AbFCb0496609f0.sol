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
mapping of struct stor10;
address owner;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;

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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_69a57736(?) {
    return Array(len=4, data=stor13, stor14, stor15, stor16)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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
    if bool(stor10[arg1].field_0):
        if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_0):
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor10[arg1].field_1 % 128:
            if bool(stor10[arg1].field_0):
                if bool(stor10[arg1].field_0) == uint255(stor10[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < uint255(stor10[arg1].field_0) * 0.5:
                    idx = 0
                    while (uint255(stor10[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor10[arg1].field_0) == stor10[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                stor10[arg1].field_0 = 0
                if 31 < stor10[arg1].field_1 % 128:
                    idx = 0
                    while stor10[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor10[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function sub_d42dcdac(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 100).length) + 97
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] <= test266151307()
        require cd[100] + cd[s] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _917 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1
        mem[_917] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 68 <= calldata.size
        mem[_917 + 32 len cd[(cd[100] + cd[s] + 36)]] = call.data[cd[100] + cd[s] + 68 len cd[(cd[100] + cd[s] + 36)]]
        mem[_917 + cd[(cd[100] + cd[s] + 36)] + 32] = 0
        mem[t] = _917
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _918 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 132).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 132).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 132).length)) + 1
    mem[_918] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[_918 + 32 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[_918 + ('cd', 132).length + 32] = 0
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    _919 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 164).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 164).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 164).length)) + 1
    mem[_919] = ('cd', 164).length
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    mem[_919 + 32 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    mem[_919 + ('cd', 164).length + 32] = 0
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    _920 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 196).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 196).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 196).length)) + 1
    mem[_920] = ('cd', 196).length
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    mem[_920 + 32 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[_920 + ('cd', 196).length + 32] = 0
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    if ('cd', 228).length > test266151307():
        revert with 0, 65
    _921 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 228).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 228).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 228).length) + 1
    mem[_921] = ('cd', 228).length
    require cd[228] + (32 * ('cd', 228).length) + 36 <= calldata.size
    idx = 0
    s = cd[228] + 36
    t = _921 + 32
    while idx < ('cd', 228).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < cd[36]:
        stor12++
        if stor12 > cd[68]:
            return 0
        if idx >= mem[_921]:
            revert with 0, 50
        if 1 == mem[(32 * idx) + _921 + 32]:
            _2750 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2750] = 0
            if not address(cd[4]):
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor12]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor12] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor12
            if address(cd[4]):
                if not address(cd[4]):
                    if balanceOf[address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[4])]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = address(cd[4])
                    emit Transfer(0, address(cd[4]), stor12);
                    if not ext_code.size(address(cd[4])):
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _2887 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2887:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2887) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2887 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2887 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2887:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2887) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2887 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2887 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _2750 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _3730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3730] == Mask(32, 224, mem[_3730])
                        if Mask(32, 224, mem[_3730]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _4133 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4133:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4133) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4133 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4133 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4133:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4133) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4133 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4133 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])]] = stor12
                    stor7[stor12] = balanceOf[address(cd[4])]
                    if balanceOf[address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[4])]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = address(cd[4])
                    emit Transfer(0, address(cd[4]), stor12);
                    if not ext_code.size(address(cd[4])):
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _2945 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2945:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2945) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2945 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2945 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2945:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2945) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2945 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2945 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _2750 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _3732 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3732] == Mask(32, 224, mem[_3732])
                        if Mask(32, 224, mem[_3732]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _4139 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4139:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4139) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4139 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4139 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4139:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4139) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4139 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4139 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor12] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor12]
                stor9[stor12] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(cd[4])] > -2:
                    revert with 0, 17
                balanceOf[address(cd[4])]++
                mem[0] = stor12
                mem[32] = 2
                ownerOf[stor12] = address(cd[4])
                emit Transfer(0, address(cd[4]), stor12);
                if not ext_code.size(address(cd[4])):
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = stor12
                    mem[32] = 10
                    _2990 = mem[mem[(32 * idx) + 128]]
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _2990:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _2990) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _2990 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2990 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _2990:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _2990) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _2990 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2990 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _2750 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _3734 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3734] == Mask(32, 224, mem[_3734])
                    if Mask(32, 224, mem[_3734]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = stor12
                    mem[32] = 10
                    _4145 = mem[mem[(32 * idx) + 128]]
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _4145:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _4145) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _4145 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4145 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _4145:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _4145) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _4145 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4145 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            stor13++
        else:
            if idx >= mem[_921]:
                revert with 0, 50
            if 2 == mem[(32 * idx) + _921 + 32]:
                _2753 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2753] = 0
                if not address(cd[4]):
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor12] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor12
                if address(cd[4]):
                    if not address(cd[4]):
                        if balanceOf[address(cd[4])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[4])]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = address(cd[4])
                        emit Transfer(0, address(cd[4]), stor12);
                        if not ext_code.size(address(cd[4])):
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _2897 = mem[_918]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2897:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2897) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _2897 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2897 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2897:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2897) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _2897 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2897 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2753 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _3724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3724] == Mask(32, 224, mem[_3724])
                            if Mask(32, 224, mem[_3724]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _4097 = mem[_918]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4097:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4097) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _4097 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4097 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4097:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4097) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _4097 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4097 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not address(cd[4]):
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])]] = stor12
                        stor7[stor12] = balanceOf[address(cd[4])]
                        if balanceOf[address(cd[4])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[4])]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = address(cd[4])
                        emit Transfer(0, address(cd[4]), stor12);
                        if not ext_code.size(address(cd[4])):
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _2963 = mem[_918]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2963:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2963) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _2963 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2963 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2963:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2963) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _2963 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2963 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2753 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _3726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3726] == Mask(32, 224, mem[_3726])
                            if Mask(32, 224, mem[_3726]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _4103 = mem[_918]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4103:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4103) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _4103 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4103 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4103:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4103) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _918 + 32
                                    while _918 + _4103 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4103 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor12] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor12]
                    stor9[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(cd[4])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[4])]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = address(cd[4])
                    emit Transfer(0, address(cd[4]), stor12);
                    if not ext_code.size(address(cd[4])):
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _3016 = mem[_918]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _3016:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _3016) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _918 + 32
                                while _918 + _3016 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3016 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _3016:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _3016) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _918 + 32
                                while _918 + _3016 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3016 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _2753 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _3728 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3728] == Mask(32, 224, mem[_3728])
                        if Mask(32, 224, mem[_3728]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _4109 = mem[_918]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4109:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4109) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _918 + 32
                                while _918 + _4109 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4109 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4109:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4109) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _918 + 32
                                while _918 + _4109 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4109 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                stor14++
            else:
                if idx >= mem[_921]:
                    revert with 0, 50
                if 3 == mem[(32 * idx) + _921 + 32]:
                    _2757 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2757] = 0
                    if not address(cd[4]):
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor12] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12
                    if address(cd[4]):
                        if not address(cd[4]):
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = address(cd[4])
                            emit Transfer(0, address(cd[4]), stor12);
                            if not ext_code.size(address(cd[4])):
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _2915 = mem[_919]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _2915:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _2915) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _2915 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2915 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _2915:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _2915) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _2915 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2915 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2757 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _3718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3718] == Mask(32, 224, mem[_3718])
                                if Mask(32, 224, mem[_3718]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _4079 = mem[_919]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4079:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4079) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _4079 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4079 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4079:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4079) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _4079 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4079 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if not address(cd[4]):
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])]] = stor12
                            stor7[stor12] = balanceOf[address(cd[4])]
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = address(cd[4])
                            emit Transfer(0, address(cd[4]), stor12);
                            if not ext_code.size(address(cd[4])):
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _3003 = mem[_919]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3003:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3003) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _3003 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3003 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3003:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3003) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _3003 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3003 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2757 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _3720 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3720] == Mask(32, 224, mem[_3720])
                                if Mask(32, 224, mem[_3720]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _4085 = mem[_919]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4085:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4085) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _4085 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4085 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4085:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4085) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _919 + 32
                                        while _919 + _4085 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4085 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor12] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12]
                        stor9[stor12] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(cd[4])] > -2:
                            revert with 0, 17
                        balanceOf[address(cd[4])]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = address(cd[4])
                        emit Transfer(0, address(cd[4]), stor12);
                        if not ext_code.size(address(cd[4])):
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _3064 = mem[_919]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _3064:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _3064) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _3064 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3064 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _3064:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _3064) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _3064 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3064 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2757 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _3722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3722] == Mask(32, 224, mem[_3722])
                            if Mask(32, 224, mem[_3722]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _4091 = mem[_919]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4091:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor15++
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                stor10[stor12].field_0 = (2 * _4091) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _919 + 32
                                while _919 + _4091 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4091 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor15++
                                if sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4091:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4091) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _919 + 32
                                while _919 + _4091 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4091 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    stor15++
                else:
                    if idx >= mem[_921]:
                        revert with 0, 50
                    if 4 == mem[(32 * idx) + _921 + 32]:
                        _2761 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2761] = 0
                        if not address(cd[4]):
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor12]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor12] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor12
                        if address(cd[4]):
                            if not address(cd[4]):
                                if balanceOf[address(cd[4])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]++
                                mem[0] = stor12
                                mem[32] = 2
                                ownerOf[stor12] = address(cd[4])
                                emit Transfer(0, address(cd[4]), stor12);
                                if not ext_code.size(address(cd[4])):
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _2935 = mem[_920]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _2935:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _2935) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _920 + 32
                                            while _920 + _2935 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2935 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _2935:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _2935) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _920 + 32
                                            while _920 + _2935 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2935 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = stor12
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _2761 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, stor12, 128, 0
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
                                    _3712 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3712] == Mask(32, 224, mem[_3712])
                                    if Mask(32, 224, mem[_3712]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _4061 = mem[_920]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _4061:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _4061) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _920 + 32
                                            while _920 + _4061 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4061 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _4061:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _4061) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _920 + 32
                                            while _920 + _4061 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4061 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if not address(cd[4]):
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(cd[4])][stor3[address(cd[4])]] = stor12
                                stor7[stor12] = balanceOf[address(cd[4])]
                                if balanceOf[address(cd[4])] > -2:
                                    revert with 0, 17
                                balanceOf[address(cd[4])]++
                                mem[0] = stor12
                                mem[32] = 2
                                ownerOf[stor12] = address(cd[4])
                                emit Transfer(0, address(cd[4]), stor12);
                                if not ext_code.size(address(cd[4])):
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _3051 = mem[_920]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _3051:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _3051) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _920 + 32
                                            while _920 + _3051 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3051 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _3051:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _3051) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _920 + 32
                                            while _920 + _3051 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3051 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = stor12
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _2761 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[4]))
                                    call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, stor12, 128, 0
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
                                    _3714 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3714] == Mask(32, 224, mem[_3714])
                                    if Mask(32, 224, mem[_3714]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _4067 = mem[_920]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _4067:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            stor16++
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        stor10[stor12].field_0 = (2 * _4067) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4067 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4067 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        stor16++
                                        if sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4067:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4067) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4067 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4067 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor9[stor12] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor12]
                            stor9[stor12] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(cd[4])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[4])]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = address(cd[4])
                            emit Transfer(0, address(cd[4]), stor12);
                            if not ext_code.size(address(cd[4])):
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _3122 = mem[_920]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3122:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3122) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _3122 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3122 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3122:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3122) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _3122 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3122 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2761 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _3716 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3716] == Mask(32, 224, mem[_3716])
                                if Mask(32, 224, mem[_3716]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _4073 = mem[_920]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4073:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4073) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4073 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4073 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4073:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4073) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4073 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4073 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        stor16++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}

function sub_c6f00b3e(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 0, 65
        _918 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[s] + 36)])) + 1
        mem[_918] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_918 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[_918 + cd[(cd[68] + cd[s] + 36)] + 32] = 0
        mem[t] = _918
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _919 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 100).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 100).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 100).length)) + 1
    mem[_919] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[_919 + 32 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[_919 + ('cd', 100).length + 32] = 0
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _920 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 132).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 132).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 132).length)) + 1
    mem[_920] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[_920 + 32 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[_920 + ('cd', 132).length + 32] = 0
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    _921 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 164).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 164).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 164).length)) + 1
    mem[_921] = ('cd', 164).length
    require cd[164] + ('cd', 164).length + 36 <= calldata.size
    mem[_921 + 32 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
    mem[_921 + ('cd', 164).length + 32] = 0
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    if ('cd', 196).length > test266151307():
        revert with 0, 65
    _922 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 196).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 196).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 196).length) + 1
    mem[_922] = ('cd', 196).length
    require cd[196] + (32 * ('cd', 196).length) + 36 <= calldata.size
    idx = 0
    s = cd[196] + 36
    t = _922 + 32
    while idx < ('cd', 196).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if cd[36] < cd[4]:
        revert with 0, 17
    require stor12 <= cd[36] - cd[4]
    require msg.value > 0
    call stor17 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < cd[4]:
        stor12++
        if stor12 > cd[36]:
            return 1
        if idx >= mem[_922]:
            revert with 0, 50
        if 1 == mem[(32 * idx) + _922 + 32]:
            _2752 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2752] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[stor12]:
                revert with 0, 'ERC721: token already minted'
            stor9[stor12] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = stor12
            if msg.sender:
                if not msg.sender:
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if not ext_code.size(msg.sender):
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _2890 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2890:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2890) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2890 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2890 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2890:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2890) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2890 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2890 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _2752 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _3733 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3733] == Mask(32, 224, mem[_3733])
                        if Mask(32, 224, mem[_3733]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _4136 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4136:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4136) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4136 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4136 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4136:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4136) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4136 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4136 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if not msg.sender:
                        revert with 0, 'ERC721: balance query for the zero address'
                    tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                    stor7[stor12] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if not ext_code.size(msg.sender):
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _2948 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2948:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2948) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2948 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2948 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _2948:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _2948) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _2948 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2948 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _2752 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _3735 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3735] == Mask(32, 224, mem[_3735])
                        if Mask(32, 224, mem[_3735]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if idx >= mem[96]:
                            revert with 0, 50
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _4142 = mem[mem[(32 * idx) + 128]]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4142:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4142) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4142 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4142 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4142:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4142) + 1
                                s = sha3(sha3(stor12, 10))
                                t = mem[(32 * idx) + 128] + 32
                                while mem[(32 * idx) + 128] + _4142 + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4142 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
            else:
                if tokenByIndex.length < 1:
                    revert with 0, 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 0, 50
                if stor9[stor12] >= tokenByIndex.length:
                    revert with 0, 50
                tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[stor12]
                stor9[stor12] = 0
                if not tokenByIndex.length:
                    revert with 0, 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 0, 17
                balanceOf[address(msg.sender)]++
                mem[0] = stor12
                mem[32] = 2
                ownerOf[stor12] = msg.sender
                emit Transfer(0, msg.sender, stor12);
                if not ext_code.size(msg.sender):
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = stor12
                    mem[32] = 10
                    _2993 = mem[mem[(32 * idx) + 128]]
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _2993:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _2993) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _2993 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2993 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _2993:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _2993) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _2993 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2993 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                else:
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = stor12
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _2752 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(msg.sender)
                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args msg.sender, 0, stor12, 128, 0
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
                    _3737 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3737] == Mask(32, 224, mem[_3737])
                    if Mask(32, 224, mem[_3737]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    if idx >= mem[96]:
                        revert with 0, 50
                    if not ownerOf[stor12]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = stor12
                    mem[32] = 10
                    _4148 = mem[mem[(32 * idx) + 128]]
                    if bool(stor10[stor12].field_0):
                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _4148:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _4148) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _4148 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4148 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(stor12, 10)
                        if not _4148:
                            stor10[stor12].field_0 = 0
                            s = sha3(sha3(stor12, 10))
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor10[stor12].field_0 = (2 * _4148) + 1
                            s = sha3(sha3(stor12, 10))
                            t = mem[(32 * idx) + 128] + 32
                            while mem[(32 * idx) + 128] + _4148 + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4148 + 31) >> 5)
                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
            stor13++
        else:
            if idx >= mem[_922]:
                revert with 0, 50
            if 2 == mem[(32 * idx) + _922 + 32]:
                _2756 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2756] = 0
                if not msg.sender:
                    revert with 0, 'ERC721: mint to the zero address'
                if ownerOf[stor12]:
                    revert with 0, 'ERC721: token already minted'
                stor9[stor12] = tokenByIndex.length
                tokenByIndex.length++
                tokenByIndex[tokenByIndex.length] = stor12
                if msg.sender:
                    if not msg.sender:
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if not ext_code.size(msg.sender):
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _2900 = mem[_919]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2900:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2900) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _2900 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2900 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2900:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2900) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _2900 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2900 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2756 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _3727 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3727] == Mask(32, 224, mem[_3727])
                            if Mask(32, 224, mem[_3727]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _4100 = mem[_919]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4100:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4100) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _4100 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4100 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4100:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4100) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _4100 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4100 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    else:
                        if not msg.sender:
                            revert with 0, 'ERC721: balance query for the zero address'
                        tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                        stor7[stor12] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if not ext_code.size(msg.sender):
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _2966 = mem[_919]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2966:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2966) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _2966 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2966 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _2966:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _2966) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _2966 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2966 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2756 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _3729 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3729] == Mask(32, 224, mem[_3729])
                            if Mask(32, 224, mem[_3729]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _4106 = mem[_919]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4106:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4106) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _4106 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4106 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4106:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _4106) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _919 + 32
                                    while _919 + _4106 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4106 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                else:
                    if tokenByIndex.length < 1:
                        revert with 0, 17
                    if tokenByIndex.length - 1 >= tokenByIndex.length:
                        revert with 0, 50
                    if stor9[stor12] >= tokenByIndex.length:
                        revert with 0, 50
                    tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                    stor9[stor8[stor8.length]] = stor9[stor12]
                    stor9[stor12] = 0
                    if not tokenByIndex.length:
                        revert with 0, 49
                    tokenByIndex[tokenByIndex.length] = 0
                    tokenByIndex.length--
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 0, 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = stor12
                    mem[32] = 2
                    ownerOf[stor12] = msg.sender
                    emit Transfer(0, msg.sender, stor12);
                    if not ext_code.size(msg.sender):
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _3019 = mem[_919]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _3019:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _3019) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _919 + 32
                                while _919 + _3019 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3019 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _3019:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _3019) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _919 + 32
                                while _919 + _3019 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3019 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = stor12
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        s = 0
                        while s < 0:
                            mem[s + mem[64] + 164] = mem[s + _2756 + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(msg.sender)
                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, stor12, 128, 0
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
                        _3731 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3731] == Mask(32, 224, mem[_3731])
                        if Mask(32, 224, mem[_3731]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        if not ownerOf[stor12]:
                            revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                        mem[0] = stor12
                        mem[32] = 10
                        _4112 = mem[_919]
                        if bool(stor10[stor12].field_0):
                            if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4112:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4112) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _919 + 32
                                while _919 + _4112 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4112 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4112:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4112) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _919 + 32
                                while _919 + _4112 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4112 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                stor14++
            else:
                if idx >= mem[_922]:
                    revert with 0, 50
                if 3 == mem[(32 * idx) + _922 + 32]:
                    _2760 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2760] = 0
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    if ownerOf[stor12]:
                        revert with 0, 'ERC721: token already minted'
                    stor9[stor12] = tokenByIndex.length
                    tokenByIndex.length++
                    tokenByIndex[tokenByIndex.length] = stor12
                    if msg.sender:
                        if not msg.sender:
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if not ext_code.size(msg.sender):
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _2918 = mem[_920]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _2918:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _2918) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _2918 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2918 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _2918:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _2918) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _2918 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2918 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2760 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _3721 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3721] == Mask(32, 224, mem[_3721])
                                if Mask(32, 224, mem[_3721]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _4082 = mem[_920]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4082:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4082) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4082 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4082 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4082:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4082) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4082 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4082 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                            stor7[stor12] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if not ext_code.size(msg.sender):
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _3006 = mem[_920]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3006:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3006) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _3006 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3006 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3006:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3006) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _3006 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3006 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2760 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _3723 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3723] == Mask(32, 224, mem[_3723])
                                if Mask(32, 224, mem[_3723]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _4088 = mem[_920]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4088:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4088) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4088 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4088 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4088:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4088) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _920 + 32
                                        while _920 + _4088 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4088 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                    else:
                        if tokenByIndex.length < 1:
                            revert with 0, 17
                        if tokenByIndex.length - 1 >= tokenByIndex.length:
                            revert with 0, 50
                        if stor9[stor12] >= tokenByIndex.length:
                            revert with 0, 50
                        tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                        stor9[stor8[stor8.length]] = stor9[stor12]
                        stor9[stor12] = 0
                        if not tokenByIndex.length:
                            revert with 0, 49
                        tokenByIndex[tokenByIndex.length] = 0
                        tokenByIndex.length--
                        if balanceOf[address(msg.sender)] > -2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)]++
                        mem[0] = stor12
                        mem[32] = 2
                        ownerOf[stor12] = msg.sender
                        emit Transfer(0, msg.sender, stor12);
                        if not ext_code.size(msg.sender):
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _3067 = mem[_920]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _3067:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _3067) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _920 + 32
                                    while _920 + _3067 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3067 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _3067:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor10[stor12].field_0 = (2 * _3067) + 1
                                    t = sha3(sha3(stor12, 10))
                                    s = _920 + 32
                                    while _920 + _3067 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3067 + 31) >> 5)
                                    while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                        else:
                            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = stor12
                            mem[mem[64] + 100] = 128
                            mem[mem[64] + 132] = 0
                            s = 0
                            while s < 0:
                                mem[s + mem[64] + 164] = mem[s + _2760 + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(msg.sender)
                            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args msg.sender, 0, stor12, 128, 0
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
                            _3725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3725] == Mask(32, 224, mem[_3725])
                            if Mask(32, 224, mem[_3725]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            if not ownerOf[stor12]:
                                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                            mem[0] = stor12
                            mem[32] = 10
                            _4094 = mem[_920]
                            if bool(stor10[stor12].field_0):
                                if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(stor12, 10)
                                if not _4094:
                                    stor10[stor12].field_0 = 0
                                    s = sha3(sha3(stor12, 10))
                                    while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor15++
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                stor10[stor12].field_0 = (2 * _4094) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _920 + 32
                                while _920 + _4094 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4094 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor15++
                                if sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(stor12, 10)
                            if not _4094:
                                stor10[stor12].field_0 = 0
                                s = sha3(sha3(stor12, 10))
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor10[stor12].field_0 = (2 * _4094) + 1
                                t = sha3(sha3(stor12, 10))
                                s = _920 + 32
                                while _920 + _4094 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4094 + 31) >> 5)
                                while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    stor15++
                else:
                    if idx >= mem[_922]:
                        revert with 0, 50
                    if 4 == mem[(32 * idx) + _922 + 32]:
                        _2764 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2764] = 0
                        if not msg.sender:
                            revert with 0, 'ERC721: mint to the zero address'
                        if ownerOf[stor12]:
                            revert with 0, 'ERC721: token already minted'
                        stor9[stor12] = tokenByIndex.length
                        tokenByIndex.length++
                        tokenByIndex[tokenByIndex.length] = stor12
                        if msg.sender:
                            if not msg.sender:
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = stor12
                                mem[32] = 2
                                ownerOf[stor12] = msg.sender
                                emit Transfer(0, msg.sender, stor12);
                                if not ext_code.size(msg.sender):
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _2938 = mem[_921]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _2938:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _2938) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _921 + 32
                                            while _921 + _2938 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2938 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _2938:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _2938) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _921 + 32
                                            while _921 + _2938 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _2938 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = stor12
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _2764 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, stor12, 128, 0
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
                                    _3715 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3715] == Mask(32, 224, mem[_3715])
                                    if Mask(32, 224, mem[_3715]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _4064 = mem[_921]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _4064:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _4064) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _921 + 32
                                            while _921 + _4064 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4064 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _4064:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _4064) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _921 + 32
                                            while _921 + _4064 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4064 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                            else:
                                if not msg.sender:
                                    revert with 0, 'ERC721: balance query for the zero address'
                                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = stor12
                                stor7[stor12] = balanceOf[address(msg.sender)]
                                if balanceOf[address(msg.sender)] > -2:
                                    revert with 0, 17
                                balanceOf[address(msg.sender)]++
                                mem[0] = stor12
                                mem[32] = 2
                                ownerOf[stor12] = msg.sender
                                emit Transfer(0, msg.sender, stor12);
                                if not ext_code.size(msg.sender):
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _3054 = mem[_921]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _3054:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _3054) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _921 + 32
                                            while _921 + _3054 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3054 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                    else:
                                        if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _3054:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                        else:
                                            stor10[stor12].field_0 = (2 * _3054) + 1
                                            t = sha3(sha3(stor12, 10))
                                            s = _921 + 32
                                            while _921 + _3054 + 32 > s:
                                                stor[t] = mem[s]
                                                t = t + 1
                                                s = s + 32
                                                continue 
                                            s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3054 + 31) >> 5)
                                            while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                else:
                                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 0
                                    mem[mem[64] + 68] = stor12
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    s = 0
                                    while s < 0:
                                        mem[s + mem[64] + 164] = mem[s + _2764 + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(msg.sender)
                                    call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, stor12, 128, 0
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
                                    _3717 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3717] == Mask(32, 224, mem[_3717])
                                    if Mask(32, 224, mem[_3717]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                    if not ownerOf[stor12]:
                                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                    mem[0] = stor12
                                    mem[32] = 10
                                    _4070 = mem[_921]
                                    if bool(stor10[stor12].field_0):
                                        if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                            revert with 0, 34
                                        mem[0] = sha3(stor12, 10)
                                        if not _4070:
                                            stor10[stor12].field_0 = 0
                                            s = sha3(sha3(stor12, 10))
                                            while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                                stor[s] = 0
                                                s = s + 1
                                                continue 
                                            stor16++
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        stor10[stor12].field_0 = (2 * _4070) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _921 + 32
                                        while _921 + _4070 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4070 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                        stor16++
                                        if sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) == -1:
                                            revert with 0, 17
                                        s = sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) + 1
                                        continue 
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4070:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4070) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _921 + 32
                                        while _921 + _4070 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4070 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        else:
                            if tokenByIndex.length < 1:
                                revert with 0, 17
                            if tokenByIndex.length - 1 >= tokenByIndex.length:
                                revert with 0, 50
                            if stor9[stor12] >= tokenByIndex.length:
                                revert with 0, 50
                            tokenByIndex[stor9[stor12]] = tokenByIndex[tokenByIndex.length]
                            stor9[stor8[stor8.length]] = stor9[stor12]
                            stor9[stor12] = 0
                            if not tokenByIndex.length:
                                revert with 0, 49
                            tokenByIndex[tokenByIndex.length] = 0
                            tokenByIndex.length--
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            mem[0] = stor12
                            mem[32] = 2
                            ownerOf[stor12] = msg.sender
                            emit Transfer(0, msg.sender, stor12);
                            if not ext_code.size(msg.sender):
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _3125 = mem[_921]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3125:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3125) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _921 + 32
                                        while _921 + _3125 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3125 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _3125:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _3125) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _921 + 32
                                        while _921 + _3125 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _3125 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                            else:
                                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = stor12
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                s = 0
                                while s < 0:
                                    mem[s + mem[64] + 164] = mem[s + _2764 + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, stor12, 128, 0
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
                                _3719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3719] == Mask(32, 224, mem[_3719])
                                if Mask(32, 224, mem[_3719]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if not ownerOf[stor12]:
                                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                                mem[0] = stor12
                                mem[32] = 10
                                _4076 = mem[_921]
                                if bool(stor10[stor12].field_0):
                                    if bool(stor10[stor12].field_0) == uint255(stor10[stor12].field_0) * 0.5 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4076:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4076) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _921 + 32
                                        while _921 + _4076 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4076 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + ((uint255(stor10[stor12].field_0) * 0.5) + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(stor10[stor12].field_0) == stor10[stor12].field_1 % 128 < 32:
                                        revert with 0, 34
                                    mem[0] = sha3(stor12, 10)
                                    if not _4076:
                                        stor10[stor12].field_0 = 0
                                        s = sha3(sha3(stor12, 10))
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    else:
                                        stor10[stor12].field_0 = (2 * _4076) + 1
                                        t = sha3(sha3(stor12, 10))
                                        s = _921 + 32
                                        while _921 + _4076 + 32 > s:
                                            stor[t] = mem[s]
                                            t = t + 1
                                            s = s + 32
                                            continue 
                                        s = sha3(sha3(stor12, 10)) + (Mask(251, 0, _4076 + 31) >> 5)
                                        while sha3(sha3(stor12, 10)) + (stor10[stor12].field_1 % 128 + 31 / 32) > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                        stor16++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 1
}



}
