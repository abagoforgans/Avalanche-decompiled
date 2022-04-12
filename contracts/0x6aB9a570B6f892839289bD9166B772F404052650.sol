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
uint256 stor12;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= tokenByIndex.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Enumerable: global index out of bounds'
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
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

function approve(address arg1, uint256 arg2) payable {
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

function mintTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor12 > -2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor12 + 1]:
        revert with 0, 'ERC721: token already minted'
    stor9[stor12 + 1] = tokenByIndex.length
    tokenByIndex.length++
    tokenByIndex[tokenByIndex.length] = stor12 + 1
    if arg1:
        tokenOfOwnerByIndex[address(arg1)][stor3[address(arg1)]] = stor12 + 1
        stor7[stor12 + 1] = balanceOf[address(arg1)]
    else:
        if tokenByIndex.length < 1:
            revert with 'NH{q', 17
        if tokenByIndex.length - 1 >= tokenByIndex.length:
            revert with 'NH{q', 50
        if stor9[stor12 + 1] >= tokenByIndex.length:
            revert with 'NH{q', 50
        tokenByIndex[stor9[stor12 + 1]] = tokenByIndex[tokenByIndex.length]
        stor9[stor8[stor8.length]] = stor9[stor12 + 1]
        stor9[stor12 + 1] = 0
        if not tokenByIndex.length:
            revert with 'NH{q', 49
        tokenByIndex[tokenByIndex.length] = 0
        tokenByIndex.length--
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor12 + 1] = arg1
    emit Transfer(0, arg1, stor12 + 1);
    if stor12 == -1:
        revert with 'NH{q', 17
    stor12++
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function name() payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function symbol() payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: URI query for nonexistent token'
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor11.length.field_1
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor11.length.field_1:
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            _3522 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3522)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3522)]
                            if ceil32(_3522) > _3522:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3522 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3522) + 32], 
                        _3554 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3554)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3554)]
                        if ceil32(_3554) > _3554:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3554 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3554) + 32], 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3523 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3523)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3523)]
                        if ceil32(_3523) > _3523:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3523 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3523) + 32], 
                    _3555 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3555)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3555)]
                    if ceil32(_3555) > _3555:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3555 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3555) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3524 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3524)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3524)]
                        if ceil32(_3524) > _3524:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3524 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3524) + 32], 
                    _3556 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3556)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3556)]
                    if ceil32(_3556) > _3556:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3556 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3556) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3525 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3525)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3525)]
                    if ceil32(_3525) > _3525:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3525 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3525) + 32], 
                _3557 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3557)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3557)]
                if ceil32(_3557) > _3557:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3557 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3557) + 32], 
            if 31 >= stor11.length.field_1:
                mem[128] = 256 * stor11.length.field_8
                if not arg1:
                    mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                            _3526 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3526)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3526)]
                            if ceil32(_3526) > _3526:
                                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3526 + 256] = 0
                            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3526) + 32], 
                        _3558 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3558)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3558)]
                        if ceil32(_3558) > _3558:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3558 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3558) + 32], 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3527 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3527)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3527)]
                        if ceil32(_3527) > _3527:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3527 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3527) + 32], 
                    _3559 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3559)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3559)]
                    if ceil32(_3559) > _3559:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3559 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3559) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3528 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3528)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3528)]
                        if ceil32(_3528) > _3528:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3528 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3528) + 32], 
                    _3560 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3560)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3560)]
                    if ceil32(_3560) > _3560:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3560 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3560) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3529 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3529)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3529)]
                    if ceil32(_3529) > _3529:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3529 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3529) + 32], 
                _3561 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3561)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3561)]
                if ceil32(_3561) > _3561:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3561 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3561) + 32], 
            mem[0] = 11
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while stor11.length.field_1 + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                        _4258 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4258)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4258)]
                        if ceil32(_4258) > _4258:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4258 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4258) + 32], 
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    _4274 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4274)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4274)]
                    if ceil32(_4274) > _4274:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4274 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4274) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    _4259 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4259)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4259)]
                    if ceil32(_4259) > _4259:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4259 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4259) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4275 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4275)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4275)]
                if ceil32(_4275) > _4275:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4275 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4275) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    _4260 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4260)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4260)]
                    if ceil32(_4260) > _4260:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4260 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4260) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4276 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4276)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4276)]
                if ceil32(_4276) > _4276:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4276 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4276) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4261 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4261)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4261)]
                if ceil32(_4261) > _4261:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4261 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4261) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4277 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4277)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4277)]
            if ceil32(_4277) > _4277:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4277 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4277) + 32], 
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1:
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3530 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3530)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3530)]
                        if ceil32(_3530) > _3530:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3530 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3530) + 32], 
                    _3562 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3562)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3562)]
                    if ceil32(_3562) > _3562:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3562 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3562) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3531 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3531)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3531)]
                    if ceil32(_3531) > _3531:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3531 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3531) + 32], 
                _3563 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3563)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3563)]
                if ceil32(_3563) > _3563:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3563 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3563) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3532 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3532)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3532)]
                    if ceil32(_3532) > _3532:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3532 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3532) + 32], 
                _3564 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3564)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3564)]
                if ceil32(_3564) > _3564:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3564 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3564) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3533 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3533)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3533)]
                if ceil32(_3533) > _3533:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3533 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3533) + 32], 
            _3565 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3565)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3565)]
            if ceil32(_3565) > _3565:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3565 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3565) + 32], 
        if 31 >= stor11.length.field_1:
            mem[128] = 256 * stor11.length.field_8
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                    return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3534 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3534)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3534)]
                        if ceil32(_3534) > _3534:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3534 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3534) + 32], 
                    _3566 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3566)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3566)]
                    if ceil32(_3566) > _3566:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3566 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3566) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3535 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3535)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3535)]
                    if ceil32(_3535) > _3535:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3535 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3535) + 32], 
                _3567 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3567)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3567)]
                if ceil32(_3567) > _3567:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3567 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3567) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3536 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3536)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3536)]
                    if ceil32(_3536) > _3536:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3536 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3536) + 32], 
                _3568 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3568)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3568)]
                if ceil32(_3568) > _3568:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3568 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3568) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3537 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3537)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3537)]
                if ceil32(_3537) > _3537:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3537 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3537) + 32], 
            _3569 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3569)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3569)]
            if ceil32(_3569) > _3569:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3569 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3569) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while stor11.length.field_1 + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) <= mem[ceil32(stor11.length.field_1) + 192]:
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return 32, mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257 len ceil32(mem[ceil32(stor11.length.field_1) + 192]) + 32], 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    _4262 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4262)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4262)]
                    if ceil32(_4262) > _4262:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4262 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4262) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4278 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4278)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4278)]
                if ceil32(_4278) > _4278:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4278 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4278) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4263 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4263)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4263)]
                if ceil32(_4263) > _4263:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4263 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4263) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4279 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4279)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4279)]
            if ceil32(_4279) > _4279:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4279 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4279) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4264 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4264)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4264)]
                if ceil32(_4264) > _4264:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4264 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4264) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4280 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4280)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4280)]
            if ceil32(_4280) > _4280:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4280 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4280) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4265 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4265)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4265)]
            if ceil32(_4265) > _4265:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4265 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4265) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4281 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4281)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4281)]
        if ceil32(_4281) > _4281:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4281 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4281) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor11.length.field_1
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1:
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3538 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3538)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3538)]
                        if ceil32(_3538) > _3538:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3538 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3538) + 32], 
                    _3570 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3570)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3570)]
                    if ceil32(_3570) > _3570:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3570 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3570) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3539 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3539)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3539)]
                    if ceil32(_3539) > _3539:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3539 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3539) + 32], 
                _3571 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3571)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3571)]
                if ceil32(_3571) > _3571:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3571 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3571) + 32], 
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
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3540 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3540)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3540)]
                    if ceil32(_3540) > _3540:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3540 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3540) + 32], 
                _3572 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3572)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3572)]
                if ceil32(_3572) > _3572:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3572 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3572) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3541 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3541)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3541)]
                if ceil32(_3541) > _3541:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3541 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3541) + 32], 
            _3573 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3573)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3573)]
            if ceil32(_3573) > _3573:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3573 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3573) + 32], 
        if 31 >= stor11.length.field_1:
            mem[128] = 256 * stor11.length.field_8
            if not arg1:
                mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                    mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                        _3542 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3542)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3542)]
                        if ceil32(_3542) > _3542:
                            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3542 + 256] = 0
                        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3542) + 32], 
                    _3574 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3574)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3574)]
                    if ceil32(_3574) > _3574:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3574 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3574) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3543 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3543)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3543)]
                    if ceil32(_3543) > _3543:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3543 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3543) + 32], 
                _3575 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3575)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3575)]
                if ceil32(_3575) > _3575:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3575 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3575) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3544 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3544)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3544)]
                    if ceil32(_3544) > _3544:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3544 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3544) + 32], 
                _3576 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3576)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3576)]
                if ceil32(_3576) > _3576:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3576 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3576) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3545 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3545)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3545)]
                if ceil32(_3545) > _3545:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3545 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3545) + 32], 
            _3577 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3577)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3577)]
            if ceil32(_3577) > _3577:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3577 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3577) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while stor11.length.field_1 + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                    _4266 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4266)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4266)]
                    if ceil32(_4266) > _4266:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4266 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4266) + 32], 
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4282 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4282)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4282)]
                if ceil32(_4282) > _4282:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4282 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4282) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4267 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4267)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4267)]
                if ceil32(_4267) > _4267:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4267 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4267) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4283 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4283)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4283)]
            if ceil32(_4283) > _4283:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4283 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4283) + 32], 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4268 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4268)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4268)]
                if ceil32(_4268) > _4268:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4268 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4268) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4284 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4284)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4284)]
            if ceil32(_4284) > _4284:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4284 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4284) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4269 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4269)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4269)]
            if ceil32(_4269) > _4269:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4269 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4269) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4285 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4285)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4285)]
        if ceil32(_4285) > _4285:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4285 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4285) + 32], 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1:
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3546 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3546)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3546)]
                    if ceil32(_3546) > _3546:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3546 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3546) + 32], 
                _3578 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3578)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3578)]
                if ceil32(_3578) > _3578:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3578 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3578) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3547 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3547)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3547)]
                if ceil32(_3547) > _3547:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3547 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3547) + 32], 
            _3579 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3579)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3579)]
            if ceil32(_3579) > _3579:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3579 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3579) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3548 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3548)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3548)]
                if ceil32(_3548) > _3548:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3548 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3548) + 32], 
            _3580 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3580)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3580)]
            if ceil32(_3580) > _3580:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3580 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3580) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3549 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3549)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3549)]
            if ceil32(_3549) > _3549:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3549 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3549) + 32], 
        _3581 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3581)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3581)]
        if ceil32(_3581) > _3581:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3581 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3581) + 32], 
    if 31 >= stor11.length.field_1:
        mem[128] = 256 * stor11.length.field_8
        if not arg1:
            mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
            if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
                mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                    _3550 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3550)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3550)]
                    if ceil32(_3550) > _3550:
                        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3550 + 256] = 0
                    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3550) + 32], 
                _3582 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3582)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3582)]
                if ceil32(_3582) > _3582:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3582 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3582) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3551 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3551)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3551)]
                if ceil32(_3551) > _3551:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3551 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3551) + 32], 
            _3583 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3583)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3583)]
            if ceil32(_3583) > _3583:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3583 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3583) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
                _3552 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3552)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3552)]
                if ceil32(_3552) > _3552:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3552 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3552) + 32], 
            _3584 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3584)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3584)]
            if ceil32(_3584) > _3584:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3584 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3584) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            _3553 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3553)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3553)]
            if ceil32(_3553) > _3553:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3553 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3553) + 32], 
        _3585 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_3585)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_3585)]
        if ceil32(_3585) > _3585:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _3585 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_3585) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not arg1:
        mem[ceil32(stor11.length.field_1) + 224 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 224] = '0'
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 225] = 32
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 257] = mem[ceil32(stor11.length.field_1) + 192]
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])] = mem[ceil32(stor11.length.field_1) + 224 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 192]) > mem[ceil32(stor11.length.field_1) + 192]:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 192] + 289] = 0
        return Array(len=mem[ceil32(stor11.length.field_1) + 192], data=mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 289 len ceil32(mem[ceil32(stor11.length.field_1) + 192])]), 
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
                mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
                _4270 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4270)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4270)]
                if ceil32(_4270) > _4270:
                    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4270 + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4270) + 32], 
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4286 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4286)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4286)]
            if ceil32(_4286) > _4286:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4286 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4286) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4271 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4271)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4271)]
            if ceil32(_4271) > _4271:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4271 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4271) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4287 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4287)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4287)]
        if ceil32(_4287) > _4287:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4287 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4287) + 32], 
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
            mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
            _4272 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4272)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4272)]
            if ceil32(_4272) > _4272:
                mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4272 + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4272) + 32], 
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4288 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4288)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4288)]
        if ceil32(_4288) > _4288:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4288 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4288) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192] = 0
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + 192 len ceil32(mem[ceil32(stor11.length.field_1) + 128])] = mem[ceil32(stor11.length.field_1) + 160 len ceil32(mem[ceil32(stor11.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor11.length.field_1) + 128]) <= mem[ceil32(stor11.length.field_1) + 128]:
        mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
        _4273 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4273)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4273)]
        if ceil32(_4273) > _4273:
            mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4273 + 256] = 0
        return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4273) + 32], 
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 0
    mem[64] = ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 192] = 32
    _4289 = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 160]
    mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 256 len ceil32(_4289)] = mem[ceil32(stor11.length.field_1) + ceil32(s) + 192 len ceil32(_4289)]
    if ceil32(_4289) > _4289:
        mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + _4289 + 256] = 0
    return 32, mem[ceil32(stor11.length.field_1) + ceil32(s) + stor11.length.field_1 + mem[ceil32(stor11.length.field_1) + 128] + 224 len ceil32(_4289) + 32], 
}



}
