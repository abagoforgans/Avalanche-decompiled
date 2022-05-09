contract main {




// =====================  Runtime code  =====================


#
#  - mint()
#  - traitTypes(uint256 arg1, uint256 arg2)
#  - hashToMetadata(string arg1)
#  - hashToSVG(string arg1)
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
uint256 price;
array of struct stor11;
mapping of struct stor13;
address stor23;

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

function price() {
    return price
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor23 == msg.sender
    stor23 = arg1
}

function withdraw() {
    require stor23 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
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

function _tokenIdToHash(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor13[arg1].field_0):
            if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor13[arg1].field_1):
                if 31 < uint255(stor13[arg1].field_1):
                    mem[128] = stor13[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor13[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor13[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        else:
            if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
        mem[ceil32(uint255(stor13[arg1].field_1)) + 192 len ceil32(uint255(stor13[arg1].field_1))] = mem[128 len ceil32(uint255(stor13[arg1].field_1))]
        if ceil32(uint255(stor13[arg1].field_1)) > uint255(stor13[arg1].field_1):
            mem[ceil32(uint255(stor13[arg1].field_1)) + uint255(stor13[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor13[arg1].field_1)), data=mem[128 len ceil32(uint255(stor13[arg1].field_1))], mem[(2 * ceil32(uint255(stor13[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor13[arg1].field_1))]), 
    if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor13[arg1].field_0):
        if bool(stor13[arg1].field_0) == uint255(stor13[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor13[arg1].field_1):
            if 31 < uint255(stor13[arg1].field_1):
                mem[128] = stor13[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor13[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor13[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor13[arg1].field_8)
    else:
        if bool(stor13[arg1].field_0) == stor13[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor13[arg1].field_1 % 128) + stor13[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor13[arg1].field_0 % 128, data=mem[128 len ceil32(stor13[arg1].field_1 % 128)], mem[(2 * ceil32(stor13[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor13[arg1].field_1 % 128)]), 
}

function addTraitType(uint256 arg1, string arg2, string arg3, string arg4, uint256[] arg5) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = 128
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] <= test266151307()
        require calldata.size + -arg2 + -cd[idx] - 36 >= 128
        _1118 = mem[64]
        if mem[64] + 128 > test266151307() or mem[64] + 128 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 128
        require cd[(arg2 + cd[idx] + 36)] <= test266151307()
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 67 < calldata.size
        if cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1145 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)])) + 1
        mem[_1145] = cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)]
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)] + 68 <= calldata.size
        mem[_1145 + 32 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)]] = call.data[arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 68 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)]]
        mem[_1145 + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 36)] + 36)] + 32] = 0
        mem[_1118] = _1145
        require cd[(arg2 + cd[idx] + 68)] <= test266151307()
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _1516 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1
        mem[_1516] = cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_1516 + 32 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]] = call.data[arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 68 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]]
        mem[_1516 + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_1118 + 32] = _1516
        require cd[(arg2 + cd[idx] + 100)] <= test266151307()
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 67 < calldata.size
        if cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _2233 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)])) + 1
        mem[_2233] = cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)]
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)] + 68 <= calldata.size
        mem[_2233 + 32 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)]] = call.data[arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 68 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)]]
        mem[_2233 + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 100)] + 36)] + 32] = 0
        mem[_1118 + 64] = _2233
        require cd[(arg2 + cd[idx] + 132)] == cd[(arg2 + cd[idx] + 132)]
        mem[_1118 + 96] = cd[(arg2 + cd[idx] + 132)]
        mem[s] = _1118
        idx = idx + 32
        s = s + 32
        continue 
    require stor23 == msg.sender
    _2234 = mem[96]
    idx = 0
    while idx < _2234:
        mem[0] = arg1
        mem[32] = 11
        _2236 = mem[64]
        mem[64] = mem[64] + 128
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_2236] = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_2236 + 32] = mem[mem[(32 * idx) + 128] + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_2236 + 64] = mem[mem[(32 * idx) + 128] + 64]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_2236 + 96] = mem[mem[(32 * idx) + 128] + 96]
        stor11[arg1].field_0++
        mem[0] = sha3(arg1, 11)
        _2250 = mem[_2236]
        _2251 = mem[mem[_2236]]
        if bool(stor11[arg1][stor11[arg1].field_0].field_0):
            if bool(stor11[arg1][stor11[arg1].field_0].field_0) == uint255(stor11[arg1][stor11[arg1].field_0].field_1) < 32:
                revert with 'NH{q', 34
            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))
            if not _2251:
                stor11[arg1][stor11[arg1].field_0].field_0 = 0
                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)))
                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))) + (uint255(stor11[arg1][stor11[arg1].field_0].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    _2234 = mem[96]
                    s = s + 1
                    continue 
                _3352 = mem[_2236 + 32]
                _3353 = mem[mem[_2236 + 32]]
                if bool(stor11[arg1][stor11[arg1].field_0].field_256):
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == uint255(stor11[arg1][stor11[arg1].field_0].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _3353:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _4478 = mem[_2236 + 64]
                        _4479 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _4479:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4479) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _4478 + 32
                                while _4478 + _4479 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4479 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _4479:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4479) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _4478 + 32
                                while _4478 + _4479 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4479 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _3353) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        s = _3352 + 32
                        while _3352 + _3353 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _3353 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _5662 = mem[_2236 + 64]
                        _5663 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5663:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5663) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5662 + 32
                                while _5662 + _5663 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5663 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5663:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5663) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5662 + 32
                                while _5662 + _5663 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5663 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == stor11[arg1][stor11[arg1].field_0].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _3353:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _4484 = mem[_2236 + 64]
                        _4485 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _4485:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4485) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _4484 + 32
                                while _4484 + _4485 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4485 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            idx = idx + 1
                            continue 
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _4485:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            idx = idx + 1
                            continue 
                        stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4485) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                        s = _4484 + 32
                        while _4484 + _4485 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4485 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                        if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        _2234 = mem[96]
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) + 1
                        continue 
                    stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _3353) + 1
                    t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                    s = _3352 + 32
                    while _3352 + _3353 + 32 > s:
                        stor[t] = mem[s]
                        _2234 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _3353 + 31) >> 5)
                    while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                        stor[s] = 0
                        _2234 = mem[96]
                        s = s + 1
                        continue 
                    _5682 = mem[_2236 + 64]
                    _5683 = mem[mem[_2236 + 64]]
                    if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _5683:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5683) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _5682 + 32
                            while _5682 + _5683 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5683 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _5683:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) + 1
                            continue 
                        stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5683) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                        s = _5682 + 32
                        while _5682 + _5683 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5683 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
            else:
                stor11[arg1][stor11[arg1].field_0].field_0 = (2 * _2251) + 1
                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)))
                s = _2250 + 32
                while _2250 + _2251 + 32 > s:
                    stor[t] = mem[s]
                    _2234 = mem[96]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))) + (Mask(251, 0, _2251 + 31) >> 5)
                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))) + (uint255(stor11[arg1][stor11[arg1].field_0].field_1) + 31 / 32) > s:
                    stor[s] = 0
                    _2234 = mem[96]
                    s = s + 1
                    continue 
                _4460 = mem[_2236 + 32]
                _4461 = mem[mem[_2236 + 32]]
                if bool(stor11[arg1][stor11[arg1].field_0].field_256):
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == uint255(stor11[arg1][stor11[arg1].field_0].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _4461:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _5608 = mem[_2236 + 64]
                        _5609 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5609:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5609) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5608 + 32
                                while _5608 + _5609 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5609 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5609:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5609) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5608 + 32
                                while _5608 + _5609 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5609 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _4461) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        s = _4460 + 32
                        while _4460 + _4461 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _4461 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _6378 = mem[_2236 + 64]
                        _6379 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6379:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6379) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6378 + 32
                                while _6378 + _6379 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6379 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6379:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6379) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6378 + 32
                                while _6378 + _6379 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6379 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == stor11[arg1][stor11[arg1].field_0].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _4461:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _5614 = mem[_2236 + 64]
                        _5615 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5615:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5615) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5614 + 32
                                while _5614 + _5615 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5615 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5615:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                                stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                                if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                _2234 = mem[96]
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5615) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _5614 + 32
                            while _5614 + _5615 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5615 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _4461) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        s = _4460 + 32
                        while _4460 + _4461 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _4461 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _6398 = mem[_2236 + 64]
                        _6399 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6399:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6399) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6398 + 32
                                while _6398 + _6399 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6399 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6399:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6399) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6398 + 32
                                while _6398 + _6399 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6399 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
        else:
            if bool(stor11[arg1][stor11[arg1].field_0].field_0) == stor11[arg1][stor11[arg1].field_0].field_1 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))
            if not _2251:
                stor11[arg1][stor11[arg1].field_0].field_0 = 0
                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)))
                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))) + (stor11[arg1][stor11[arg1].field_0].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _2234 = mem[96]
                    s = s + 1
                    continue 
                _3358 = mem[_2236 + 32]
                _3359 = mem[mem[_2236 + 32]]
                if bool(stor11[arg1][stor11[arg1].field_0].field_256):
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == uint255(stor11[arg1][stor11[arg1].field_0].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _3359:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _4516 = mem[_2236 + 64]
                        _4517 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _4517:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4517) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _4516 + 32
                                while _4516 + _4517 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4517 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            idx = idx + 1
                            continue 
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _4517:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            idx = idx + 1
                            continue 
                        stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4517) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                        s = _4516 + 32
                        while _4516 + _4517 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4517 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                        if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) == -1:
                            revert with 'NH{q', 17
                        _2234 = mem[96]
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) + 1
                        continue 
                    stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _3359) + 1
                    t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                    s = _3358 + 32
                    while _3358 + _3359 + 32 > s:
                        stor[t] = mem[s]
                        _2234 = mem[96]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _3359 + 31) >> 5)
                    while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                        stor[s] = 0
                        _2234 = mem[96]
                        s = s + 1
                        continue 
                    _5794 = mem[_2236 + 64]
                    _5795 = mem[mem[_2236 + 64]]
                    if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _5795:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5795) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _5794 + 32
                            while _5794 + _5795 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5795 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _5795:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) + 1
                            continue 
                        stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5795) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                        s = _5794 + 32
                        while _5794 + _5795 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5795 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == stor11[arg1][stor11[arg1].field_0].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _3359:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _4522 = mem[_2236 + 64]
                        _4523 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _4523:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                                stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                _2234 = mem[96]
                                idx = idx + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4523) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _4522 + 32
                            while _4522 + _4523 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4523 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                            if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) == -1:
                                revert with 'NH{q', 17
                            _2234 = mem[96]
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) + 1
                            continue 
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                            revert with 'NH{q', 34
                        mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                        if not _4523:
                            stor11[arg1][stor11[arg1].field_0].field_512 = 0
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _4523) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _4522 + 32
                            while _4522 + _4523 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _4523 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _3359) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        s = _3358 + 32
                        while _3358 + _3359 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _3359 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _5814 = mem[_2236 + 64]
                        _5815 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5815:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                                stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                                if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                _2234 = mem[96]
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5815) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _5814 + 32
                            while _5814 + _5815 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5815 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5815:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5815) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5814 + 32
                                while _5814 + _5815 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5815 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
            else:
                stor11[arg1][stor11[arg1].field_0].field_0 = (2 * _2251) + 1
                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)))
                s = _2250 + 32
                while _2250 + _2251 + 32 > s:
                    stor[t] = mem[s]
                    _2234 = mem[96]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))) + (Mask(251, 0, _2251 + 31) >> 5)
                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11))) + (stor11[arg1][stor11[arg1].field_0].field_1 % 128 + 31 / 32) > s:
                    stor[s] = 0
                    _2234 = mem[96]
                    s = s + 1
                    continue 
                _4498 = mem[_2236 + 32]
                _4499 = mem[mem[_2236 + 32]]
                if bool(stor11[arg1][stor11[arg1].field_0].field_256):
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == uint255(stor11[arg1][stor11[arg1].field_0].field_257) < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _4499:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _5740 = mem[_2236 + 64]
                        _5741 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5741:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5741) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5740 + 32
                                while _5740 + _5741 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5741 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5741:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                                stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                                if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                _2234 = mem[96]
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5741) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _5740 + 32
                            while _5740 + _5741 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5741 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _4499) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        s = _4498 + 32
                        while _4498 + _4499 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _4499 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (uint255(stor11[arg1][stor11[arg1].field_0].field_257) + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _6490 = mem[_2236 + 64]
                        _6491 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6491:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6491) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6490 + 32
                                while _6490 + _6491 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6491 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6491:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6491) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6490 + 32
                                while _6490 + _6491 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6491 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor11[arg1][stor11[arg1].field_0].field_256) == stor11[arg1][stor11[arg1].field_0].field_257 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1
                    if not _4499:
                        stor11[arg1][stor11[arg1].field_0].field_256 = 0
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _5746 = mem[_2236 + 64]
                        _5747 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5747:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                                stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
                                if sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) == -1:
                                    revert with 'NH{q', 17
                                _2234 = mem[96]
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) + 1
                                continue 
                            stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5747) + 1
                            t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                            s = _5746 + 32
                            while _5746 + _5747 + 32 > s:
                                stor[t] = mem[s]
                                _2234 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5747 + 31) >> 5)
                            while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                stor[s] = 0
                                _2234 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _5747:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _5747) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _5746 + 32
                                while _5746 + _5747 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _5747 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                    else:
                        stor11[arg1][stor11[arg1].field_0].field_256 = (2 * _4499) + 1
                        t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1)
                        s = _4498 + 32
                        while _4498 + _4499 + 32 > s:
                            stor[t] = mem[s]
                            _2234 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (Mask(251, 0, _4499 + 31) >> 5)
                        while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 1) + (stor11[arg1][stor11[arg1].field_0].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            _2234 = mem[96]
                            s = s + 1
                            continue 
                        _6510 = mem[_2236 + 64]
                        _6511 = mem[mem[_2236 + 64]]
                        if bool(stor11[arg1][stor11[arg1].field_0].field_512):
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == uint255(stor11[arg1][stor11[arg1].field_0].field_513) < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6511:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6511) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6510 + 32
                                while _6510 + _6511 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6511 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (uint255(stor11[arg1][stor11[arg1].field_0].field_513) + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor11[arg1][stor11[arg1].field_0].field_512) == stor11[arg1][stor11[arg1].field_0].field_513 % 128 < 32:
                                revert with 'NH{q', 34
                            mem[0] = (4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2
                            if not _6511:
                                stor11[arg1][stor11[arg1].field_0].field_512 = 0
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
                            else:
                                stor11[arg1][stor11[arg1].field_0].field_512 = (2 * _6511) + 1
                                t = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2)
                                s = _6510 + 32
                                while _6510 + _6511 + 32 > s:
                                    stor[t] = mem[s]
                                    _2234 = mem[96]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (Mask(251, 0, _6511 + 31) >> 5)
                                while sha3((4 * stor11[arg1].field_0) + sha3(sha3(arg1, 11)) + 2) + (stor11[arg1][stor11[arg1].field_0].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    _2234 = mem[96]
                                    s = s + 1
                                    continue 
        stor11[arg1][stor11[arg1].field_0].field_768 = mem[_2236 + 96]
        if idx == -1:
            revert with 'NH{q', 17
        _2234 = mem[96]
        idx = idx + 1
        continue 
}



}
