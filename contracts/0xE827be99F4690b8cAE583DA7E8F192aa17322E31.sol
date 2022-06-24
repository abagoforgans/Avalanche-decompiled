contract main {




// =====================  Runtime code  =====================


#
#  - sub_c34d5cc7(?)
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
address stor13;

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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9c172017(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor12 > -2:
        revert with 'NH{q', 17
    if stor12 + 1 > 100:
        revert with 0, 'No more NFTS are available'
    if arg1:
        return 10^18
    return 2 * 10^18
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

function batchMint() {
    if msg.sender != tx.origin:
        revert with 0, 'Invalid sender'
    if stor13 != msg.sender:
        revert with 0, 'Invalid sender'
    if stor12 > -2:
        revert with 'NH{q', 17
    if stor12 > -21:
        revert with 'NH{q', 17
    if var136002 > stor12 + 20:
        if stor12 > -21:
            revert with 'NH{q', 17
        stor12 += 20
    mem[96] = 13
    mem[128] = '/meta/pawnse/'
    if var142001:
        s = 0
        idx = var152002
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[160] = s
        t = s
        idx = var152002
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[160]:
                revert with 'NH{q', 50
            mem[t + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        # nil
    else:
        mem[64] = 224
        mem[160] = 1
        mem[192] = '0'
        _6524 = mem[var157004]
        mem[256 len ceil32(mem[var157004])] = mem[var157004 + 32 len ceil32(mem[var157004])]
        if ceil32(_6524) <= _6524:
            _7567 = mem[var157001]
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[var157006]:
                revert with 0, 'ERC721: token already minted'
            stor9[var157006] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = var157006
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = var157006
                stor7[var157006] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[var157006] = msg.sender
                emit Transfer(0, msg.sender, var157006);
                if not ownerOf[var157006]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[var157006].field_0:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7567 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7567 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
                else:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7567 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7567 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[var157006] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[var157006]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[var157006]
                stor9[var157006] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[var157006] = msg.sender
                emit Transfer(0, msg.sender, var157006);
                if not ownerOf[var157006]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[var157006].field_0:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7567 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7567 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
                else:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7567 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7567 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
        else:
            mem[_6524 + 256] = 0
            _7568 = mem[var157001]
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[var157006]:
                revert with 0, 'ERC721: token already minted'
            stor9[var157006] = tokenByIndex.length
            tokenByIndex.length++
            tokenByIndex[tokenByIndex.length] = var157006
            if msg.sender:
                tokenOfOwnerByIndex[address(msg.sender)][stor3[address(msg.sender)]] = var157006
                stor7[var157006] = balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[var157006] = msg.sender
                emit Transfer(0, msg.sender, var157006);
                if not ownerOf[var157006]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[var157006].field_0:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7568 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7568 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
                else:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7568 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7568 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
            else:
                if tokenByIndex.length < 1:
                    revert with 'NH{q', 17
                if tokenByIndex.length - 1 >= tokenByIndex.length:
                    revert with 'NH{q', 50
                if stor9[var157006] >= tokenByIndex.length:
                    revert with 'NH{q', 50
                tokenByIndex[stor9[var157006]] = tokenByIndex[tokenByIndex.length]
                stor9[stor8[stor8.length]] = stor9[var157006]
                stor9[var157006] = 0
                if not tokenByIndex.length:
                    revert with 'NH{q', 49
                tokenByIndex[tokenByIndex.length] = 0
                tokenByIndex.length--
                if balanceOf[address(msg.sender)] > -2:
                    revert with 'NH{q', 17
                balanceOf[address(msg.sender)]++
                ownerOf[var157006] = msg.sender
                emit Transfer(0, msg.sender, var157006);
                if not ownerOf[var157006]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                if stor10[var157006].field_0:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7568 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7568 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
                else:
                    if stor10[var157006].field_0 == stor10[var157006].field_1 < 32:
                        revert with 'NH{q', 34
                    if _6524 + _7568 + 10:
                        stor10[var157006].field_0 = (2 * _6524 + _7568 + 10) + 1
                    else:
                        stor10[var157006].field_0 = 0
                    # nil
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 >= stor10[arg1].field_1:
                    mem[128] = 256 * stor10[arg1].field_8
                else:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor10[arg1].field_1 > 0:
            mem[ceil32(stor10[arg1].field_1) + 224] = 'https://liberoverse.app'
            mem[ceil32(stor10[arg1].field_1) + 247] = 0
            mem[ceil32(stor10[arg1].field_1) + 247 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 247] = 32
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 279] = mem[ceil32(stor10[arg1].field_1) + 192]
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 311 len ceil32(mem[ceil32(stor10[arg1].field_1) + 192])] = mem[ceil32(stor10[arg1].field_1) + 224 len ceil32(mem[ceil32(stor10[arg1].field_1) + 192])]
            if ceil32(mem[ceil32(stor10[arg1].field_1) + 192]) > mem[ceil32(stor10[arg1].field_1) + 192]:
                mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + mem[ceil32(stor10[arg1].field_1) + 192] + 311] = 0
            return Array(len=mem[ceil32(stor10[arg1].field_1) + 192], data=mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 311 len ceil32(mem[ceil32(stor10[arg1].field_1) + 192])]), 
        if not ownerOf[arg1]:
            revert with 0, 'ERC721Metadata: URI query for nonexistent token'
        if not arg1:
            mem[ceil32(stor10[arg1].field_1) + 352] = 'https://liberoverse.app'
            mem[ceil32(stor10[arg1].field_1) + 375] = '0'
            mem[ceil32(stor10[arg1].field_1) + 376] = 32
            mem[ceil32(stor10[arg1].field_1) + 408] = mem[ceil32(stor10[arg1].field_1) + 320]
            mem[ceil32(stor10[arg1].field_1) + 440 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])] = mem[ceil32(stor10[arg1].field_1) + 352 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])]
            if ceil32(mem[ceil32(stor10[arg1].field_1) + 320]) > mem[ceil32(stor10[arg1].field_1) + 320]:
                mem[ceil32(stor10[arg1].field_1) + mem[ceil32(stor10[arg1].field_1) + 320] + 440] = 0
            return Array(len=mem[ceil32(stor10[arg1].field_1) + 320], data=mem[ceil32(stor10[arg1].field_1) + 440 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])]), 
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
        mem[ceil32(stor10[arg1].field_1) + 256] = s
        if s:
            mem[ceil32(stor10[arg1].field_1) + 288 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor10[arg1].field_1) + 256]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor10[arg1].field_1) + 287 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 320] = 'https://liberoverse.app'
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 343] = 0
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 343 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])] = mem[ceil32(stor10[arg1].field_1) + 288 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])]
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 343] = 32
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 375] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288]
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 407 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288])] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 320 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288]) > mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288]:
            mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288] + 407] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288], data=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 407 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288])]), 
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 >= stor10[arg1].field_1:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 >= stor10[arg1].field_1:
                mem[128] = 256 * stor10[arg1].field_8
            else:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor10[arg1].field_1 > 0:
        mem[ceil32(stor10[arg1].field_1) + 224] = 'https://liberoverse.app'
        mem[ceil32(stor10[arg1].field_1) + 247] = 0
        mem[ceil32(stor10[arg1].field_1) + 247 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 247] = 32
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 279] = mem[ceil32(stor10[arg1].field_1) + 192]
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 311 len ceil32(mem[ceil32(stor10[arg1].field_1) + 192])] = mem[ceil32(stor10[arg1].field_1) + 224 len ceil32(mem[ceil32(stor10[arg1].field_1) + 192])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + 192]) > mem[ceil32(stor10[arg1].field_1) + 192]:
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + mem[ceil32(stor10[arg1].field_1) + 192] + 311] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + 192], data=mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 311 len ceil32(mem[ceil32(stor10[arg1].field_1) + 192])]), 
    if not ownerOf[arg1]:
        revert with 0, 'ERC721Metadata: URI query for nonexistent token'
    if not arg1:
        mem[ceil32(stor10[arg1].field_1) + 352] = 'https://liberoverse.app'
        mem[ceil32(stor10[arg1].field_1) + 375] = '0'
        mem[ceil32(stor10[arg1].field_1) + 376] = 32
        mem[ceil32(stor10[arg1].field_1) + 408] = mem[ceil32(stor10[arg1].field_1) + 320]
        mem[ceil32(stor10[arg1].field_1) + 440 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])] = mem[ceil32(stor10[arg1].field_1) + 352 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])]
        if ceil32(mem[ceil32(stor10[arg1].field_1) + 320]) > mem[ceil32(stor10[arg1].field_1) + 320]:
            mem[ceil32(stor10[arg1].field_1) + mem[ceil32(stor10[arg1].field_1) + 320] + 440] = 0
        return Array(len=mem[ceil32(stor10[arg1].field_1) + 320], data=mem[ceil32(stor10[arg1].field_1) + 440 len ceil32(mem[ceil32(stor10[arg1].field_1) + 320])]), 
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
    mem[ceil32(stor10[arg1].field_1) + 256] = s
    if s:
        mem[ceil32(stor10[arg1].field_1) + 288 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(stor10[arg1].field_1) + 256]:
            revert with 'NH{q', 50
        mem[t + ceil32(stor10[arg1].field_1) + 287 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 320] = 'https://liberoverse.app'
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 343] = 0
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 343 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])] = mem[ceil32(stor10[arg1].field_1) + 288 len ceil32(mem[ceil32(stor10[arg1].field_1) + 256])]
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 343] = 32
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 375] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288]
    mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 407 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288])] = mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 320 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288])]
    if ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288]) > mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288]:
        mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288] + 407] = 0
    return Array(len=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288], data=mem[ceil32(stor10[arg1].field_1) + ceil32(s) + mem[ceil32(stor10[arg1].field_1) + 256] + 407 len ceil32(mem[ceil32(stor10[arg1].field_1) + ceil32(s) + 288])]), 
}



}
